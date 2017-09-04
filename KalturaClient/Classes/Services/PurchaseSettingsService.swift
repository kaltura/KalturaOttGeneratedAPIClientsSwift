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

public final class PurchaseSettingsService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var by: BaseTokenizedObject {
			get {
				return self.append("by") 
			}
		}
	}

	/**  Retrieve the purchase settings.              Includes specification of where
	  these settings were defined – account, household or user  */
	public static func get(by: EntityReferenceBy) -> RequestBuilder<PurchaseSettings, PurchaseSettings.PurchaseSettingsTokenizer, GetTokenizer> {
		let request: RequestBuilder<PurchaseSettings, PurchaseSettings.PurchaseSettingsTokenizer, GetTokenizer> = RequestBuilder<PurchaseSettings, PurchaseSettings.PurchaseSettingsTokenizer, GetTokenizer>(service: "purchasesettings", action: "get")
			.setBody(key: "by", value: by.rawValue)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entityReference: BaseTokenizedObject {
			get {
				return self.append("entityReference") 
			}
		}
		
		public var settings: PurchaseSettings.PurchaseSettingsTokenizer {
			get {
				return PurchaseSettings.PurchaseSettingsTokenizer(self.append("settings")) 
			}
		}
	}

	/**  Set a purchase PIN for the household or user  */
	public static func update(entityReference: EntityReferenceBy, settings: PurchaseSettings) -> RequestBuilder<PurchaseSettings, PurchaseSettings.PurchaseSettingsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PurchaseSettings, PurchaseSettings.PurchaseSettingsTokenizer, UpdateTokenizer> = RequestBuilder<PurchaseSettings, PurchaseSettings.PurchaseSettingsTokenizer, UpdateTokenizer>(service: "purchasesettings", action: "update")
			.setBody(key: "entityReference", value: entityReference.rawValue)
			.setBody(key: "settings", value: settings)

		return request
	}
}
