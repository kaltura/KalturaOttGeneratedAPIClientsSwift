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

	/**  Activate the account by activation token  */
	public static func activate(partnerId: Int, username: String, activationToken: String) -> RequestBuilder<OTTUser> {
		let request: RequestBuilder<OTTUser> = RequestBuilder<OTTUser>(service: "ottuser", action: "activate")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)
			.setBody(key: "activationToken", value: activationToken)

		return request
	}

	/**  Edit user details.  */
	public static func addRole(roleId: Int64) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "ottuser", action: "addRole")
			.setBody(key: "roleId", value: roleId)

		return request
	}

	public static func anonymousLogin(partnerId: Int) -> RequestBuilder<LoginSession> {
		return anonymousLogin(partnerId: partnerId, udid: nil)
	}

	/**  Returns tokens (KS and refresh token) for anonymous access  */
	public static func anonymousLogin(partnerId: Int, udid: String?) -> RequestBuilder<LoginSession> {
		let request: RequestBuilder<LoginSession> = RequestBuilder<LoginSession>(service: "ottuser", action: "anonymousLogin")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "udid", value: udid)

		return request
	}

	/**  Permanently delete a user. User to delete cannot be an exclusive household
	  master, and cannot be default user.  */
	public static func delete() -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "ottuser", action: "delete")

		return request
	}

	/**  Retrieving users&amp;#39; data  */
	public static func get() -> RequestBuilder<OTTUser> {
		let request: RequestBuilder<OTTUser> = RequestBuilder<OTTUser>(service: "ottuser", action: "get")

		return request
	}

	/**  Returns the identifier of the user encrypted with SHA1 using configured key  */
	public static func getEncryptedUserId() -> RequestBuilder<StringValue> {
		let request: RequestBuilder<StringValue> = RequestBuilder<StringValue>(service: "ottuser", action: "getEncryptedUserId")

		return request
	}

	public static func list() -> RequestBuilder<OTTUserListResponse> {
		return list(filter: nil)
	}

	/**  Retrieve user by external identifier or username or if filter is null all user
	  in the master or the user itself  */
	public static func list(filter: OTTUserFilter?) -> RequestBuilder<OTTUserListResponse> {
		let request: RequestBuilder<OTTUserListResponse> = RequestBuilder<OTTUserListResponse>(service: "ottuser", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}

	public static func login(partnerId: Int) -> RequestBuilder<LoginResponse> {
		return login(partnerId: partnerId, username: nil)
	}

	public static func login(partnerId: Int, username: String?) -> RequestBuilder<LoginResponse> {
		return login(partnerId: partnerId, username: username, password: nil)
	}

	public static func login(partnerId: Int, username: String?, password: String?) -> RequestBuilder<LoginResponse> {
		return login(partnerId: partnerId, username: username, password: password, extraParams: nil)
	}

	public static func login(partnerId: Int, username: String?, password: String?, extraParams: Dictionary<String, StringValue>?) -> RequestBuilder<LoginResponse> {
		return login(partnerId: partnerId, username: username, password: password, extraParams: extraParams, udid: nil)
	}

	/**  login with user name and password.  */
	public static func login(partnerId: Int, username: String?, password: String?, extraParams: Dictionary<String, StringValue>?, udid: String?) -> RequestBuilder<LoginResponse> {
		let request: RequestBuilder<LoginResponse> = RequestBuilder<LoginResponse>(service: "ottuser", action: "login")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)
			.setBody(key: "password", value: password)
			.setBody(key: "extraParams", value: extraParams)
			.setBody(key: "udid", value: udid)

		return request
	}

	public static func loginWithPin(partnerId: Int, pin: String) -> RequestBuilder<LoginResponse> {
		return loginWithPin(partnerId: partnerId, pin: pin, udid: nil)
	}

	public static func loginWithPin(partnerId: Int, pin: String, udid: String?) -> RequestBuilder<LoginResponse> {
		return loginWithPin(partnerId: partnerId, pin: pin, udid: udid, secret: nil)
	}

	/**  User sign-in via a time-expired sign-in PIN.  */
	public static func loginWithPin(partnerId: Int, pin: String, udid: String?, secret: String?) -> RequestBuilder<LoginResponse> {
		let request: RequestBuilder<LoginResponse> = RequestBuilder<LoginResponse>(service: "ottuser", action: "loginWithPin")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "pin", value: pin)
			.setBody(key: "udid", value: udid)
			.setBody(key: "secret", value: secret)

		return request
	}

	/**  Logout the calling user.  */
	public static func logout() -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "ottuser", action: "logout")

		return request
	}

	public static func refreshSession(refreshToken: String) -> RequestBuilder<LoginSession> {
		return refreshSession(refreshToken: refreshToken, udid: nil)
	}

	/**  Returns new Kaltura session (ks) for the user, using the supplied refresh_token
	  (only if it&amp;#39;s valid and not expired)  */
	public static func refreshSession(refreshToken: String, udid: String?) -> RequestBuilder<LoginSession> {
		let request: RequestBuilder<LoginSession> = RequestBuilder<LoginSession>(service: "ottuser", action: "refreshSession")
			.setBody(key: "refreshToken", value: refreshToken)
			.setBody(key: "udid", value: udid)

		return request
	}

	/**  Sign up a new user.  */
	public static func register(partnerId: Int, user: OTTUser, password: String) -> RequestBuilder<OTTUser> {
		let request: RequestBuilder<OTTUser> = RequestBuilder<OTTUser>(service: "ottuser", action: "register")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "user", value: user)
			.setBody(key: "password", value: password)

		return request
	}

	/**  Resend the activation token to a user  */
	public static func resendActivationToken(partnerId: Int, username: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "ottuser", action: "resendActivationToken")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)

		return request
	}

	/**  Send an e-mail with URL to enable the user to set new password.  */
	public static func resetPassword(partnerId: Int, username: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "ottuser", action: "resetPassword")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "username", value: username)

		return request
	}

	/**  Renew the user&amp;#39;s password after validating the token that sent as part
	  of URL in e-mail.  */
	public static func setInitialPassword(partnerId: Int, token: String, password: String) -> RequestBuilder<OTTUser> {
		let request: RequestBuilder<OTTUser> = RequestBuilder<OTTUser>(service: "ottuser", action: "setInitialPassword")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "token", value: token)
			.setBody(key: "password", value: password)

		return request
	}

	public static func update(user: OTTUser) -> RequestBuilder<OTTUser> {
		return update(user: user, id: nil)
	}

	/**  Update user information  */
	public static func update(user: OTTUser, id: String?) -> RequestBuilder<OTTUser> {
		let request: RequestBuilder<OTTUser> = RequestBuilder<OTTUser>(service: "ottuser", action: "update")
			.setBody(key: "user", value: user)
			.setBody(key: "id", value: id)

		return request
	}

	/**  Given a user name and existing password, change to a new password.  */
	public static func updateLoginData(username: String, oldPassword: String, newPassword: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "ottuser", action: "updateLoginData")
			.setBody(key: "username", value: username)
			.setBody(key: "oldPassword", value: oldPassword)
			.setBody(key: "newPassword", value: newPassword)

		return request
	}

	/**  Update the user&amp;#39;s existing password.  */
	public static func updatePassword(userId: Int, password: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "ottuser", action: "updatePassword")
			.setBody(key: "userId", value: userId)
			.setBody(key: "password", value: password)

		return request
	}
}
