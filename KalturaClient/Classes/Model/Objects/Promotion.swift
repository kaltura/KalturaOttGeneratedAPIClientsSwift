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
open class Promotion: BasePromotion {

	public class PromotionTokenizer: BasePromotion.BasePromotionTokenizer {
		
		public var discountModuleId: BaseTokenizedObject {
			get {
				return self.append("discountModuleId") 
			}
		}
		
		public var numberOfRecurring: BaseTokenizedObject {
			get {
				return self.append("numberOfRecurring") 
			}
		}
		
		public var maxDiscountUsages: BaseTokenizedObject {
			get {
				return self.append("maxDiscountUsages") 
			}
		}
	}

	/**  The discount module id that is promoted to the user  */
	public var discountModuleId: Int64? = nil
	/**  the numer of recurring for this promotion  */
	public var numberOfRecurring: Int? = nil
	/**  The number of times a household can use the discount module in this campaign.   
	            If omitted than no limitation is enforced on the number of usages.  */
	public var maxDiscountUsages: Int? = nil


	public func setMultiRequestToken(discountModuleId: String) {
		self.dict["discountModuleId"] = discountModuleId
	}
	
	public func setMultiRequestToken(numberOfRecurring: String) {
		self.dict["numberOfRecurring"] = numberOfRecurring
	}
	
	public func setMultiRequestToken(maxDiscountUsages: String) {
		self.dict["maxDiscountUsages"] = maxDiscountUsages
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["discountModuleId"] != nil {
			discountModuleId = Int64("\(dict["discountModuleId"]!)")
		}
		if dict["numberOfRecurring"] != nil {
			numberOfRecurring = dict["numberOfRecurring"] as? Int
		}
		if dict["maxDiscountUsages"] != nil {
			maxDiscountUsages = dict["maxDiscountUsages"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(discountModuleId != nil) {
			dict["discountModuleId"] = discountModuleId!
		}
		if(numberOfRecurring != nil) {
			dict["numberOfRecurring"] = numberOfRecurring!
		}
		if(maxDiscountUsages != nil) {
			dict["maxDiscountUsages"] = maxDiscountUsages!
		}
		return dict
	}
}

