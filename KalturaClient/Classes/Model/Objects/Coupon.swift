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

/**  Coupon details container  */
open class Coupon: ObjectBase {

	public class CouponTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func couponsGroup<T: CouponsGroup.CouponsGroupTokenizer>() -> T {
			return T(self.append("couponsGroup"))
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var totalUses: BaseTokenizedObject {
			get {
				return self.append("totalUses") 
			}
		}
		
		public var leftUses: BaseTokenizedObject {
			get {
				return self.append("leftUses") 
			}
		}
		
		public var couponCode: BaseTokenizedObject {
			get {
				return self.append("couponCode") 
			}
		}
	}

	/**  Coupons group details  */
	public var couponsGroup: CouponsGroup? = nil
	/**  Coupon status  */
	public var status: CouponStatus? = nil
	/**  Total available coupon uses  */
	public var totalUses: Int? = nil
	/**  Left coupon uses  */
	public var leftUses: Int? = nil
	/**  Coupon code  */
	public var couponCode: String? = nil


	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(totalUses: String) {
		self.dict["totalUses"] = totalUses
	}
	
	public func setMultiRequestToken(leftUses: String) {
		self.dict["leftUses"] = leftUses
	}
	
	public func setMultiRequestToken(couponCode: String) {
		self.dict["couponCode"] = couponCode
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["couponsGroup"] != nil {
		couponsGroup = try JSONParser.parse(object: dict["couponsGroup"] as! [String: Any])		}
		if dict["status"] != nil {
			status = CouponStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["totalUses"] != nil {
			totalUses = dict["totalUses"] as? Int
		}
		if dict["leftUses"] != nil {
			leftUses = dict["leftUses"] as? Int
		}
		if dict["couponCode"] != nil {
			couponCode = dict["couponCode"] as? String
		}

	}

}

