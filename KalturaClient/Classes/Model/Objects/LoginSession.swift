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

/**  Login response  */
open class LoginSession: ObjectBase {

	public class LoginSessionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
	}

	/**  Access token in a KS format  */
	public var ks: String? = nil
	/**  Expiration  */
	public var expiry: Int64? = nil


	public func setMultiRequestToken(ks: String) {
		self.dict["ks"] = ks
	}
	
	public func setMultiRequestToken(expiry: String) {
		self.dict["expiry"] = expiry
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["expiry"] != nil {
			expiry = Int64("\(dict["expiry"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ks != nil) {
			dict["ks"] = ks!
		}
		if(expiry != nil) {
			dict["expiry"] = expiry!
		}
		return dict
	}
}

