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

public final class SystemService{

	public class ClearLocalServerCacheTokenizer: ClientTokenizer  {
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
	}

	public static func clearLocalServerCache() -> RequestBuilder<Bool, BaseTokenizedObject, ClearLocalServerCacheTokenizer> {
		return clearLocalServerCache(action: nil)
	}

	public static func clearLocalServerCache(action: String?) -> RequestBuilder<Bool, BaseTokenizedObject, ClearLocalServerCacheTokenizer> {
		return clearLocalServerCache(action: action, key: nil)
	}

	/**  Clear local server cache  */
	public static func clearLocalServerCache(action: String?, key: String?) -> RequestBuilder<Bool, BaseTokenizedObject, ClearLocalServerCacheTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ClearLocalServerCacheTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ClearLocalServerCacheTokenizer>(service: "system", action: "clearLocalServerCache")
			.setParam(key: "action", value: action)
			.setParam(key: "key", value: key)

		return request
	}

	public class GetLogLevelTokenizer: ClientTokenizer  {
	}

	/**  Gets the current level of the KLogger  */
	public static func getLogLevel() -> RequestBuilder<String, BaseTokenizedObject, GetLogLevelTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetLogLevelTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetLogLevelTokenizer>(service: "system", action: "getLogLevel")

		return request
	}

	public class GetTimeTokenizer: ClientTokenizer  {
	}

	/**  Returns current server timestamp  */
	public static func getTime() -> RequestBuilder<Int64, BaseTokenizedObject, GetTimeTokenizer> {
		let request: RequestBuilder<Int64, BaseTokenizedObject, GetTimeTokenizer> = RequestBuilder<Int64, BaseTokenizedObject, GetTimeTokenizer>(service: "system", action: "getTime")

		return request
	}

	public class GetVersionTokenizer: ClientTokenizer  {
	}

	/**  Returns current server version  */
	public static func getVersion() -> RequestBuilder<String, BaseTokenizedObject, GetVersionTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetVersionTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetVersionTokenizer>(service: "system", action: "getVersion")

		return request
	}

	public class IncrementLayeredCacheGroupConfigVersionTokenizer: ClientTokenizer  {
		
		public var groupId: BaseTokenizedObject {
			get {
				return self.append("groupId") 
			}
		}
	}

	public static func incrementLayeredCacheGroupConfigVersion() -> RequestBuilder<Bool, BaseTokenizedObject, IncrementLayeredCacheGroupConfigVersionTokenizer> {
		return incrementLayeredCacheGroupConfigVersion(groupId: 0)
	}

	/**  Returns true if version has been incremented successfully or false otherwise.
	  You need to send groupId only if you wish to increment for a specific groupId
	  and not the one the KS belongs to.  */
	public static func incrementLayeredCacheGroupConfigVersion(groupId: Int?) -> RequestBuilder<Bool, BaseTokenizedObject, IncrementLayeredCacheGroupConfigVersionTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, IncrementLayeredCacheGroupConfigVersionTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, IncrementLayeredCacheGroupConfigVersionTokenizer>(service: "system", action: "incrementLayeredCacheGroupConfigVersion")
			.setParam(key: "groupId", value: groupId)

		return request
	}

	public class PingTokenizer: ClientTokenizer  {
	}

	/**  Returns true  */
	public static func ping() -> RequestBuilder<Bool, BaseTokenizedObject, PingTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, PingTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, PingTokenizer>(service: "system", action: "ping")

		return request
	}

	public class SetLogLevelTokenizer: ClientTokenizer  {
		
		public var level: BaseTokenizedObject {
			get {
				return self.append("level") 
			}
		}
	}

	/**  Sets the current level of the KLogger  */
	public static func setLogLevel(level: LogLevel) -> RequestBuilder<Bool, BaseTokenizedObject, SetLogLevelTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SetLogLevelTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SetLogLevelTokenizer>(service: "system", action: "setLogLevel")
			.setParam(key: "level", value: level.rawValue)

		return request
	}
}
