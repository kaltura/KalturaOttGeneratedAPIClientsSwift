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

/**  Defines a condition based on monetization actions.  */
open class MonetizationCondition: BaseSegmentCondition {

	public class MonetizationConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public var businessModuleIdIn: BaseTokenizedObject {
			get {
				return self.append("businessModuleIdIn") 
			}
		}
		
		public var currencyCode: BaseTokenizedObject {
			get {
				return self.append("currencyCode") 
			}
		}
		
		public var days: BaseTokenizedObject {
			get {
				return self.append("days") 
			}
		}
		
		public var maxValue: BaseTokenizedObject {
			get {
				return self.append("maxValue") 
			}
		}
		
		public var minValue: BaseTokenizedObject {
			get {
				return self.append("minValue") 
			}
		}
		
		public var operator_: BaseTokenizedObject {
			get {
				return self.append("operator_") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  A comma-separated list of business module IDs to include in the filter.  */
	public var businessModuleIdIn: String? = nil
	/**  The ISO 4217 currency code to filter by.  */
	public var currencyCode: String? = nil
	/**  The number of days to look back for monetization actions.  */
	public var days: Int? = nil
	/**  The maximum allowable value for the calculated metric.              MinValue
	  must be greater than or equal to MaxValue.  */
	public var maxValue: Int? = nil
	/**  The minimum required value for the calculated metric.              MinValue must
	  be less than or equal to MaxValue.  */
	public var minValue: Int? = nil
	/**  The aggregation method used to calculate the value (e.g., counting transactions,
	  summing amounts).  */
	public var operator_: MathemticalOperatorType? = nil
	/**  The specific monetization type to filter by.  */
	public var type: MonetizationType? = nil


	public func setMultiRequestToken(businessModuleIdIn: String) {
		self.dict["businessModuleIdIn"] = businessModuleIdIn
	}
	
	public func setMultiRequestToken(currencyCode: String) {
		self.dict["currencyCode"] = currencyCode
	}
	
	public func setMultiRequestToken(days: String) {
		self.dict["days"] = days
	}
	
	public func setMultiRequestToken(maxValue: String) {
		self.dict["maxValue"] = maxValue
	}
	
	public func setMultiRequestToken(minValue: String) {
		self.dict["minValue"] = minValue
	}
	
	public func setMultiRequestToken(operator_: String) {
		self.dict["operator"] = operator_
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["businessModuleIdIn"] != nil {
			businessModuleIdIn = dict["businessModuleIdIn"] as? String
		}
		if dict["currencyCode"] != nil {
			currencyCode = dict["currencyCode"] as? String
		}
		if dict["days"] != nil {
			days = dict["days"] as? Int
		}
		if dict["maxValue"] != nil {
			maxValue = dict["maxValue"] as? Int
		}
		if dict["minValue"] != nil {
			minValue = dict["minValue"] as? Int
		}
		if dict["operator"] != nil {
			operator_ = MathemticalOperatorType(rawValue: "\(dict["operator"]!)")
		}
		if dict["type"] != nil {
			type = MonetizationType(rawValue: "\(dict["type"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(businessModuleIdIn != nil) {
			dict["businessModuleIdIn"] = businessModuleIdIn!
		}
		if(currencyCode != nil) {
			dict["currencyCode"] = currencyCode!
		}
		if(days != nil) {
			dict["days"] = days!
		}
		if(maxValue != nil) {
			dict["maxValue"] = maxValue!
		}
		if(minValue != nil) {
			dict["minValue"] = minValue!
		}
		if(operator_ != nil) {
			dict["operator"] = operator_!.rawValue
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		return dict
	}
}

