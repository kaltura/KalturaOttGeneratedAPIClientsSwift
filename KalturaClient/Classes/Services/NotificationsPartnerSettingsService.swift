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

public final class NotificationsPartnerSettingsService{

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Retrieve the partner notification settings.  */
	public static func get() -> RequestBuilder<NotificationsPartnerSettings, NotificationsPartnerSettings.NotificationsPartnerSettingsTokenizer, GetTokenizer> {
		let request: RequestBuilder<NotificationsPartnerSettings, NotificationsPartnerSettings.NotificationsPartnerSettingsTokenizer, GetTokenizer> = RequestBuilder<NotificationsPartnerSettings, NotificationsPartnerSettings.NotificationsPartnerSettingsTokenizer, GetTokenizer>(service: "notificationspartnersettings", action: "get")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func settings<T: NotificationsPartnerSettings.NotificationsPartnerSettingsTokenizer>() -> T {
			return T(self.append("settings"))
		}
	}

	/**  Update the account notification settings  */
	public static func update(settings: NotificationsPartnerSettings) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer>(service: "notificationspartnersettings", action: "update")
			.setBody(key: "settings", value: settings)

		return request
	}
}
