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

/**  Billing Transaction  */
open class BillingTransaction: ObjectBase {

	/**  Reciept Code  */
	public var recieptCode: String? = nil
	/**  Purchased Item Name  */
	public var purchasedItemName: String? = nil
	/**  Purchased Item Code  */
	public var purchasedItemCode: String? = nil
	/**  Item Type  */
	public var itemType: BillingItemsType? = nil
	/**  Billing Action  */
	public var billingAction: BillingAction? = nil
	/**  price  */
	public var price: Price? = nil
	/**  Action Date  */
	public var actionDate: Int64? = nil
	/**  Start Date  */
	public var startDate: Int64? = nil
	/**  End Date  */
	public var endDate: Int64? = nil
	/**  Payment Method  */
	public var paymentMethod: PaymentMethodType? = nil
	/**  Payment Method Extra Details  */
	public var paymentMethodExtraDetails: String? = nil
	/**  Is Recurring  */
	public var isRecurring: Bool? = nil
	/**  Billing Provider Ref  */
	public var billingProviderRef: Int? = nil
	/**  Purchase ID  */
	public var purchaseId: Int? = nil
	/**  Remarks  */
	public var remarks: String? = nil
	/**  Billing Price Info  */
	public var billingPriceType: BillingPriceType? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["recieptCode"] != nil {
			recieptCode = dict["recieptCode"] as? String
		}
		if dict["purchasedItemName"] != nil {
			purchasedItemName = dict["purchasedItemName"] as? String
		}
		if dict["purchasedItemCode"] != nil {
			purchasedItemCode = dict["purchasedItemCode"] as? String
		}
		if dict["itemType"] != nil {
			itemType = BillingItemsType(rawValue: "\(dict["itemType"]!)")
		}
		if dict["billingAction"] != nil {
			billingAction = BillingAction(rawValue: "\(dict["billingAction"]!)")
		}
		if dict["price"] != nil {
		price = try JSONParser.parse(object: dict["price"] as! [String: Any])		}
		if dict["actionDate"] != nil {
			actionDate = dict["actionDate"] as? Int64
		}
		if dict["startDate"] != nil {
			startDate = dict["startDate"] as? Int64
		}
		if dict["endDate"] != nil {
			endDate = dict["endDate"] as? Int64
		}
		if dict["paymentMethod"] != nil {
			paymentMethod = PaymentMethodType(rawValue: "\(dict["paymentMethod"]!)")
		}
		if dict["paymentMethodExtraDetails"] != nil {
			paymentMethodExtraDetails = dict["paymentMethodExtraDetails"] as? String
		}
		if dict["isRecurring"] != nil {
			isRecurring = dict["isRecurring"] as? Bool
		}
		if dict["billingProviderRef"] != nil {
			billingProviderRef = dict["billingProviderRef"] as? Int
		}
		if dict["purchaseId"] != nil {
			purchaseId = dict["purchaseId"] as? Int
		}
		if dict["remarks"] != nil {
			remarks = dict["remarks"] as? String
		}
		if dict["billingPriceType"] != nil {
			billingPriceType = BillingPriceType(rawValue: "\(dict["billingPriceType"]!)")
		}

	}

}

