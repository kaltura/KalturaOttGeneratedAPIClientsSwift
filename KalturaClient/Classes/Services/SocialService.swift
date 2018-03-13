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
// Copyright (C) 2006-2018  Kaltura Inc.
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

	public class GetTokenizer: ClientTokenizer  {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  List social accounts  */
	public static func get(type: SocialNetwork) -> RequestBuilder<Social, Social.SocialTokenizer, GetTokenizer> {
		let request: RequestBuilder<Social, Social.SocialTokenizer, GetTokenizer> = RequestBuilder<Social, Social.SocialTokenizer, GetTokenizer>(service: "social", action: "get")
			.setParam(key: "type", value: type.rawValue)

		return request
	}

	public class GetByTokenTokenizer: ClientTokenizer  {
		
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
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  Return the user object with social information according to a provided external
	  social token  */
	public static func getByToken(partnerId: Int, token: String, type: SocialNetwork) -> RequestBuilder<Social, Social.SocialTokenizer, GetByTokenTokenizer> {
		let request: RequestBuilder<Social, Social.SocialTokenizer, GetByTokenTokenizer> = RequestBuilder<Social, Social.SocialTokenizer, GetByTokenTokenizer>(service: "social", action: "getByToken")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "token", value: token)
			.setParam(key: "type", value: type.rawValue)

		return request
	}

	public class GetConfigurationTokenizer: ClientTokenizer  {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
	}

	public static func getConfiguration(type: SocialNetwork) -> RequestBuilder<SocialConfig, SocialConfig.SocialConfigTokenizer, GetConfigurationTokenizer> {
		return getConfiguration(type: type, partnerId: nil)
	}

	/**  Retrieve the social network’s configuration information  */
	public static func getConfiguration(type: SocialNetwork, partnerId: Int?) -> RequestBuilder<SocialConfig, SocialConfig.SocialConfigTokenizer, GetConfigurationTokenizer> {
		let request: RequestBuilder<SocialConfig, SocialConfig.SocialConfigTokenizer, GetConfigurationTokenizer> = RequestBuilder<SocialConfig, SocialConfig.SocialConfigTokenizer, GetConfigurationTokenizer>(service: "social", action: "getConfiguration")
			.setParam(key: "type", value: type.rawValue)
			.setParam(key: "partnerId", value: partnerId)

		return request
	}

	public class LoginTokenizer: ClientTokenizer  {
		
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
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	public static func login(partnerId: Int, token: String, type: SocialNetwork) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		return login(partnerId: partnerId, token: token, type: type, udid: nil)
	}

	/**  Login using social token  */
	public static func login(partnerId: Int, token: String, type: SocialNetwork, udid: String?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		let request: RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> = RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer>(service: "social", action: "login")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "token", value: token)
			.setParam(key: "type", value: type.rawValue)
			.setParam(key: "udid", value: udid)

		return request
	}

	public class MergeTokenizer: ClientTokenizer  {
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  Connect an existing user in the system to an external social network user  */
	public static func merge(token: String, type: SocialNetwork) -> RequestBuilder<Social, Social.SocialTokenizer, MergeTokenizer> {
		let request: RequestBuilder<Social, Social.SocialTokenizer, MergeTokenizer> = RequestBuilder<Social, Social.SocialTokenizer, MergeTokenizer>(service: "social", action: "merge")
			.setParam(key: "token", value: token)
			.setParam(key: "type", value: type.rawValue)

		return request
	}

	public class RegisterTokenizer: ClientTokenizer  {
		
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
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
			}
		}
	}

	public static func register(partnerId: Int, token: String, type: SocialNetwork) -> RequestBuilder<Social, Social.SocialTokenizer, RegisterTokenizer> {
		return register(partnerId: partnerId, token: token, type: type, email: nil)
	}

	/**  Create a new user in the system using a provided external social token  */
	public static func register(partnerId: Int, token: String, type: SocialNetwork, email: String?) -> RequestBuilder<Social, Social.SocialTokenizer, RegisterTokenizer> {
		let request: RequestBuilder<Social, Social.SocialTokenizer, RegisterTokenizer> = RequestBuilder<Social, Social.SocialTokenizer, RegisterTokenizer>(service: "social", action: "register")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "token", value: token)
			.setParam(key: "type", value: type.rawValue)
			.setParam(key: "email", value: email)

		return request
	}

	public class UnmergeTokenizer: ClientTokenizer  {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  Disconnect an existing user in the system from its external social network user  */
	public static func unmerge(type: SocialNetwork) -> RequestBuilder<Social, Social.SocialTokenizer, UnmergeTokenizer> {
		let request: RequestBuilder<Social, Social.SocialTokenizer, UnmergeTokenizer> = RequestBuilder<Social, Social.SocialTokenizer, UnmergeTokenizer>(service: "social", action: "unmerge")
			.setParam(key: "type", value: type.rawValue)

		return request
	}

	public class UpdateConfigurationTokenizer: ClientTokenizer  {
		
		public func configuration<T: SocialConfig.SocialConfigTokenizer>() -> T {
			return T(self.append("configuration"))
		}
	}

	/**  Set the user social network’s configuration information  */
	public static func UpdateConfiguration(configuration: SocialConfig) -> RequestBuilder<SocialConfig, SocialConfig.SocialConfigTokenizer, UpdateConfigurationTokenizer> {
		let request: RequestBuilder<SocialConfig, SocialConfig.SocialConfigTokenizer, UpdateConfigurationTokenizer> = RequestBuilder<SocialConfig, SocialConfig.SocialConfigTokenizer, UpdateConfigurationTokenizer>(service: "social", action: "UpdateConfiguration")
			.setParam(key: "configuration", value: configuration)

		return request
	}
}
