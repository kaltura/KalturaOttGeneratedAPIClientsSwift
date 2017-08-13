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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  C-DVR Adapter  */
open class CDVRAdapterProfile: ObjectBase {

	/**  C-DVR adapter identifier  */
	public var id: Int? = nil
	/**  C-DVR adapter name  */
	public var name: String? = nil
	/**  C-DVR adapter active status  */
	public var isActive: Bool? = nil
	/**  C-DVR adapter adapter URL  */
	public var adapterUrl: String? = nil
	/**  C-DVR adapter extra parameters  */
	public var settings: Dictionary<String, StringValue>? = nil
	/**  C-DVR adapter external identifier  */
	public var externalIdentifier: String? = nil
	/**  C-DVR shared secret  */
	public var sharedSecret: String? = nil
	/**  Indicates whether the C-DVR adapter supports dynamic URLs  */
	public var dynamicLinksSupport: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["adapterUrl"] != nil {
			adapterUrl = dict["adapterUrl"] as? String
		}
		if dict["settings"] != nil {
			settings = try JSONParser.parse(map: dict["settings"] as! [String: Any])
		}
		if dict["externalIdentifier"] != nil {
			externalIdentifier = dict["externalIdentifier"] as? String
		}
		if dict["sharedSecret"] != nil {
			sharedSecret = dict["sharedSecret"] as? String
		}
		if dict["dynamicLinksSupport"] != nil {
			dynamicLinksSupport = dict["dynamicLinksSupport"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(adapterUrl != nil) {
			dict["adapterUrl"] = adapterUrl!
		}
		if(settings != nil) {
			dict["settings"] = settings!.map { key, value in (key, value.toDictionary()) }
		}
		if(externalIdentifier != nil) {
			dict["externalIdentifier"] = externalIdentifier!
		}
		if(dynamicLinksSupport != nil) {
			dict["dynamicLinksSupport"] = dynamicLinksSupport!
		}
		return dict
	}
}

