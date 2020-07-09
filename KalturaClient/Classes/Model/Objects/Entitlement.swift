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

/**  Entitlement  */
open class Entitlement: ObjectBase {

	public class EntitlementTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var productId: BaseTokenizedObject {
			get {
				return self.append("productId") 
			}
		}
		
		public var currentUses: BaseTokenizedObject {
			get {
				return self.append("currentUses") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var currentDate: BaseTokenizedObject {
			get {
				return self.append("currentDate") 
			}
		}
		
		public var lastViewDate: BaseTokenizedObject {
			get {
				return self.append("lastViewDate") 
			}
		}
		
		public var purchaseDate: BaseTokenizedObject {
			get {
				return self.append("purchaseDate") 
			}
		}
		
		public var paymentMethod: BaseTokenizedObject {
			get {
				return self.append("paymentMethod") 
			}
		}
		
		public var deviceUdid: BaseTokenizedObject {
			get {
				return self.append("deviceUdid") 
			}
		}
		
		public var deviceName: BaseTokenizedObject {
			get {
				return self.append("deviceName") 
			}
		}
		
		public var isCancelationWindowEnabled: BaseTokenizedObject {
			get {
				return self.append("isCancelationWindowEnabled") 
			}
		}
		
		public var maxUses: BaseTokenizedObject {
			get {
				return self.append("maxUses") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
	}

	/**  Purchase identifier (for subscriptions and collections only)  */
	public var id: Int? = nil
	/**  Product identifier  */
	public var productId: String? = nil
	/**  The current number of uses  */
	public var currentUses: Int? = nil
	/**  The end date of the entitlement  */
	public var endDate: Int64? = nil
	/**  Current date  */
	public var currentDate: Int64? = nil
	/**  The last date the item was viewed  */
	public var lastViewDate: Int64? = nil
	/**  Purchase date  */
	public var purchaseDate: Int64? = nil
	/**  Payment Method  */
	public var paymentMethod: PaymentMethodType? = nil
	/**  The UDID of the device from which the purchase was made  */
	public var deviceUdid: String? = nil
	/**  The name of the device from which the purchase was made  */
	public var deviceName: String? = nil
	/**  Indicates whether a cancelation window period is enabled  */
	public var isCancelationWindowEnabled: Bool? = nil
	/**  The maximum number of uses available for this item (only for subscription and
	  PPV)  */
	public var maxUses: Int? = nil
	/**  The Identifier of the purchasing user  */
	public var userId: String? = nil
	/**  The Identifier of the purchasing household  */
	public var householdId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(productId: String) {
		self.dict["productId"] = productId
	}
	
	public func setMultiRequestToken(currentUses: String) {
		self.dict["currentUses"] = currentUses
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(currentDate: String) {
		self.dict["currentDate"] = currentDate
	}
	
	public func setMultiRequestToken(lastViewDate: String) {
		self.dict["lastViewDate"] = lastViewDate
	}
	
	public func setMultiRequestToken(purchaseDate: String) {
		self.dict["purchaseDate"] = purchaseDate
	}
	
	public func setMultiRequestToken(paymentMethod: String) {
		self.dict["paymentMethod"] = paymentMethod
	}
	
	public func setMultiRequestToken(deviceUdid: String) {
		self.dict["deviceUdid"] = deviceUdid
	}
	
	public func setMultiRequestToken(deviceName: String) {
		self.dict["deviceName"] = deviceName
	}
	
	public func setMultiRequestToken(isCancelationWindowEnabled: String) {
		self.dict["isCancelationWindowEnabled"] = isCancelationWindowEnabled
	}
	
	public func setMultiRequestToken(maxUses: String) {
		self.dict["maxUses"] = maxUses
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["productId"] != nil {
			productId = dict["productId"] as? String
		}
		if dict["currentUses"] != nil {
			currentUses = dict["currentUses"] as? Int
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["currentDate"] != nil {
			currentDate = Int64("\(dict["currentDate"]!)")
		}
		if dict["lastViewDate"] != nil {
			lastViewDate = Int64("\(dict["lastViewDate"]!)")
		}
		if dict["purchaseDate"] != nil {
			purchaseDate = Int64("\(dict["purchaseDate"]!)")
		}
		if dict["paymentMethod"] != nil {
			paymentMethod = PaymentMethodType(rawValue: "\(dict["paymentMethod"]!)")
		}
		if dict["deviceUdid"] != nil {
			deviceUdid = dict["deviceUdid"] as? String
		}
		if dict["deviceName"] != nil {
			deviceName = dict["deviceName"] as? String
		}
		if dict["isCancelationWindowEnabled"] != nil {
			isCancelationWindowEnabled = dict["isCancelationWindowEnabled"] as? Bool
		}
		if dict["maxUses"] != nil {
			maxUses = dict["maxUses"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["householdId"] != nil {
			householdId = Int64("\(dict["householdId"]!)")
		}

	}

}

