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

public final class NotificationService{

	public class RegisterTokenizer: ClientTokenizer  {
		
		public var identifier: BaseTokenizedObject {
			get {
				return self.append("identifier") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  TBD  */
	public static func register(identifier: String, type: NotificationType) -> RequestBuilder<RegistryResponse, RegistryResponse.RegistryResponseTokenizer, RegisterTokenizer> {
		let request: RequestBuilder<RegistryResponse, RegistryResponse.RegistryResponseTokenizer, RegisterTokenizer> = RequestBuilder<RegistryResponse, RegistryResponse.RegistryResponseTokenizer, RegisterTokenizer>(service: "notification", action: "register")
			.setParam(key: "identifier", value: identifier)
			.setParam(key: "type", value: type.rawValue)

		return request
	}

	public class SetDevicePushTokenTokenizer: ClientTokenizer  {
		
		public var pushToken: BaseTokenizedObject {
			get {
				return self.append("pushToken") 
			}
		}
	}

	/**  Registers the device push token to the push service  */
	public static func setDevicePushToken(pushToken: String) -> RequestBuilder<Bool, BaseTokenizedObject, SetDevicePushTokenTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SetDevicePushTokenTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SetDevicePushTokenTokenizer>(service: "notification", action: "setDevicePushToken")
			.setParam(key: "pushToken", value: pushToken)

		return request
	}
}
