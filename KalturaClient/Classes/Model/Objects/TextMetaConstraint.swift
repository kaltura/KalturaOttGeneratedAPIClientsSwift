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

/**  Filters assets based on a text metadata field containing a substring.  */
open class TextMetaConstraint: BaseAttributeConstraint {

	public class TextMetaConstraintTokenizer: BaseAttributeConstraint.BaseAttributeConstraintTokenizer {
		
		public var contains: BaseTokenizedObject {
			get {
				return self.append("contains") 
			}
		}
		
		public var equals: BaseTokenizedObject {
			get {
				return self.append("equals") 
			}
		}
	}

	/**  The substring that the metadata field value must contain.  */
	public var contains: String? = nil
	/**  The exact string value the field must equal.  */
	public var equals: String? = nil


	public func setMultiRequestToken(contains: String) {
		self.dict["contains"] = contains
	}
	
	public func setMultiRequestToken(equals: String) {
		self.dict["equals"] = equals
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["contains"] != nil {
			contains = dict["contains"] as? String
		}
		if dict["equals"] != nil {
			equals = dict["equals"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(contains != nil) {
			dict["contains"] = contains!
		}
		if(equals != nil) {
			dict["equals"] = equals!
		}
		return dict
	}
}

