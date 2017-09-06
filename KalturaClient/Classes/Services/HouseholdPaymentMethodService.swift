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

public final class HouseholdPaymentMethodService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func householdPaymentMethod<T: HouseholdPaymentMethod.HouseholdPaymentMethodTokenizer>() -> T {
			return T(self.append("householdPaymentMethod"))
		}
	}

	/**  Add a new payment method for household  */
	public static func add(householdPaymentMethod: HouseholdPaymentMethod) -> RequestBuilder<HouseholdPaymentMethod, HouseholdPaymentMethod.HouseholdPaymentMethodTokenizer, AddTokenizer> {
		let request: RequestBuilder<HouseholdPaymentMethod, HouseholdPaymentMethod.HouseholdPaymentMethodTokenizer, AddTokenizer> = RequestBuilder<HouseholdPaymentMethod, HouseholdPaymentMethod.HouseholdPaymentMethodTokenizer, AddTokenizer>(service: "householdpaymentmethod", action: "add")
			.setBody(key: "householdPaymentMethod", value: householdPaymentMethod)

		return request
	}

	public class ForceRemoveTokenizer: ClientTokenizer  {
		
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
	}

	/**  Force remove of a payment method of the household.  */
	public static func forceRemove(paymentGatewayId: Int, paymentMethodId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, ForceRemoveTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ForceRemoveTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ForceRemoveTokenizer>(service: "householdpaymentmethod", action: "forceRemove")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)
			.setBody(key: "paymentMethodId", value: paymentMethodId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Get a list of all payment methods of the household.  */
	public static func list() -> RequestBuilder<HouseholdPaymentMethodListResponse, HouseholdPaymentMethodListResponse.HouseholdPaymentMethodListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdPaymentMethodListResponse, HouseholdPaymentMethodListResponse.HouseholdPaymentMethodListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdPaymentMethodListResponse, HouseholdPaymentMethodListResponse.HouseholdPaymentMethodListResponseTokenizer, ListTokenizer>(service: "householdpaymentmethod", action: "list")

		return request
	}

	public class RemoveTokenizer: ClientTokenizer  {
		
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
	}

	/**  Removes a payment method of the household.  */
	public static func remove(paymentGatewayId: Int, paymentMethodId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, RemoveTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, RemoveTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, RemoveTokenizer>(service: "householdpaymentmethod", action: "remove")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)
			.setBody(key: "paymentMethodId", value: paymentMethodId)

		return request
	}

	public class SetAsDefaultTokenizer: ClientTokenizer  {
		
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
	}

	/**  Set a payment method as default for the household.  */
	public static func setAsDefault(paymentGatewayId: Int, paymentMethodId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, SetAsDefaultTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SetAsDefaultTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SetAsDefaultTokenizer>(service: "householdpaymentmethod", action: "setAsDefault")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)
			.setBody(key: "paymentMethodId", value: paymentMethodId)

		return request
	}
}
