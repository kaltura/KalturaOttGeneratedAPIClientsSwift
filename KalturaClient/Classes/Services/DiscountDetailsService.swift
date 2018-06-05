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
// Copyright (C) 2006-2018  Kaltura Inc.
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

public final class DiscountDetailsService{

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DiscountDetailsFilter.DiscountDetailsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<DiscountDetailsListResponse, DiscountDetailsListResponse.DiscountDetailsListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns the list of available discounts details, can be filtered by discount
	  codes  */
	public static func list(filter: DiscountDetailsFilter?) -> RequestBuilder<DiscountDetailsListResponse, DiscountDetailsListResponse.DiscountDetailsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DiscountDetailsListResponse, DiscountDetailsListResponse.DiscountDetailsListResponseTokenizer, ListTokenizer> = RequestBuilder<DiscountDetailsListResponse, DiscountDetailsListResponse.DiscountDetailsListResponseTokenizer, ListTokenizer>(service: "discountdetails", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}