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

public final class CdnPartnerSettingsService{

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Retrieve the partner’s CDN settings (default adapters)  */
	public static func get() -> RequestBuilder<CDNPartnerSettings, CDNPartnerSettings.CDNPartnerSettingsTokenizer, GetTokenizer> {
		let request: RequestBuilder<CDNPartnerSettings, CDNPartnerSettings.CDNPartnerSettingsTokenizer, GetTokenizer> = RequestBuilder<CDNPartnerSettings, CDNPartnerSettings.CDNPartnerSettingsTokenizer, GetTokenizer>(service: "cdnpartnersettings", action: "get")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func settings<T: CDNPartnerSettings.CDNPartnerSettingsTokenizer>() -> T {
			return T(self.append("settings"))
		}
	}

	/**  Configure the partner’s CDN settings (default adapters)  */
	public static func update(settings: CDNPartnerSettings) -> RequestBuilder<CDNPartnerSettings, CDNPartnerSettings.CDNPartnerSettingsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CDNPartnerSettings, CDNPartnerSettings.CDNPartnerSettingsTokenizer, UpdateTokenizer> = RequestBuilder<CDNPartnerSettings, CDNPartnerSettings.CDNPartnerSettingsTokenizer, UpdateTokenizer>(service: "cdnpartnersettings", action: "update")
			.setParam(key: "settings", value: settings)

		return request
	}
}
