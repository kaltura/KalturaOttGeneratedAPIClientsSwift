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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
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
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)
			.setBody(key: "activationToken", value: activationToken)

		return request
	}

	public class AddRoleTokenizer: ClientTokenizer  {
		
		public var roleId: BaseTokenizedObject {
			get {
				return self.append("roleId") 
			}
		}
	}

	/**  Edit user details.  */
	public static func addRole(roleId: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, AddRoleTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, AddRoleTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, AddRoleTokenizer>(service: "ottuser", action: "addRole")
			.setBody(key: "roleId", value: roleId)

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
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "udid", value: udid)

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
		
		public var filter: OTTUserFilter.OTTUserFilterTokenizer {
			get {
				return OTTUserFilter.OTTUserFilterTokenizer(self.append("filter")) 
			}
		}
	}

	public static func list() -> RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Retrieve user by external identifier or username or if filter is null all user
	  in the master or the user itself  */
	public static func list(filter: OTTUserFilter?) -> RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer> = RequestBuilder<OTTUserListResponse, OTTUserListResponse.OTTUserListResponseTokenizer, ListTokenizer>(service: "ottuser", action: "list")
			.setBody(key: "filter", value: filter)

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
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)
			.setBody(key: "password", value: password)
			.setBody(key: "extraParams", value: extraParams)
			.setBody(key: "udid", value: udid)

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
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "pin", value: pin)
			.setBody(key: "udid", value: udid)
			.setBody(key: "secret", value: secret)

		return request
	}

	public class LogoutTokenizer: ClientTokenizer  {
	}

	/**  Logout the calling user.  */
	public static func logout() -> RequestBuilder<Bool, BaseTokenizedObject, LogoutTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, LogoutTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, LogoutTokenizer>(service: "ottuser", action: "logout")

		return request
	}

	public class RefreshSessionTokenizer: ClientTokenizer  {
		
		public var refreshToken: BaseTokenizedObject {
			get {
				return self.append("refreshToken") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	public static func refreshSession(refreshToken: String) -> RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, RefreshSessionTokenizer> {
		return refreshSession(refreshToken: refreshToken, udid: nil)
	}

	/**  Returns new Kaltura session (ks) for the user, using the supplied refresh_token
	  (only if it&amp;#39;s valid and not expired)  */
	public static func refreshSession(refreshToken: String, udid: String?) -> RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, RefreshSessionTokenizer> {
		let request: RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, RefreshSessionTokenizer> = RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, RefreshSessionTokenizer>(service: "ottuser", action: "refreshSession")
			.setBody(key: "refreshToken", value: refreshToken)
			.setBody(key: "udid", value: udid)

		return request
	}

	public class RegisterTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var user: OTTUser.OTTUserTokenizer {
			get {
				return OTTUser.OTTUserTokenizer(self.append("user")) 
			}
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
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "user", value: user)
			.setBody(key: "password", value: password)

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
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)

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
	}

	/**  Send an e-mail with URL to enable the user to set new password.  */
	public static func resetPassword(partnerId: Int, username: String) -> RequestBuilder<Bool, BaseTokenizedObject, ResetPasswordTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ResetPasswordTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ResetPasswordTokenizer>(service: "ottuser", action: "resetPassword")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)

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
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "token", value: token)
			.setBody(key: "password", value: password)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var user: OTTUser.OTTUserTokenizer {
			get {
				return OTTUser.OTTUserTokenizer(self.append("user")) 
			}
		}
	}

	/**  Update user information  */
	public static func update(user: OTTUser) -> RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, UpdateTokenizer> = RequestBuilder<OTTUser, OTTUser.OTTUserTokenizer, UpdateTokenizer>(service: "ottuser", action: "update")
			.setBody(key: "user", value: user)

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
			.setBody(key: "username", value: username)
			.setBody(key: "oldPassword", value: oldPassword)
			.setBody(key: "newPassword", value: newPassword)

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
	public static func updatePassword(userId: Int, password: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "ottuser", action: "updatePassword")
			.setBody(key: "userId", value: userId)
			.setBody(key: "password", value: password)

		return request
	}
}
