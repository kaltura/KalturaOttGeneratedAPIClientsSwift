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

public final class HouseholdCouponService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: HouseholdCoupon.HouseholdCouponTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  householdCoupon add  */
	public static func add(objectToAdd: HouseholdCoupon) -> RequestBuilder<HouseholdCoupon, HouseholdCoupon.HouseholdCouponTokenizer, AddTokenizer> {
		let request: RequestBuilder<HouseholdCoupon, HouseholdCoupon.HouseholdCouponTokenizer, AddTokenizer> = RequestBuilder<HouseholdCoupon, HouseholdCoupon.HouseholdCouponTokenizer, AddTokenizer>(service: "householdcoupon", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Remove coupon from household  */
	public static func delete(id: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "householdcoupon", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: HouseholdCouponFilter.HouseholdCouponFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<HouseholdCouponListResponse, HouseholdCouponListResponse.HouseholdCouponListResponseTokenizer, ListTokenizer> {
		return list(filter: )
	}

	/**  Gets all HouseholdCoupon items for a household  */
	public static func list(filter: HouseholdCouponFilter?) -> RequestBuilder<HouseholdCouponListResponse, HouseholdCouponListResponse.HouseholdCouponListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdCouponListResponse, HouseholdCouponListResponse.HouseholdCouponListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdCouponListResponse, HouseholdCouponListResponse.HouseholdCouponListResponseTokenizer, ListTokenizer>(service: "householdcoupon", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
