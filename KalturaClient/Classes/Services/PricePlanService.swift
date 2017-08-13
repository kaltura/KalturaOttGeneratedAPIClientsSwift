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

public final class PricePlanService{

	public static func list() -> RequestBuilder<PricePlanListResponse> {
		return list(filter: nil)
	}

	/**  Returns a list of price plans by IDs  */
	public static func list(filter: PricePlanFilter?) -> RequestBuilder<PricePlanListResponse> {
		let request: RequestBuilder<PricePlanListResponse> = RequestBuilder<PricePlanListResponse>(service: "priceplan", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  Updates a price plan  */
	public static func update(id: Int64, pricePlan: PricePlan) -> RequestBuilder<PricePlan> {
		let request: RequestBuilder<PricePlan> = RequestBuilder<PricePlan>(service: "priceplan", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "pricePlan", value: pricePlan)

		return request
	}
}
