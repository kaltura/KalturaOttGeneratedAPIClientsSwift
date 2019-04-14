// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2019  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================

/**
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class OttUserService{

	public class ActivateTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var activationToken: BaseTokenizedObject {
			get {
				return self.append("activationToken") 
			}
		}
	}

	/**  Activate the account by activation token  */
	public static func activate(partnerId: Int, username: String, activationToken: String) -> RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, ActivateTokenizer> {
		let request: RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, ActivateTokenizer> = RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, ActivateTokenizer>(service: "ottuser", action: "activate")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "username", value: username)
			.setParam(key: "activationToken", value: activationToken)

		return request
	}

	public class AddRoleTokenizer: ClientTokenizer  {
		
		public var roleId: BaseTokenizedObject {
			get {
				return self.append("roleId") 
			}
		}
	}

	/**  Deprecate - use Register or Update actions instead by setting user.roleIds
	  parameter  */
	public static func addRole(roleId: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, AddRoleTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, AddRoleTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, AddRoleTokenizer>(service: "ottuser", action: "addRole")
			.setParam(key: "roleId", value: roleId)

		return request
	}

	public class AnonymousLoginTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	public static func anonymousLogin(partnerId: Int) -> RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, AnonymousLoginTokenizer> {
		return anonymousLogin(partnerId: partnerId, udid: nil)
	}

	/**  Returns tokens (KS and refresh token) for anonymous access  */
	public static func anonymousLogin(partnerId: Int, udid: String?) -> RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, AnonymousLoginTokenizer> {
		let request: RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, AnonymousLoginTokenizer> = RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, AnonymousLoginTokenizer>(service: "ottuser", action: "anonymousLogin")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "udid", value: udid)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
	}

	/**  Permanently delete a user. User to delete cannot be an exclusive household
	  master, and cannot be default user.  */
	public static func delete() -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "ottuser", action: "delete")

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Retrieving users&amp;#39; data  */
	public static func get() -> RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, GetTokenizer> {
		let request: RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, GetTokenizer> = RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, GetTokenizer>(service: "ottuser", action: "get")

		return request
	}

	public class GetEncryptedUserIdTokenizer: ClientTokenizer  {
	}

	/**  Returns the identifier of the user encrypted with SHA1 using configured key  */
	public static func getEncryptedUserId() -> RequestBuilder<StringValue, StringValue.StringValueTokenizer, GetEncryptedUserIdTokenizer> {
		let request: RequestBuilder<StringValue, StringValue.StringValueTokenizer, GetEncryptedUserIdTokenizer> = RequestBuilder<StringValue, StringValue.StringValueTokenizer, GetEncryptedUserIdTokenizer>(service: "ottuser", action: "getEncryptedUserId")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: OTTUserFilter.OTTUserFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Retrieve user by external identifier or username or if filter is null all user
	  in the master or the user itself  */
	public static func list(filter: OTTUserFilter?) -> RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer> = RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer>(service: "ottuser", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class LoginTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var extraParams: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("extraParams"))
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	public static func login(partnerId: Int) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		return login(partnerId: partnerId, username: nil)
	}

	public static func login(partnerId: Int, username: String?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		return login(partnerId: partnerId, username: username, password: nil)
	}

	public static func login(partnerId: Int, username: String?, password: String?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		return login(partnerId: partnerId, username: username, password: password, extraParams: nil)
	}

	public static func login(partnerId: Int, username: String?, password: String?, extraParams: Dictionary<String, StringValue>?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		return login(partnerId: partnerId, username: username, password: password, extraParams: extraParams, udid: nil)
	}

	/**  login with user name and password.  */
	public static func login(partnerId: Int, username: String?, password: String?, extraParams: Dictionary<String, StringValue>?, udid: String?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		let request: RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> = RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer>(service: "ottuser", action: "login")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "username", value: username)
			.setParam(key: "password", value: password)
			.setParam(key: "extraParams", value: extraParams)
			.setParam(key: "udid", value: udid)

		return request
	}

	public class LoginWithPinTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var pin: BaseTokenizedObject {
			get {
				return self.append("pin") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var secret: BaseTokenizedObject {
			get {
				return self.append("secret") 
			}
		}
	}

	public static func loginWithPin(partnerId: Int, pin: String) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginWithPinTokenizer> {
		return loginWithPin(partnerId: partnerId, pin: pin, udid: nil)
	}

	public static func loginWithPin(partnerId: Int, pin: String, udid: String?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginWithPinTokenizer> {
		return loginWithPin(partnerId: partnerId, pin: pin, udid: udid, secret: nil)
	}

	/**  User sign-in via a time-expired sign-in PIN.  */
	public static func loginWithPin(partnerId: Int, pin: String, udid: String?, secret: String?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginWithPinTokenizer> {
		let request: RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginWithPinTokenizer> = RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginWithPinTokenizer>(service: "ottuser", action: "loginWithPin")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "pin", value: pin)
			.setParam(key: "udid", value: udid)
			.setParam(key: "secret", value: secret)

		return request
	}

	public class LogoutTokenizer: ClientTokenizer  {
	}

	/**  Logout the calling user.  */
	public static func logout() -> RequestBuilder<Bool, BaseTokenizedObject, LogoutTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, LogoutTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, LogoutTokenizer>(service: "ottuser", action: "logout")

		return request
	}

	public class RegisterTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public func user<T: OTTUser.OTTUserTokenizer>() -> T {
			return T(self.append("user"))
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
	}

	/**  Sign up a new user.  */
	public static func register(partnerId: Int, user: OTTUser, password: String) -> RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, RegisterTokenizer> {
		let request: RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, RegisterTokenizer> = RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, RegisterTokenizer>(service: "ottuser", action: "register")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "user", value: user)
			.setParam(key: "password", value: password)

		return request
	}

	public class ResendActivationTokenTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
	}

	/**  Resend the activation token to a user  */
	public static func resendActivationToken(partnerId: Int, username: String) -> RequestBuilder<Bool, BaseTokenizedObject, ResendActivationTokenTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ResendActivationTokenTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ResendActivationTokenTokenizer>(service: "ottuser", action: "resendActivationToken")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "username", value: username)

		return request
	}

	public class ResetPasswordTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var templateName: BaseTokenizedObject {
			get {
				return self.append("templateName") 
			}
		}
	}

	public static func resetPassword(partnerId: Int, username: String) -> RequestBuilder<Bool, BaseTokenizedObject, ResetPasswordTokenizer> {
		return resetPassword(partnerId: partnerId, username: username, templateName: nil)
	}

	/**  Send an e-mail with URL to enable the user to set new password.  */
	public static func resetPassword(partnerId: Int, username: String, templateName: String?) -> RequestBuilder<Bool, BaseTokenizedObject, ResetPasswordTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ResetPasswordTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ResetPasswordTokenizer>(service: "ottuser", action: "resetPassword")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "username", value: username)
			.setParam(key: "templateName", value: templateName)

		return request
	}

	public class SetInitialPasswordTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
	}

	/**  Renew the user&amp;#39;s password after validating the token that sent as part
	  of URL in e-mail.  */
	public static func setInitialPassword(partnerId: Int, token: String, password: String) -> RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, SetInitialPasswordTokenizer> {
		let request: RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, SetInitialPasswordTokenizer> = RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, SetInitialPasswordTokenizer>(service: "ottuser", action: "setInitialPassword")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "token", value: token)
			.setParam(key: "password", value: password)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func user<T: OTTUser.OTTUserTokenizer>() -> T {
			return T(self.append("user"))
		}
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func update(user: OTTUser) -> RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, UpdateTokenizer> {
		return update(user: user, id: nil)
	}

	/**  Update user information  */
	public static func update(user: OTTUser, id: String?) -> RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, UpdateTokenizer> = RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, UpdateTokenizer>(service: "ottuser", action: "update")
			.setParam(key: "user", value: user)
			.setParam(key: "id", value: id)

		return request
	}

	public class UpdateDynamicDataTokenizer: ClientTokenizer  {
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
		
		public func value<T: StringValue.StringValueTokenizer>() -> T {
			return T(self.append("value"))
		}
	}

	/**  Update user dynamic data  */
	public static func updateDynamicData(key: String, value: StringValue) -> RequestBuilder<OTTUserDynamicData, OTTUserDynamicData.OTTUserDynamicDataTokenizer, UpdateDynamicDataTokenizer> {
		let request: RequestBuilder<OTTUserDynamicData, OTTUserDynamicData.OTTUserDynamicDataTokenizer, UpdateDynamicDataTokenizer> = RequestBuilder<OTTUserDynamicData, OTTUserDynamicData.OTTUserDynamicDataTokenizer, UpdateDynamicDataTokenizer>(service: "ottuser", action: "updateDynamicData")
			.setParam(key: "key", value: key)
			.setParam(key: "value", value: value)

		return request
	}

	public class UpdateLoginDataTokenizer: ClientTokenizer  {
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var oldPassword: BaseTokenizedObject {
			get {
				return self.append("oldPassword") 
			}
		}
		
		public var newPassword: BaseTokenizedObject {
			get {
				return self.append("newPassword") 
			}
		}
	}

	/**  Given a user name and existing password, change to a new password.  */
	public static func updateLoginData(username: String, oldPassword: String, newPassword: String) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateLoginDataTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateLoginDataTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateLoginDataTokenizer>(service: "ottuser", action: "updateLoginData")
			.setParam(key: "username", value: username)
			.setParam(key: "oldPassword", value: oldPassword)
			.setParam(key: "newPassword", value: newPassword)

		return request
	}

	public class UpdatePasswordTokenizer: ClientTokenizer  {
		
		public override var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
	}

	/**  Update the user&amp;#39;s existing password.  */
	public static func updatePassword(userId: Int, password: String) -> NullRequestBuilder<UpdatePasswordTokenizer> {
		let request: NullRequestBuilder<UpdatePasswordTokenizer> = NullRequestBuilder<UpdatePasswordTokenizer>(service: "ottuser", action: "updatePassword")
			.setParam(key: "userId", value: userId)
			.setParam(key: "password", value: password)

		return request
	}
}
