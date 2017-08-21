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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Coupons group details  */
open class CouponsGroup: ObjectBase {

	/**  Coupon group identifier  */
	public var id: String? = nil
	/**  Coupon group name  */
	public var name: String? = nil
	/**  A list of the descriptions of the coupon group on different languages (language
	  code and translation)  */
	public var descriptions: Array<TranslationToken>? = nil
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


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["descriptions"] != nil {
			descriptions = try JSONParser.parse(array: dict["descriptions"] as! [Any])
		}
		if dict["startDate"] != nil {
			startDate = Int64((dict["startDate"] as? String)!)
		}
		if dict["endDate"] != nil {
			endDate = Int64((dict["endDate"] as? String)!)
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

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(descriptions != nil) {
			dict["descriptions"] = descriptions!.map { value in value.toDictionary() }
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
		return dict
	}
}

