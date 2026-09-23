//
//  EmptyResultTest.swift
//  KalturaClient_Tests
//
//  Created by Sergii Chausov on 01.07.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import KalturaOttClient

class EmptyResultTest: QuickSpec {
    var client: Client?
    private var executor: RequestExecutor = USRExecutor.shared
    
    override func spec() {
        
        self.client = TConfig.client
        
        describe("Empty Result API esponses") {
            
            beforeSuite {
                waitUntil(timeout: 500) { done in
                    
                    self.login() { (loginResponse, error) in
                        expect(error).to(beNil())
                        expect(loginResponse).notTo(beNil())
                        expect(loginResponse?.user).notTo(beNil())
                        expect(loginResponse?.user?.id).notTo(beNil())
                        expect(loginResponse?.user?.householdId).notTo(beNil())
                        
                        done()
                    }
                }
            }
            
            afterSuite {
                waitUntil(timeout: 500) { done in
                    self.logout { (loggedOut, error) in
                        expect(error).to(beNil())
                        expect(loggedOut).notTo(beNil())
                        expect(loggedOut).to(beTrue())
                        
                        done()
                    }
                }
            }
            
            context("when user logged in") {
                
                it("Update password with error", closure: {
                    waitUntil(timeout: 500) { done in
                        self.updatePassword(completed: { (error:ApiException?) in
                            expect(error).notTo(beNil())
                            expect(error?.code).to(be("500004"))
                            done()
                        })
                    }
                })
                
                it("Delete Password Policy with error", closure: {
                    waitUntil(timeout: 500) { done in
                        self.deletePasswordPolicy(completed: { (error:ApiException?) in
                            expect(error).notTo(beNil())
                            // PasswordPolicyDoesNotExist - 1038
                            expect(error?.code).to(be("1038"))
                            done()
                        })
                    }
                })
                
                it("Clean Asset history with sucess", closure: {
                    waitUntil(timeout: 500) { done in
                        self.cleanAssetHistory(completed: { (error:ApiException?) in
                            expect(error).to(beNil())
                            done()
                        })
                    }
                })
                
            }
        }
        
    }
    
    private func deletePasswordPolicy(completed: @escaping (_ error: ApiException?) -> Void) {
        
        let request = PasswordPolicyService.delete(id: 111111111111111)
        request.set { (error) in
            completed(error)
        }
        
        self.executor.send(request: request.build(self.client!))
    }
    
    private func updatePassword(completed: @escaping (_ error: ApiException?) -> Void) {
        
        let getUserInfo = OttUserService.get().set { (user, error) in
            
            if let u = user {
                let updatePassword = OttUserService.updatePassword(userId: Int((u.id!))!, password: TConfig.password)
                
                updatePassword.set { (error) in
                    completed(error)
                }
                
                self.executor.send(request: updatePassword.build(self.client!))
            }
        }
        
        executor.send(request: getUserInfo.build(client!))
    }
    
    private func cleanAssetHistory(completed: @escaping (_ error: ApiException?) -> Void) {
        
        let request = AssetHistoryService.clean()
        
        request.set { (error) in
            completed(error)
        }
        
        self.executor.send(request: request.build(self.client!))
    }
    
    private func login(done: @escaping (_ loginResponse: LoginResponse?, _ error: ApiException?) -> Void) {
        
        let requestBuilder = OttUserService.login(partnerId: TConfig.partnerId,
                                                  username: TConfig.username,
                                                  password: TConfig.password)
            .set { (response: LoginResponse?, error: ApiException?) in
                self.client?.ks = response?.loginSession?.ks
                done(response, error)
        }
        
        executor.send(request: requestBuilder.build(client!))
    }
    
    private func logout(done: @escaping (_ loggedOut: Bool?, _ error: ApiException?) -> Void) {
        
        let logoutRequest = OttUserService.logout()
            .set { (response: Bool?, error: ApiException?) in
            done(response, error)
        }
        
        executor.send(request: logoutRequest.build(client!))
    }
    
}
