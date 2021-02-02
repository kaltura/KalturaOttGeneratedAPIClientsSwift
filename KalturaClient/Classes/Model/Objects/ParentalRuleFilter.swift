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

open class ParentalRuleFilter: Filter {

	public class ParentalRuleFilterTokenizer: Filter.FilterTokenizer {
		
		public var entityReferenceEqual: BaseTokenizedObject {
			get {
				return self.append("entityReferenceEqual") 
			}
		}
	}

	/**  Reference type to filter by  */
	public var entityReferenceEqual: EntityReferenceBy? = nil


	public func setMultiRequestToken(entityReferenceEqual: String) {
		self.dict["entityReferenceEqual"] = entityReferenceEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entityReferenceEqual"] != nil {
			entityReferenceEqual = EntityReferenceBy(rawValue: "\(dict["entityReferenceEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entityReferenceEqual != nil) {
			dict["entityReferenceEqual"] = entityReferenceEqual!.rawValue
		}
		return dict
	}
}

