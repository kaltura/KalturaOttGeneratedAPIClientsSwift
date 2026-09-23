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

open class Purchase: PurchaseBase {

	public class PurchaseTokenizer: PurchaseBase.PurchaseBaseTokenizer {
		
		public var currency: BaseTokenizedObject {
			get {
				return self.append("currency") 
			}
		}
		
		public var price: BaseTokenizedObject {
			get {
				return self.append("price") 
			}
		}
		
		public var paymentMethodId: BaseTokenizedObject {
			get {
				return self.append("paymentMethodId") 
			}
		}
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
		
		public var coupon: BaseTokenizedObject {
			get {
				return self.append("coupon") 
			}
		}
	}

	/**  Identifier for paying currency, according to ISO 4217  */
	public var currency: String? = nil
	/**  Net sum to charge – as a one-time transaction. Price must match the previously
	  provided price for the specified content.  */
	public var price: Double? = nil
	/**  Identifier for a pre-entered payment method. If not provided – the
	  household’s default payment method is used  */
	public var paymentMethodId: Int? = nil
	/**  Identifier for a pre-associated payment gateway. If not provided – the
	  account’s default payment gateway is used  */
	public var paymentGatewayId: Int? = nil
	/**  Coupon code  */
	public var coupon: String? = nil


	public func setMultiRequestToken(currency: String) {
		self.dict["currency"] = currency
	}
	
	public func setMultiRequestToken(price: String) {
		self.dict["price"] = price
	}
	
	public func setMultiRequestToken(paymentMethodId: String) {
		self.dict["paymentMethodId"] = paymentMethodId
	}
	
	public func setMultiRequestToken(paymentGatewayId: String) {
		self.dict["paymentGatewayId"] = paymentGatewayId
	}
	
	public func setMultiRequestToken(coupon: String) {
		self.dict["coupon"] = coupon
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["currency"] != nil {
			currency = dict["currency"] as? String
		}
		if dict["price"] != nil {
			price = dict["price"] as? Double
		}
		if dict["paymentMethodId"] != nil {
			paymentMethodId = dict["paymentMethodId"] as? Int
		}
		if dict["paymentGatewayId"] != nil {
			paymentGatewayId = dict["paymentGatewayId"] as? Int
		}
		if dict["coupon"] != nil {
			coupon = dict["coupon"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(currency != nil) {
			dict["currency"] = currency!
		}
		if(price != nil) {
			dict["price"] = price!
		}
		if(paymentMethodId != nil) {
			dict["paymentMethodId"] = paymentMethodId!
		}
		if(paymentGatewayId != nil) {
			dict["paymentGatewayId"] = paymentGatewayId!
		}
		if(coupon != nil) {
			dict["coupon"] = coupon!
		}
		return dict
	}
}

