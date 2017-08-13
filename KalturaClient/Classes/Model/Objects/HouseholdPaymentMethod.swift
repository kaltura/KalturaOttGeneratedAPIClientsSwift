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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class HouseholdPaymentMethod: ObjectBase {

	/**  Household payment method identifier (internal)  */
	public var id: Int? = nil
	/**  External identifier for the household payment method  */
	public var externalId: String? = nil
	/**  Payment-gateway identifier  */
	public var paymentGatewayId: Int? = nil
	/**  Description of the payment method details  */
	public var details: String? = nil
	/**  indicates whether the payment method is set as default for the household  */
	public var isDefault: Bool? = nil
	/**  Payment method profile identifier  */
	public var paymentMethodProfileId: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["paymentGatewayId"] != nil {
			paymentGatewayId = dict["paymentGatewayId"] as? Int
		}
		if dict["details"] != nil {
			details = dict["details"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["paymentMethodProfileId"] != nil {
			paymentMethodProfileId = dict["paymentMethodProfileId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(paymentGatewayId != nil) {
			dict["paymentGatewayId"] = paymentGatewayId!
		}
		if(details != nil) {
			dict["details"] = details!
		}
		if(paymentMethodProfileId != nil) {
			dict["paymentMethodProfileId"] = paymentMethodProfileId!
		}
		return dict
	}
}

