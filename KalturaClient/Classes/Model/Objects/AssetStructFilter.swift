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

/**  Filtering Asset Structs  */
open class AssetStructFilter: Filter {

	public class AssetStructFilterTokenizer: Filter.FilterTokenizer {
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var metaIdEqual: BaseTokenizedObject {
			get {
				return self.append("metaIdEqual") 
			}
		}
		
		public var isProtectedEqual: BaseTokenizedObject {
			get {
				return self.append("isProtectedEqual") 
			}
		}
	}

	/**  Comma separated identifiers, id = 0 is identified as program AssetStruct  */
	public var idIn: String? = nil
	/**  Filter Asset Structs that contain a specific meta id  */
	public var metaIdEqual: Int64? = nil
	/**  Filter Asset Structs by isProtectedEqual value  */
	public var isProtectedEqual: Bool? = nil


	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(metaIdEqual: String) {
		self.dict["metaIdEqual"] = metaIdEqual
	}
	
	public func setMultiRequestToken(isProtectedEqual: String) {
		self.dict["isProtectedEqual"] = isProtectedEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["metaIdEqual"] != nil {
			metaIdEqual = Int64("\(dict["metaIdEqual"]!)")
		}
		if dict["isProtectedEqual"] != nil {
			isProtectedEqual = dict["isProtectedEqual"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(metaIdEqual != nil) {
			dict["metaIdEqual"] = metaIdEqual!
		}
		if(isProtectedEqual != nil) {
			dict["isProtectedEqual"] = isProtectedEqual!
		}
		return dict
	}
}

