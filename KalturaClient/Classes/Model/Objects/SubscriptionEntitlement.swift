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

/**  KalturaSubscriptionEntitlement  */
open class SubscriptionEntitlement: Entitlement {

	public class SubscriptionEntitlementTokenizer: Entitlement.EntitlementTokenizer {
		
		public var nextRenewalDate: BaseTokenizedObject {
			get {
				return self.append("nextRenewalDate") 
			}
		}
		
		public var isRenewableForPurchase: BaseTokenizedObject {
			get {
				return self.append("isRenewableForPurchase") 
			}
		}
		
		public var isRenewable: BaseTokenizedObject {
			get {
				return self.append("isRenewable") 
			}
		}
		
		public var isInGracePeriod: BaseTokenizedObject {
			get {
				return self.append("isInGracePeriod") 
			}
		}
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
		
		public var paymentMethodId: BaseTokenizedObject {
			get {
				return self.append("paymentMethodId") 
			}
		}
		
		public var scheduledSubscriptionId: BaseTokenizedObject {
			get {
				return self.append("scheduledSubscriptionId") 
			}
		}
		
		public var unifiedPaymentId: BaseTokenizedObject {
			get {
				return self.append("unifiedPaymentId") 
			}
		}
		
		public var isSuspended: BaseTokenizedObject {
			get {
				return self.append("isSuspended") 
			}
		}
	}

	/**  The date of the next renewal (only for subscription)  */
	public var nextRenewalDate: Int64? = nil
	/**  Indicates whether the subscription is renewable in this purchase (only for
	  subscription)  */
	public var isRenewableForPurchase: Bool? = nil
	/**  Indicates whether a subscription is renewable (only for subscription)  */
	public var isRenewable: Bool? = nil
	/**  Indicates whether the user is currently in his grace period entitlement  */
	public var isInGracePeriod: Bool? = nil
	/**  Payment Gateway identifier  */
	public var paymentGatewayId: Int? = nil
	/**  Payment Method identifier  */
	public var paymentMethodId: Int? = nil
	/**  Scheduled Subscription Identifier  */
	public var scheduledSubscriptionId: Int64? = nil
	/**  Unified payment identifier  */
	public var unifiedPaymentId: Int64? = nil
	/**  Indicates if the subscription suspended  */
	public var isSuspended: Bool? = nil


	public func setMultiRequestToken(nextRenewalDate: String) {
		self.dict["nextRenewalDate"] = nextRenewalDate
	}
	
	public func setMultiRequestToken(isRenewableForPurchase: String) {
		self.dict["isRenewableForPurchase"] = isRenewableForPurchase
	}
	
	public func setMultiRequestToken(isRenewable: String) {
		self.dict["isRenewable"] = isRenewable
	}
	
	public func setMultiRequestToken(isInGracePeriod: String) {
		self.dict["isInGracePeriod"] = isInGracePeriod
	}
	
	public func setMultiRequestToken(paymentGatewayId: String) {
		self.dict["paymentGatewayId"] = paymentGatewayId
	}
	
	public func setMultiRequestToken(paymentMethodId: String) {
		self.dict["paymentMethodId"] = paymentMethodId
	}
	
	public func setMultiRequestToken(scheduledSubscriptionId: String) {
		self.dict["scheduledSubscriptionId"] = scheduledSubscriptionId
	}
	
	public func setMultiRequestToken(unifiedPaymentId: String) {
		self.dict["unifiedPaymentId"] = unifiedPaymentId
	}
	
	public func setMultiRequestToken(isSuspended: String) {
		self.dict["isSuspended"] = isSuspended
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["nextRenewalDate"] != nil {
			nextRenewalDate = Int64("\(dict["nextRenewalDate"]!)")
		}
		if dict["isRenewableForPurchase"] != nil {
			isRenewableForPurchase = dict["isRenewableForPurchase"] as? Bool
		}
		if dict["isRenewable"] != nil {
			isRenewable = dict["isRenewable"] as? Bool
		}
		if dict["isInGracePeriod"] != nil {
			isInGracePeriod = dict["isInGracePeriod"] as? Bool
		}
		if dict["paymentGatewayId"] != nil {
			paymentGatewayId = dict["paymentGatewayId"] as? Int
		}
		if dict["paymentMethodId"] != nil {
			paymentMethodId = dict["paymentMethodId"] as? Int
		}
		if dict["scheduledSubscriptionId"] != nil {
			scheduledSubscriptionId = Int64("\(dict["scheduledSubscriptionId"]!)")
		}
		if dict["unifiedPaymentId"] != nil {
			unifiedPaymentId = Int64("\(dict["unifiedPaymentId"]!)")
		}
		if dict["isSuspended"] != nil {
			isSuspended = dict["isSuspended"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(paymentGatewayId != nil) {
			dict["paymentGatewayId"] = paymentGatewayId!
		}
		if(paymentMethodId != nil) {
			dict["paymentMethodId"] = paymentMethodId!
		}
		return dict
	}
}

