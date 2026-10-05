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

/**  Filters assets based on a numeric metadata field using range comparisons.       
        Attempting to create KalturaNumberMetaConstraint for key that is not type
  of Number will fail.  */
open class NumberMetaConstraint: BaseAttributeConstraint {

	public class NumberMetaConstraintTokenizer: BaseAttributeConstraint.BaseAttributeConstraintTokenizer {
		
		public var equals: BaseTokenizedObject {
			get {
				return self.append("equals") 
			}
		}
		
		public var greaterThan: BaseTokenizedObject {
			get {
				return self.append("greaterThan") 
			}
		}
		
		public var smallerThan: BaseTokenizedObject {
			get {
				return self.append("smallerThan") 
			}
		}
	}

	/**  The exact numeric value the field must equal.  */
	public var equals: Int64? = nil
	/**  The numeric value the field must be greater than.  */
	public var greaterThan: Int64? = nil
	/**  The numeric value the field must be smaller than.  */
	public var smallerThan: Int64? = nil


	public func setMultiRequestToken(equals: String) {
		self.dict["equals"] = equals
	}
	
	public func setMultiRequestToken(greaterThan: String) {
		self.dict["greaterThan"] = greaterThan
	}
	
	public func setMultiRequestToken(smallerThan: String) {
		self.dict["smallerThan"] = smallerThan
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["equals"] != nil {
			equals = Int64("\(dict["equals"]!)")
		}
		if dict["greaterThan"] != nil {
			greaterThan = Int64("\(dict["greaterThan"]!)")
		}
		if dict["smallerThan"] != nil {
			smallerThan = Int64("\(dict["smallerThan"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(equals != nil) {
			dict["equals"] = equals!
		}
		if(greaterThan != nil) {
			dict["greaterThan"] = greaterThan!
		}
		if(smallerThan != nil) {
			dict["smallerThan"] = smallerThan!
		}
		return dict
	}
}

