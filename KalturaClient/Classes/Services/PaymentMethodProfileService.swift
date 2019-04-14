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
// Copyright (C) 2006-2019  Kaltura Inc.
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

public final class PaymentMethodProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func paymentMethod<T: PaymentMethodProfile.PaymentMethodProfileTokenizer>() -> T {
			return T(self.append("paymentMethod"))
		}
	}

	/**  TBD  */
	public static func add(paymentMethod: PaymentMethodProfile) -> RequestBuilder<PaymentMethodProfile, PaymentMethodProfile.PaymentMethodProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<PaymentMethodProfile, PaymentMethodProfile.PaymentMethodProfileTokenizer, AddTokenizer> = RequestBuilder<PaymentMethodProfile, PaymentMethodProfile.PaymentMethodProfileTokenizer, AddTokenizer>(service: "paymentmethodprofile", action: "add")
			.setParam(key: "paymentMethod", value: paymentMethod)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var paymentMethodId: BaseTokenizedObject {
			get {
				return self.append("paymentMethodId") 
			}
		}
	}

	/**  Delete payment method profile  */
	public static func delete(paymentMethodId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "paymentmethodprofile", action: "delete")
			.setParam(key: "paymentMethodId", value: paymentMethodId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PaymentMethodProfileFilter.PaymentMethodProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  TBD  */
	public static func list(filter: PaymentMethodProfileFilter) -> RequestBuilder<PaymentMethodProfileListResponse, PaymentMethodProfileListResponse.PaymentMethodProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PaymentMethodProfileListResponse, PaymentMethodProfileListResponse.PaymentMethodProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<PaymentMethodProfileListResponse, PaymentMethodProfileListResponse.PaymentMethodProfileListResponseTokenizer, ListTokenizer>(service: "paymentmethodprofile", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var paymentMethodId: BaseTokenizedObject {
			get {
				return self.append("paymentMethodId") 
			}
		}
		
		public func paymentMethod<T: PaymentMethodProfile.PaymentMethodProfileTokenizer>() -> T {
			return T(self.append("paymentMethod"))
		}
	}

	/**  Update payment method  */
	public static func update(paymentMethodId: Int, paymentMethod: PaymentMethodProfile) -> RequestBuilder<PaymentMethodProfile, PaymentMethodProfile.PaymentMethodProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PaymentMethodProfile, PaymentMethodProfile.PaymentMethodProfileTokenizer, UpdateTokenizer> = RequestBuilder<PaymentMethodProfile, PaymentMethodProfile.PaymentMethodProfileTokenizer, UpdateTokenizer>(service: "paymentmethodprofile", action: "update")
			.setParam(key: "paymentMethodId", value: paymentMethodId)
			.setParam(key: "paymentMethod", value: paymentMethod)

		return request
	}
}
