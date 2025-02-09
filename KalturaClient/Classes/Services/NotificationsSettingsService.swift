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

public final class NotificationsSettingsService{

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Retrieve the user’s notification settings.  */
	public static func get() -> RequestBuilder<NotificationsSettings, NotificationsSettings.NotificationsSettingsTokenizer, GetTokenizer> {
		let request: RequestBuilder<NotificationsSettings, NotificationsSettings.NotificationsSettingsTokenizer, GetTokenizer> = RequestBuilder<NotificationsSettings, NotificationsSettings.NotificationsSettingsTokenizer, GetTokenizer>(service: "notificationssettings", action: "get")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func settings<T: NotificationsSettings.NotificationsSettingsTokenizer>() -> T {
			return T(self.append("settings"))
		}
	}

	/**  Update the user’s notification settings.  */
	public static func update(settings: NotificationsSettings) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer>(service: "notificationssettings", action: "update")
			.setParam(key: "settings", value: settings)

		return request
	}

	public class UpdateWithTokenTokenizer: ClientTokenizer  {
		
		public func settings<T: NotificationsSettings.NotificationsSettingsTokenizer>() -> T {
			return T(self.append("settings"))
		}
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
			}
		}
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
	}

	/**  Update the user’s notification settings.  */
	public static func updateWithToken(settings: NotificationsSettings, token: String, partnerId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateWithTokenTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateWithTokenTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateWithTokenTokenizer>(service: "notificationssettings", action: "updateWithToken")
			.setParam(key: "settings", value: settings)
			.setParam(key: "token", value: token)
			.setParam(key: "partnerId", value: partnerId)

		return request
	}
}
