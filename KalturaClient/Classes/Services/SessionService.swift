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
// Copyright (C) 2006-2020  Kaltura Inc.
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

public final class SessionService{

	public class CreateSessionCharacteristicTokenizer: ClientTokenizer  {
		
		public override var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var expiration: BaseTokenizedObject {
			get {
				return self.append("expiration") 
			}
		}
		
		public var regionId: BaseTokenizedObject {
			get {
				return self.append("regionId") 
			}
		}
		
		public var sessionCharacteristicParams: DictionaryTokenizedObject<StringValueArray.StringValueArrayTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValueArray.StringValueArrayTokenizer>(self.append("sessionCharacteristicParams"))
			}
		}
	}

	public static func createSessionCharacteristic(userId: String, householdId: Int64, udid: String, expiration: Int64) -> RequestBuilder<SessionCharacteristic, SessionCharacteristic.SessionCharacteristicTokenizer, CreateSessionCharacteristicTokenizer> {
		return createSessionCharacteristic(userId: userId, householdId: householdId, udid: udid, expiration: expiration, regionId: nil)
	}

	public static func createSessionCharacteristic(userId: String, householdId: Int64, udid: String, expiration: Int64, regionId: Int?) -> RequestBuilder<SessionCharacteristic, SessionCharacteristic.SessionCharacteristicTokenizer, CreateSessionCharacteristicTokenizer> {
		return createSessionCharacteristic(userId: userId, householdId: householdId, udid: udid, expiration: expiration, regionId: regionId, sessionCharacteristicParams: nil)
	}

	/**  Create session characteristic  */
	public static func createSessionCharacteristic(userId: String, householdId: Int64, udid: String, expiration: Int64, regionId: Int?, sessionCharacteristicParams: Dictionary<String, StringValueArray>?) -> RequestBuilder<SessionCharacteristic, SessionCharacteristic.SessionCharacteristicTokenizer, CreateSessionCharacteristicTokenizer> {
		let request: RequestBuilder<SessionCharacteristic, SessionCharacteristic.SessionCharacteristicTokenizer, CreateSessionCharacteristicTokenizer> = RequestBuilder<SessionCharacteristic, SessionCharacteristic.SessionCharacteristicTokenizer, CreateSessionCharacteristicTokenizer>(service: "session", action: "createSessionCharacteristic")
			.setParam(key: "userId", value: userId)
			.setParam(key: "householdId", value: householdId)
			.setParam(key: "udid", value: udid)
			.setParam(key: "expiration", value: expiration)
			.setParam(key: "regionId", value: regionId)
			.setParam(key: "sessionCharacteristicParams", value: sessionCharacteristicParams)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var session: BaseTokenizedObject {
			get {
				return self.append("session") 
			}
		}
	}

	public static func get() -> RequestBuilder<Session, Session.SessionTokenizer, GetTokenizer> {
		return get(session: nil)
	}

	/**  Parses KS  */
	public static func get(session: String?) -> RequestBuilder<Session, Session.SessionTokenizer, GetTokenizer> {
		let request: RequestBuilder<Session, Session.SessionTokenizer, GetTokenizer> = RequestBuilder<Session, Session.SessionTokenizer, GetTokenizer>(service: "session", action: "get")
			.setParam(key: "session", value: session)

		return request
	}

	public class RevokeTokenizer: ClientTokenizer  {
	}

	/**  Revokes all the sessions (KS) of a given user  */
	public static func revoke() -> RequestBuilder<Bool, BaseTokenizedObject, RevokeTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, RevokeTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, RevokeTokenizer>(service: "session", action: "revoke")

		return request
	}

	public class SwitchUserTokenizer: ClientTokenizer  {
		
		public var userIdToSwitch: BaseTokenizedObject {
			get {
				return self.append("userIdToSwitch") 
			}
		}
	}

	/**  Switching the user in the session by generating a new session for a new user
	  within the same household  */
	public static func switchUser(userIdToSwitch: String) -> RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, SwitchUserTokenizer> {
		let request: RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, SwitchUserTokenizer> = RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, SwitchUserTokenizer>(service: "session", action: "switchUser")
			.setParam(key: "userIdToSwitch", value: userIdToSwitch)

		return request
	}
}
