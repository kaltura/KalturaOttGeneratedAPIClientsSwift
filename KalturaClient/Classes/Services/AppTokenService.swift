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

public final class AppTokenService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var appToken: AppToken.AppTokenTokenizer {
			get {
				return AppToken.AppTokenTokenizer(self.append("appToken")) 
			}
		}
	}

	/**  Add new application authentication token  */
	public static func add(appToken: AppToken) -> RequestBuilder<AppToken, AppToken.AppTokenTokenizer, AddTokenizer> {
		let request: RequestBuilder<AppToken, AppToken.AppTokenTokenizer, AddTokenizer> = RequestBuilder<AppToken, AppToken.AppTokenTokenizer, AddTokenizer>(service: "apptoken", action: "add")
			.setBody(key: "appToken", value: appToken)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete application authentication token by id  */
	public static func delete(id: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "apptoken", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get application authentication token by id  */
	public static func get(id: String) -> RequestBuilder<AppToken, AppToken.AppTokenTokenizer, GetTokenizer> {
		let request: RequestBuilder<AppToken, AppToken.AppTokenTokenizer, GetTokenizer> = RequestBuilder<AppToken, AppToken.AppTokenTokenizer, GetTokenizer>(service: "apptoken", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class StartSessionTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var tokenHash: BaseTokenizedObject {
			get {
				return self.append("tokenHash") 
			}
		}
		
		public override var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	public static func startSession(id: String, tokenHash: String) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		return startSession(id: id, tokenHash: tokenHash, userId: nil)
	}

	public static func startSession(id: String, tokenHash: String, userId: String?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		return startSession(id: id, tokenHash: tokenHash, userId: userId, type: nil)
	}

	public static func startSession(id: String, tokenHash: String, userId: String?, type: SessionType?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		return startSession(id: id, tokenHash: tokenHash, userId: userId, type: type, expiry: nil)
	}

	public static func startSession(id: String, tokenHash: String, userId: String?, type: SessionType?, expiry: Int?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		return startSession(id: id, tokenHash: tokenHash, userId: userId, type: type, expiry: expiry, udid: nil)
	}

	/**  Starts a new KS (Kaltura Session) based on application authentication token id  */
	public static func startSession(id: String, tokenHash: String, userId: String?, type: SessionType?, expiry: Int?, udid: String?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		let request: RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> = RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer>(service: "apptoken", action: "startSession")
			.setBody(key: "id", value: id)
			.setBody(key: "tokenHash", value: tokenHash)
			.setBody(key: "userId", value: userId)
			.setBody(key: "type", value: type?.rawValue)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "udid", value: udid)

		return request
	}
}
