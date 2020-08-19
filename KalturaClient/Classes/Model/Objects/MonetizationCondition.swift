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

/**  Defines a condition which is essentially a combination of several
  monetization-based actions, each has their own score multiplier  */
open class MonetizationCondition: BaseSegmentCondition {

	public class MonetizationConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public var minValue: BaseTokenizedObject {
			get {
				return self.append("minValue") 
			}
		}
		
		public var maxValue: BaseTokenizedObject {
			get {
				return self.append("maxValue") 
			}
		}
		
		public var days: BaseTokenizedObject {
			get {
				return self.append("days") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var operator_: BaseTokenizedObject {
			get {
				return self.append("operator_") 
			}
		}
		
		public var businessModuleIdIn: BaseTokenizedObject {
			get {
				return self.append("businessModuleIdIn") 
			}
		}
	}

	/**  The minimum value to be met  */
	public var minValue: Int? = nil
	/**  The maximum value to be met  */
	public var maxValue: Int? = nil
	/**  How many days back should the actions be considered  */
	public var days: Int? = nil
	/**  Purchase type  */
	public var type: MonetizationType? = nil
	/**  Mathermtical operator to calculate  */
	public var operator_: MathemticalOperatorType? = nil
	/**  Comma saperated list of business module IDs  */
	public var businessModuleIdIn: String? = nil


	public func setMultiRequestToken(minValue: String) {
		self.dict["minValue"] = minValue
	}
	
	public func setMultiRequestToken(maxValue: String) {
		self.dict["maxValue"] = maxValue
	}
	
	public func setMultiRequestToken(days: String) {
		self.dict["days"] = days
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(operator_: String) {
		self.dict["operator"] = operator_
	}
	
	public func setMultiRequestToken(businessModuleIdIn: String) {
		self.dict["businessModuleIdIn"] = businessModuleIdIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["minValue"] != nil {
			minValue = dict["minValue"] as? Int
		}
		if dict["maxValue"] != nil {
			maxValue = dict["maxValue"] as? Int
		}
		if dict["days"] != nil {
			days = dict["days"] as? Int
		}
		if dict["type"] != nil {
			type = MonetizationType(rawValue: "\(dict["type"]!)")
		}
		if dict["operator"] != nil {
			operator_ = MathemticalOperatorType(rawValue: "\(dict["operator"]!)")
		}
		if dict["businessModuleIdIn"] != nil {
			businessModuleIdIn = dict["businessModuleIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(minValue != nil) {
			dict["minValue"] = minValue!
		}
		if(maxValue != nil) {
			dict["maxValue"] = maxValue!
		}
		if(days != nil) {
			dict["days"] = days!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(operator_ != nil) {
			dict["operator"] = operator_!.rawValue
		}
		if(businessModuleIdIn != nil) {
			dict["businessModuleIdIn"] = businessModuleIdIn!
		}
		return dict
	}
}

