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

open class PaymentMethodProfile: ObjectBase {

	public class PaymentMethodProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var allowMultiInstance: BaseTokenizedObject {
			get {
				return self.append("allowMultiInstance") 
			}
		}
	}

	/**  Payment method identifier (internal)  */
	public var id: Int? = nil
	/**  Payment gateway identifier (internal)  */
	public var paymentGatewayId: Int? = nil
	/**  Payment method name  */
	public var name: String? = nil
	/**  Indicates whether the payment method allow multiple instances  */
	public var allowMultiInstance: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(paymentGatewayId: String) {
		self.dict["paymentGatewayId"] = paymentGatewayId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(allowMultiInstance: String) {
		self.dict["allowMultiInstance"] = allowMultiInstance
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["paymentGatewayId"] != nil {
			paymentGatewayId = dict["paymentGatewayId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["allowMultiInstance"] != nil {
			allowMultiInstance = dict["allowMultiInstance"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(paymentGatewayId != nil) {
			dict["paymentGatewayId"] = paymentGatewayId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(allowMultiInstance != nil) {
			dict["allowMultiInstance"] = allowMultiInstance!
		}
		return dict
	}
}

