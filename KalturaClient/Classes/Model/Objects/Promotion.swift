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

/**  Promotion  */
open class Promotion: ObjectBase {

	public class PromotionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var discountModuleId: BaseTokenizedObject {
			get {
				return self.append("discountModuleId") 
			}
		}
		
		public var conditions: ArrayTokenizedObject<Condition.ConditionTokenizer> {
			get {
				return ArrayTokenizedObject<Condition.ConditionTokenizer>(self.append("conditions"))
			} 
		}
		
		public var numberOfRecurring: BaseTokenizedObject {
			get {
				return self.append("numberOfRecurring") 
			}
		}
	}

	/**  The discount module id that is promoted to the user  */
	public var discountModuleId: Int64? = nil
	/**  These conditions define the Promotion that applies on  */
	public var conditions: Array<Condition>? = nil
	/**  the numer of recurring for this promotion  */
	public var numberOfRecurring: Int? = nil


	public func setMultiRequestToken(discountModuleId: String) {
		self.dict["discountModuleId"] = discountModuleId
	}
	
	public func setMultiRequestToken(numberOfRecurring: String) {
		self.dict["numberOfRecurring"] = numberOfRecurring
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["discountModuleId"] != nil {
			discountModuleId = Int64("\(dict["discountModuleId"]!)")
		}
		if dict["conditions"] != nil {
			conditions = try JSONParser.parse(array: dict["conditions"] as! [Any])
		}
		if dict["numberOfRecurring"] != nil {
			numberOfRecurring = dict["numberOfRecurring"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(discountModuleId != nil) {
			dict["discountModuleId"] = discountModuleId!
		}
		if(conditions != nil) {
			dict["conditions"] = conditions!.map { value in value.toDictionary() }
		}
		if(numberOfRecurring != nil) {
			dict["numberOfRecurring"] = numberOfRecurring!
		}
		return dict
	}
}

