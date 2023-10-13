//
//  HouseholdTest.swift
//  KalturaClient_Tests
//
//  Created by Sergii Chausov on 23.06.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import KalturaOttClient

class HouseholdTest: QuickSpec {
    
    var client: Client?
    var householdId = 0
    
    private var executor: RequestExecutor = USRExecutor.shared
    
    override func spec() {
        
        self.client = TConfig.client
        
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
        
        describe("Check Household actions") {
            
            context("when user is logged in") {
                
                it("A, Add device to Household") {
                    waitUntil(timeout: 500) { done in
                        self.addDeviceToHousehold { (device, error) in
                            expect(error).to(beNil())
                            expect(device).notTo(beNil())
                            expect(device?.householdId).notTo(beNil())
                            
                            done()
                        }
                    }
                }
                
                it("B, Check if device currently in Household") {
                    
                    waitUntil(timeout: 500) { done in
                        
                        self.householdDevicesList { (devices, error) in
                            expect(error).to(beNil())
                            expect(devices?.count).to(beGreaterThan(0))
                            
                            expect(devices).to(containElementSatisfying({ (device) -> Bool in
                                return device.udid == TConfig.udid
                            }, "That is recently added device"))
                            
                            done()
                        }
                    }
                }
                
                it("C, Remove device from Household") {
                    waitUntil(timeout: 500) { done in
                        self.deleteDeviceFromHousehold { (deleted, error) in
                            expect(error).to(beNil())
                            expect(deleted).notTo(beNil())
                            expect(deleted).to(beTrue())
                            
                            done()
                        }
                    }
                }
                
                it("D, Logged out", closure: {
                    waitUntil(timeout: 500) { done in
                        self.logout { (loggedOut, error) in
                            expect(error).to(beNil())
                            expect(loggedOut).notTo(beNil())
                            expect(loggedOut).to(beTrue())
                            
                            done()
                        }
                        
                    }
                })
            }
        }
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
    
    private func addDeviceToHousehold(added: @escaping (_ houceholdDevice: HouseholdDevice?, _ error: ApiException?) -> Void   ) {
        
        let device: HouseholdDevice = HouseholdDevice.init()
        
        device.udid = TConfig.udid
        device.name = "Test Name"
        device.brandId = 1
        device.deviceFamilyId = 1
        
        let requestAddDevice = HouseholdDeviceService.add(device: device)
            .set { (houceholdDevice: HouseholdDevice?, exeption: ApiException?) in
                added(houceholdDevice, exeption)
        }
        
        executor.send(request: requestAddDevice.build(client!))
    }
    
    private func householdDevicesList(completion: @escaping (_ householdDevices: [HouseholdDevice]?, _ error: ApiException?) -> Void) {
        
        let requestGetHouseholdDevicesList = HouseholdDeviceService.list()
            .set {(householdDeviceListResponse: HouseholdDeviceListResponse?, error: ApiException?) in
                completion(householdDeviceListResponse?.objects, error)
        }
        
        executor.send(request: requestGetHouseholdDevicesList.build(client!))
    }
    
    private func deleteDeviceFromHousehold(deleted: @escaping(_ done: Bool?, _ error: ApiException?) -> Void) {
        
        let requestDeleteDevice = HouseholdDeviceService.delete(udid: TConfig.udid)
            .set(completion: { (done: Bool?, error: ApiException?) in
                deleted(done, error)
            })
        
        executor.send(request: requestDeleteDevice.build(client!))
    }
    
}
