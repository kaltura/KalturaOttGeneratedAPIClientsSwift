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

public final class SubscriptionService{

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SubscriptionFilter.SubscriptionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<SubscriptionListResponse, SubscriptionListResponse.SubscriptionListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: SubscriptionFilter?) -> RequestBuilder<SubscriptionListResponse, SubscriptionListResponse.SubscriptionListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Returns a list of subscriptions requested by Subscription ID or file ID  */
	public static func list(filter: SubscriptionFilter?, pager: FilterPager?) -> RequestBuilder<SubscriptionListResponse, SubscriptionListResponse.SubscriptionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SubscriptionListResponse, SubscriptionListResponse.SubscriptionListResponseTokenizer, ListTokenizer> = RequestBuilder<SubscriptionListResponse, SubscriptionListResponse.SubscriptionListResponseTokenizer, ListTokenizer>(service: "subscription", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ValidateCouponTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var code: BaseTokenizedObject {
			get {
				return self.append("code") 
			}
		}
	}

	/**  Returns information about a coupon for subscription  */
	public static func validateCoupon(id: Int, code: String) -> RequestBuilder<Coupon, Coupon.CouponTokenizer, ValidateCouponTokenizer> {
		let request: RequestBuilder<Coupon, Coupon.CouponTokenizer, ValidateCouponTokenizer> = RequestBuilder<Coupon, Coupon.CouponTokenizer, ValidateCouponTokenizer>(service: "subscription", action: "validateCoupon")
			.setParam(key: "id", value: id)
			.setParam(key: "code", value: code)

		return request
	}
}
