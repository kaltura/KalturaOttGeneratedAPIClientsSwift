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

/**  Language details  */
open class Language: ObjectBase {

	/**  Language name  */
	public var name: String? = nil
	/**  Language system name  */
	public var systemName: String? = nil
	/**  Language code  */
	public var code: String? = nil
	/**  Language direction (LTR/RTL)  */
	public var direction: String? = nil
	/**  Is the default language of the account  */
	public var isDefault: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["code"] != nil {
			code = dict["code"] as? String
		}
		if dict["direction"] != nil {
			direction = dict["direction"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(code != nil) {
			dict["code"] = code!
		}
		if(direction != nil) {
			dict["direction"] = direction!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		return dict
	}
}

