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

public final class ProductPriceService{

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ProductPriceFilter.ProductPriceFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Returns a price and a purchase status for each subscription or/and media file,
	  for a given user (if passed) and with the consideration of a coupon code (if
	  passed).  */
	public static func list(filter: ProductPriceFilter) -> RequestBuilder<ProductPriceListResponse, ProductPriceListResponse.ProductPriceListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ProductPriceListResponse, ProductPriceListResponse.ProductPriceListResponseTokenizer, ListTokenizer> = RequestBuilder<ProductPriceListResponse, ProductPriceListResponse.ProductPriceListResponseTokenizer, ListTokenizer>(service: "productprice", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
