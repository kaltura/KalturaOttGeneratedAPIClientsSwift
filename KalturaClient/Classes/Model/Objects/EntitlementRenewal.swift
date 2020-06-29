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

open class EntitlementRenewal: ObjectBase {

	public class EntitlementRenewalTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func price<T: Price.PriceTokenizer>() -> T {
			return T(self.append("price"))
		}
		
		public var date: BaseTokenizedObject {
			get {
				return self.append("date") 
			}
		}
		
		public var purchaseId: BaseTokenizedObject {
			get {
				return self.append("purchaseId") 
			}
		}
		
		public var subscriptionId: BaseTokenizedObject {
			get {
				return self.append("subscriptionId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Price that is going to be paid on the renewal  */
	public var price: Price? = nil
	/**  Next renewal date  */
	public var date: Int64? = nil
	/**  Puchase ID  */
	public var purchaseId: Int64? = nil
	/**  Subscription ID  */
	public var subscriptionId: Int64? = nil
	/**  User ID  */
	public var userId: Int64? = nil


	public func setMultiRequestToken(date: String) {
		self.dict["date"] = date
	}
	
	public func setMultiRequestToken(purchaseId: String) {
		self.dict["purchaseId"] = purchaseId
	}
	
	public func setMultiRequestToken(subscriptionId: String) {
		self.dict["subscriptionId"] = subscriptionId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["price"] != nil {
		price = try JSONParser.parse(object: dict["price"] as! [String: Any])		}
		if dict["date"] != nil {
			date = Int64("\(dict["date"]!)")
		}
		if dict["purchaseId"] != nil {
			purchaseId = Int64("\(dict["purchaseId"]!)")
		}
		if dict["subscriptionId"] != nil {
			subscriptionId = Int64("\(dict["subscriptionId"]!)")
		}
		if dict["userId"] != nil {
			userId = Int64("\(dict["userId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(price != nil) {
			dict["price"] = price!.toDictionary()
		}
		if(date != nil) {
			dict["date"] = date!
		}
		if(purchaseId != nil) {
			dict["purchaseId"] = purchaseId!
		}
		if(subscriptionId != nil) {
			dict["subscriptionId"] = subscriptionId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		return dict
	}
}

