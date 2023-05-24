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

open class Transaction: ObjectBase {

	public class TransactionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var paymentGatewayReferenceId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayReferenceId") 
			}
		}
		
		public var paymentGatewayResponseId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayResponseId") 
			}
		}
		
		public var state: BaseTokenizedObject {
			get {
				return self.append("state") 
			}
		}
		
		public var failReasonCode: BaseTokenizedObject {
			get {
				return self.append("failReasonCode") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
	}

	/**  Kaltura unique ID representing the transaction  */
	public var id: String? = nil
	/**  Transaction reference ID received from the payment gateway.               Value
	  is available only if the payment gateway provides this information.  */
	public var paymentGatewayReferenceId: String? = nil
	/**  Response ID received from by the payment gateway.               Value is
	  available only if the payment gateway provides this information.  */
	public var paymentGatewayResponseId: String? = nil
	/**  Transaction state: OK/Pending/Failed  */
	public var state: String? = nil
	/**  Adapter failure reason code              Insufficient funds = 20, Invalid
	  account = 21, User unknown = 22, Reason unknown = 23, Unknown payment gateway
	  response = 24,              No response from payment gateway = 25, Exceeded
	  retry limit = 26, Illegal client request = 27, Expired = 28  */
	public var failReasonCode: Int? = nil
	/**  Entitlement creation date  */
	public var createdAt: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(paymentGatewayReferenceId: String) {
		self.dict["paymentGatewayReferenceId"] = paymentGatewayReferenceId
	}
	
	public func setMultiRequestToken(paymentGatewayResponseId: String) {
		self.dict["paymentGatewayResponseId"] = paymentGatewayResponseId
	}
	
	public func setMultiRequestToken(state: String) {
		self.dict["state"] = state
	}
	
	public func setMultiRequestToken(failReasonCode: String) {
		self.dict["failReasonCode"] = failReasonCode
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["paymentGatewayReferenceId"] != nil {
			paymentGatewayReferenceId = dict["paymentGatewayReferenceId"] as? String
		}
		if dict["paymentGatewayResponseId"] != nil {
			paymentGatewayResponseId = dict["paymentGatewayResponseId"] as? String
		}
		if dict["state"] != nil {
			state = dict["state"] as? String
		}
		if dict["failReasonCode"] != nil {
			failReasonCode = dict["failReasonCode"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(paymentGatewayReferenceId != nil) {
			dict["paymentGatewayReferenceId"] = paymentGatewayReferenceId!
		}
		if(paymentGatewayResponseId != nil) {
			dict["paymentGatewayResponseId"] = paymentGatewayResponseId!
		}
		if(state != nil) {
			dict["state"] = state!
		}
		if(failReasonCode != nil) {
			dict["failReasonCode"] = failReasonCode!
		}
		if(createdAt != nil) {
			dict["createdAt"] = createdAt!
		}
		return dict
	}
}

