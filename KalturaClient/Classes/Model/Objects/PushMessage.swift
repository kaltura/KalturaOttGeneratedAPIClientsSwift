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

open class PushMessage: ObjectBase {

	/**  Push text  */
	public var message: String? = nil
	/**  Push sound  */
	public var sound: String? = nil
	/**  Push action  */
	public var action: String? = nil
	/**  Push URL  */
	public var url: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["sound"] != nil {
			sound = dict["sound"] as? String
		}
		if dict["action"] != nil {
			action = dict["action"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(message != nil) {
			dict["message"] = message!
		}
		if(sound != nil) {
			dict["sound"] = sound!
		}
		if(action != nil) {
			dict["action"] = action!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		return dict
	}
}

