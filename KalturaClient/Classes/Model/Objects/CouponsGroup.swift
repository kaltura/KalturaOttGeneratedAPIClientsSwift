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

/**  Coupons group details  */
open class CouponsGroup: ObjectBase {

	public class CouponsGroupTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var maxUsesNumber: BaseTokenizedObject {
			get {
				return self.append("maxUsesNumber") 
			}
		}
		
		public var maxUsesNumberOnRenewableSub: BaseTokenizedObject {
			get {
				return self.append("maxUsesNumberOnRenewableSub") 
			}
		}
		
		public var couponGroupType: BaseTokenizedObject {
			get {
				return self.append("couponGroupType") 
			}
		}
		
		public var maxHouseholdUses: BaseTokenizedObject {
			get {
				return self.append("maxHouseholdUses") 
			}
		}
		
		public var discountId: BaseTokenizedObject {
			get {
				return self.append("discountId") 
			}
		}
	}

	/**  Coupon group identifier  */
	public var id: String? = nil
	/**  Coupon group name  */
	public var name: String? = nil
	/**  The first date the coupons in this coupons group are valid  */
	public var startDate: Int64? = nil
	/**  The last date the coupons in this coupons group are valid  */
	public var endDate: Int64? = nil
	/**  Maximum number of uses for each coupon in the group  */
	public var maxUsesNumber: Int? = nil
	/**  Maximum number of uses for each coupon in the group on a renewable subscription  */
	public var maxUsesNumberOnRenewableSub: Int? = nil
	/**  Type of the coupon group  */
	public var couponGroupType: CouponGroupType? = nil
	/**  Maximum number of uses per household for each coupon in the group  */
	public var maxHouseholdUses: Int? = nil
	/**  Discount ID  */
	public var discountId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(maxUsesNumber: String) {
		self.dict["maxUsesNumber"] = maxUsesNumber
	}
	
	public func setMultiRequestToken(maxUsesNumberOnRenewableSub: String) {
		self.dict["maxUsesNumberOnRenewableSub"] = maxUsesNumberOnRenewableSub
	}
	
	public func setMultiRequestToken(couponGroupType: String) {
		self.dict["couponGroupType"] = couponGroupType
	}
	
	public func setMultiRequestToken(maxHouseholdUses: String) {
		self.dict["maxHouseholdUses"] = maxHouseholdUses
	}
	
	public func setMultiRequestToken(discountId: String) {
		self.dict["discountId"] = discountId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["maxUsesNumber"] != nil {
			maxUsesNumber = dict["maxUsesNumber"] as? Int
		}
		if dict["maxUsesNumberOnRenewableSub"] != nil {
			maxUsesNumberOnRenewableSub = dict["maxUsesNumberOnRenewableSub"] as? Int
		}
		if dict["couponGroupType"] != nil {
			couponGroupType = CouponGroupType(rawValue: "\(dict["couponGroupType"]!)")
		}
		if dict["maxHouseholdUses"] != nil {
			maxHouseholdUses = dict["maxHouseholdUses"] as? Int
		}
		if dict["discountId"] != nil {
			discountId = Int64("\(dict["discountId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(maxUsesNumber != nil) {
			dict["maxUsesNumber"] = maxUsesNumber!
		}
		if(maxUsesNumberOnRenewableSub != nil) {
			dict["maxUsesNumberOnRenewableSub"] = maxUsesNumberOnRenewableSub!
		}
		if(couponGroupType != nil) {
			dict["couponGroupType"] = couponGroupType!.rawValue
		}
		if(maxHouseholdUses != nil) {
			dict["maxHouseholdUses"] = maxHouseholdUses!
		}
		if(discountId != nil) {
			dict["discountId"] = discountId!
		}
		return dict
	}
}

