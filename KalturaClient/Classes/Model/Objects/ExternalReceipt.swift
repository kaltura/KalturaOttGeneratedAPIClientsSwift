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

open class ExternalReceipt: PurchaseBase {

	public class ExternalReceiptTokenizer: PurchaseBase.PurchaseBaseTokenizer {
		
		public var receiptId: BaseTokenizedObject {
			get {
				return self.append("receiptId") 
			}
		}
		
		public var paymentGatewayName: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayName") 
			}
		}
	}

	/**  A unique identifier that was provided by the In-App billing service to validate
	  the purchase  */
	public var receiptId: String? = nil
	/**  The payment gateway name for the In-App billing service to be used. Possible
	  values: Google/Apple  */
	public var paymentGatewayName: String? = nil


	public func setMultiRequestToken(receiptId: String) {
		self.dict["receiptId"] = receiptId
	}
	
	public func setMultiRequestToken(paymentGatewayName: String) {
		self.dict["paymentGatewayName"] = paymentGatewayName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["receiptId"] != nil {
			receiptId = dict["receiptId"] as? String
		}
		if dict["paymentGatewayName"] != nil {
			paymentGatewayName = dict["paymentGatewayName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(receiptId != nil) {
			dict["receiptId"] = receiptId!
		}
		if(paymentGatewayName != nil) {
			dict["paymentGatewayName"] = paymentGatewayName!
		}
		return dict
	}
}

