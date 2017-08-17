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

public final class SocialService{

	/**  List social accounts  */
	public static func get(type: SocialNetwork) -> RequestBuilder<Social> {
		let request: RequestBuilder<Social> = RequestBuilder<Social>(service: "social", action: "get")
			.setBody(key: "type", value: type.rawValue)

		return request
	}

	/**  Return the user object with social information according to a provided external
	  social token  */
	public static func getByToken(partnerId: Int, token: String, type: SocialNetwork) -> RequestBuilder<Social> {
		let request: RequestBuilder<Social> = RequestBuilder<Social>(service: "social", action: "getByToken")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "token", value: token)
			.setBody(key: "type", value: type.rawValue)

		return request
	}

	public static func getConfiguration(type: SocialNetwork) -> RequestBuilder<SocialConfig> {
		return getConfiguration(type: type, partnerId: nil)
	}

	/**  Retrieve the social network’s configuration information  */
	public static func getConfiguration(type: SocialNetwork, partnerId: Int?) -> RequestBuilder<SocialConfig> {
		let request: RequestBuilder<SocialConfig> = RequestBuilder<SocialConfig>(service: "social", action: "getConfiguration")
			.setBody(key: "type", value: type.rawValue)
			.setBody(key: "partnerId", value: partnerId)

		return request
	}

	public static func login(partnerId: Int, token: String, type: SocialNetwork) -> RequestBuilder<LoginResponse> {
		return login(partnerId: partnerId, token: token, type: type, udid: nil)
	}

	/**  Login using social token  */
	public static func login(partnerId: Int, token: String, type: SocialNetwork, udid: String?) -> RequestBuilder<LoginResponse> {
		let request: RequestBuilder<LoginResponse> = RequestBuilder<LoginResponse>(service: "social", action: "login")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "token", value: token)
			.setBody(key: "type", value: type.rawValue)
			.setBody(key: "udid", value: udid)

		return request
	}

	/**  Connect an existing user in the system to an external social network user  */
	public static func merge(token: String, type: SocialNetwork) -> RequestBuilder<Social> {
		let request: RequestBuilder<Social> = RequestBuilder<Social>(service: "social", action: "merge")
			.setBody(key: "token", value: token)
			.setBody(key: "type", value: type.rawValue)

		return request
	}

	public static func register(partnerId: Int, token: String, type: SocialNetwork) -> RequestBuilder<Social> {
		return register(partnerId: partnerId, token: token, type: type, email: nil)
	}

	/**  Create a new user in the system using a provided external social token  */
	public static func register(partnerId: Int, token: String, type: SocialNetwork, email: String?) -> RequestBuilder<Social> {
		let request: RequestBuilder<Social> = RequestBuilder<Social>(service: "social", action: "register")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "token", value: token)
			.setBody(key: "type", value: type.rawValue)
			.setBody(key: "email", value: email)

		return request
	}

	/**  Disconnect an existing user in the system from its external social network user  */
	public static func unmerge(type: SocialNetwork) -> RequestBuilder<Social> {
		let request: RequestBuilder<Social> = RequestBuilder<Social>(service: "social", action: "unmerge")
			.setBody(key: "type", value: type.rawValue)

		return request
	}

	/**  Set the user social network’s configuration information  */
	public static func UpdateConfiguration(configuration: SocialConfig) -> RequestBuilder<SocialConfig> {
		let request: RequestBuilder<SocialConfig> = RequestBuilder<SocialConfig>(service: "social", action: "UpdateConfiguration")
			.setBody(key: "configuration", value: configuration)

		return request
	}
}
