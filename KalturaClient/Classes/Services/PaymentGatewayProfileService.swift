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

public final class PaymentGatewayProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func paymentGateway<T: PaymentGatewayProfile.PaymentGatewayProfileTokenizer>() -> T {
			return T(self.append("paymentGateway"))
		}
	}

	/**  Insert new payment gateway for partner  */
	public static func add(paymentGateway: PaymentGatewayProfile) -> RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, AddTokenizer> = RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, AddTokenizer>(service: "paymentgatewayprofile", action: "add")
			.setParam(key: "paymentGateway", value: paymentGateway)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
	}

	/**  Delete payment gateway by payment gateway id  */
	public static func delete(paymentGatewayId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "paymentgatewayprofile", action: "delete")
			.setParam(key: "paymentGatewayId", value: paymentGatewayId)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
	}

	/**  Generate payment gateway shared secret  */
	public static func generateSharedSecret(paymentGatewayId: Int) -> RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, GenerateSharedSecretTokenizer>(service: "paymentgatewayprofile", action: "generateSharedSecret")
			.setParam(key: "paymentGatewayId", value: paymentGatewayId)

		return request
	}

	public class GetConfigurationTokenizer: ClientTokenizer  {
		
		public var alias: BaseTokenizedObject {
			get {
				return self.append("alias") 
			}
		}
		
		public var intent: BaseTokenizedObject {
			get {
				return self.append("intent") 
			}
		}
		
		public var extraParameters: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("extraParameters"))
			} 
		}
	}

	/**  Gets the Payment Gateway Configuration for the payment gateway identifier given  */
	public static func getConfiguration(alias: String, intent: String, extraParameters: Array<KeyValue>) -> RequestBuilder<PaymentGatewayConfiguration, PaymentGatewayConfiguration.PaymentGatewayConfigurationTokenizer, GetConfigurationTokenizer> {
		let request: RequestBuilder<PaymentGatewayConfiguration, PaymentGatewayConfiguration.PaymentGatewayConfigurationTokenizer, GetConfigurationTokenizer> = RequestBuilder<PaymentGatewayConfiguration, PaymentGatewayConfiguration.PaymentGatewayConfigurationTokenizer, GetConfigurationTokenizer>(service: "paymentgatewayprofile", action: "getConfiguration")
			.setParam(key: "alias", value: alias)
			.setParam(key: "intent", value: intent)
			.setParam(key: "extraParameters", value: extraParameters)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all payment gateways for partner : id + name  */
	public static func list() -> RequestBuilder<PaymentGatewayProfileListResponse, PaymentGatewayProfileListResponse.PaymentGatewayProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PaymentGatewayProfileListResponse, PaymentGatewayProfileListResponse.PaymentGatewayProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<PaymentGatewayProfileListResponse, PaymentGatewayProfileListResponse.PaymentGatewayProfileListResponseTokenizer, ListTokenizer>(service: "paymentgatewayprofile", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
		
		public func paymentGateway<T: PaymentGatewayProfile.PaymentGatewayProfileTokenizer>() -> T {
			return T(self.append("paymentGateway"))
		}
	}

	/**  Update payment gateway details  */
	public static func update(paymentGatewayId: Int, paymentGateway: PaymentGatewayProfile) -> RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, UpdateTokenizer> = RequestBuilder<PaymentGatewayProfile, PaymentGatewayProfile.PaymentGatewayProfileTokenizer, UpdateTokenizer>(service: "paymentgatewayprofile", action: "update")
			.setParam(key: "paymentGatewayId", value: paymentGatewayId)
			.setParam(key: "paymentGateway", value: paymentGateway)

		return request
	}
}
