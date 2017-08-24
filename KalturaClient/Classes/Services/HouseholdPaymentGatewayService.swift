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

public final class HouseholdPaymentGatewayService{

	public class DisableTokenizer: ClientTokenizer  {
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
	}

	/**  Disable payment-gateway on the household  */
	public static func disable(paymentGatewayId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DisableTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DisableTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DisableTokenizer>(service: "householdpaymentgateway", action: "disable")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)

		return request
	}

	public class EnableTokenizer: ClientTokenizer  {
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
	}

	/**  Enable a payment-gateway provider for the household.  */
	public static func enable(paymentGatewayId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, EnableTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, EnableTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, EnableTokenizer>(service: "householdpaymentgateway", action: "enable")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)

		return request
	}

	public class GetChargeIDTokenizer: ClientTokenizer  {
		
		public var paymentGatewayExternalId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayExternalId") 
			}
		}
	}

	/**  Get a household’s billing account identifier (charge ID) for a given payment
	  gateway  */
	public static func getChargeID(paymentGatewayExternalId: String) -> RequestBuilder<String, BaseTokenizedObject, GetChargeIDTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetChargeIDTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetChargeIDTokenizer>(service: "householdpaymentgateway", action: "getChargeID")
			.setBody(key: "paymentGatewayExternalId", value: paymentGatewayExternalId)

		return request
	}

	public class InvokeTokenizer: ClientTokenizer  {
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
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
	public static func invoke(paymentGatewayId: Int, intent: String, extraParameters: Array<KeyValue>) -> RequestBuilder<PaymentGatewayConfiguration, PaymentGatewayConfiguration.PaymentGatewayConfigurationTokenizer, InvokeTokenizer> {
		let request: RequestBuilder<PaymentGatewayConfiguration, PaymentGatewayConfiguration.PaymentGatewayConfigurationTokenizer, InvokeTokenizer> = RequestBuilder<PaymentGatewayConfiguration, PaymentGatewayConfiguration.PaymentGatewayConfigurationTokenizer, InvokeTokenizer>(service: "householdpaymentgateway", action: "invoke")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)
			.setBody(key: "intent", value: intent)
			.setBody(key: "extraParameters", value: extraParameters)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Get a list of all configured Payment Gateways providers available for the
	  account. For each payment is provided with the household associated payment
	  methods.  */
	public static func list() -> RequestBuilder<HouseholdPaymentGatewayListResponse, HouseholdPaymentGatewayListResponse.HouseholdPaymentGatewayListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdPaymentGatewayListResponse, HouseholdPaymentGatewayListResponse.HouseholdPaymentGatewayListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdPaymentGatewayListResponse, HouseholdPaymentGatewayListResponse.HouseholdPaymentGatewayListResponseTokenizer, ListTokenizer>(service: "householdpaymentgateway", action: "list")

		return request
	}

	public class SetChargeIDTokenizer: ClientTokenizer  {
		
		public var paymentGatewayExternalId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayExternalId") 
			}
		}
		
		public var chargeId: BaseTokenizedObject {
			get {
				return self.append("chargeId") 
			}
		}
	}

	/**  Set user billing account identifier (charge ID), for a specific household and a
	  specific payment gateway  */
	public static func setChargeID(paymentGatewayExternalId: String, chargeId: String) -> RequestBuilder<Bool, BaseTokenizedObject, SetChargeIDTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SetChargeIDTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SetChargeIDTokenizer>(service: "householdpaymentgateway", action: "setChargeID")
			.setBody(key: "paymentGatewayExternalId", value: paymentGatewayExternalId)
			.setBody(key: "chargeId", value: chargeId)

		return request
	}
}
