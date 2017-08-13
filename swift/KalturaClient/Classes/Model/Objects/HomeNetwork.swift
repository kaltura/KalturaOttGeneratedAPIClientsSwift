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

/**  Home network details  */
open class HomeNetwork: ObjectBase {

	/**  Home network identifier  */
	public var externalId: String? = nil
	/**  Home network name  */
	public var name: String? = nil
	/**  Home network description  */
	public var description: String? = nil
	/**  Is home network is active  */
	public var isActive: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		return dict
	}
}

