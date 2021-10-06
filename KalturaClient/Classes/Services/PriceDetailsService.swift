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

public final class PriceDetailsService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func priceDetails<T: PriceDetails.PriceDetailsTokenizer>() -> T {
			return T(self.append("priceDetails"))
		}
	}

	/**  Internal API !!! Insert new PriceDetails for partner  */
	public static func add(priceDetails: PriceDetails) -> RequestBuilder<PriceDetails, PriceDetails.PriceDetailsTokenizer, AddTokenizer> {
		let request: RequestBuilder<PriceDetails, PriceDetails.PriceDetailsTokenizer, AddTokenizer> = RequestBuilder<PriceDetails, PriceDetails.PriceDetailsTokenizer, AddTokenizer>(service: "pricedetails", action: "add")
			.setParam(key: "priceDetails", value: priceDetails)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Internal API !!! Delete PriceDetails  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "pricedetails", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PriceDetailsFilter.PriceDetailsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<PriceDetailsListResponse, PriceDetailsListResponse.PriceDetailsListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns the list of available prices, can be filtered by price IDs  */
	public static func list(filter: PriceDetailsFilter?) -> RequestBuilder<PriceDetailsListResponse, PriceDetailsListResponse.PriceDetailsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PriceDetailsListResponse, PriceDetailsListResponse.PriceDetailsListResponseTokenizer, ListTokenizer> = RequestBuilder<PriceDetailsListResponse, PriceDetailsListResponse.PriceDetailsListResponseTokenizer, ListTokenizer>(service: "pricedetails", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func priceDetails<T: PriceDetails.PriceDetailsTokenizer>() -> T {
			return T(self.append("priceDetails"))
		}
	}

	/**  update existing PriceDetails  */
	public static func update(id: Int64, priceDetails: PriceDetails) -> RequestBuilder<PriceDetails, PriceDetails.PriceDetailsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PriceDetails, PriceDetails.PriceDetailsTokenizer, UpdateTokenizer> = RequestBuilder<PriceDetails, PriceDetails.PriceDetailsTokenizer, UpdateTokenizer>(service: "pricedetails", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "priceDetails", value: priceDetails)

		return request
	}
}
