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

public final class HouseholdPaymentGatewayService{

	/**  Disable payment-gateway on the household  */
	public static func disable(paymentGatewayId: Int) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "householdpaymentgateway", action: "disable")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)

		return request
	}

	/**  Enable a payment-gateway provider for the household.  */
	public static func enable(paymentGatewayId: Int) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "householdpaymentgateway", action: "enable")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)

		return request
	}

	/**  Get a household’s billing account identifier (charge ID) for a given payment
	  gateway  */
	public static func getChargeID(paymentGatewayExternalId: String) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "householdpaymentgateway", action: "getChargeID")
			.setBody(key: "paymentGatewayExternalId", value: paymentGatewayExternalId)

		return request
	}

	/**  Gets the Payment Gateway Configuration for the payment gateway identifier given  */
	public static func invoke(paymentGatewayId: Int, intent: String, extraParameters: Array<KeyValue>) -> RequestBuilder<PaymentGatewayConfiguration> {
		let request: RequestBuilder<PaymentGatewayConfiguration> = RequestBuilder<PaymentGatewayConfiguration>(service: "householdpaymentgateway", action: "invoke")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)
			.setBody(key: "intent", value: intent)
			.setBody(key: "extraParameters", value: extraParameters)

		return request
	}

	/**  Get a list of all configured Payment Gateways providers available for the
	  account. For each payment is provided with the household associated payment
	  methods.  */
	public static func list() -> RequestBuilder<HouseholdPaymentGatewayListResponse> {
		let request: RequestBuilder<HouseholdPaymentGatewayListResponse> = RequestBuilder<HouseholdPaymentGatewayListResponse>(service: "householdpaymentgateway", action: "list")

		return request
	}

	/**  Set user billing account identifier (charge ID), for a specific household and a
	  specific payment gateway  */
	public static func setChargeID(paymentGatewayExternalId: String, chargeId: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "householdpaymentgateway", action: "setChargeID")
			.setBody(key: "paymentGatewayExternalId", value: paymentGatewayExternalId)
			.setBody(key: "chargeId", value: chargeId)

		return request
	}
}
