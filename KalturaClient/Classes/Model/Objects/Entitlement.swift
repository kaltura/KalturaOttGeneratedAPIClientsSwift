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

/**  Entitlement  */
open class Entitlement: ObjectBase {

	/**  Purchase identifier (for subscriptions and collections only)  */
	public var id: Int? = nil
	/**  Entitlement identifier  */
	public var entitlementId: String? = nil
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


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["entitlementId"] != nil {
			entitlementId = dict["entitlementId"] as? String
		}
		if dict["currentUses"] != nil {
			currentUses = dict["currentUses"] as? Int
		}
		if dict["endDate"] != nil {
			endDate = Int64((dict["endDate"] as? String)!)
		}
		if dict["currentDate"] != nil {
			currentDate = Int64((dict["currentDate"] as? String)!)
		}
		if dict["lastViewDate"] != nil {
			lastViewDate = Int64((dict["lastViewDate"] as? String)!)
		}
		if dict["purchaseDate"] != nil {
			purchaseDate = Int64((dict["purchaseDate"] as? String)!)
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
			householdId = Int64((dict["householdId"] as? String)!)
		}

	}

}

