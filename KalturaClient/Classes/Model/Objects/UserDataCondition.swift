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

/**  User data condition for segmentation  */
open class UserDataCondition: BaseSegmentCondition {

	public class UserDataConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public var field: BaseTokenizedObject {
			get {
				return self.append("field") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
	}

	/**  Field name  */
	public var field: String? = nil
	/**  Value  */
	public var value: String? = nil


	public func setMultiRequestToken(field: String) {
		self.dict["field"] = field
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["field"] != nil {
			field = dict["field"] as? String
		}
		if dict["value"] != nil {
			value = dict["value"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(field != nil) {
			dict["field"] = field!
		}
		if(value != nil) {
			dict["value"] = value!
		}
		return dict
	}
}

