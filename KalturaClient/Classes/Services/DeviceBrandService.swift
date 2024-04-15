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

public final class DeviceBrandService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func deviceBrand<T: DeviceBrand.DeviceBrandTokenizer>() -> T {
			return T(self.append("deviceBrand"))
		}
	}

	/**  Adds a new device brand which belongs to a specific group.  */
	public static func add(deviceBrand: DeviceBrand) -> RequestBuilder<DeviceBrand, DeviceBrand.DeviceBrandTokenizer, AddTokenizer> {
		let request: RequestBuilder<DeviceBrand, DeviceBrand.DeviceBrandTokenizer, AddTokenizer> = RequestBuilder<DeviceBrand, DeviceBrand.DeviceBrandTokenizer, AddTokenizer>(service: "devicebrand", action: "add")
			.setParam(key: "deviceBrand", value: deviceBrand)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DeviceBrandFilter.DeviceBrandFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<DeviceBrandListResponse, DeviceBrandListResponse.DeviceBrandListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DeviceBrandFilter?) -> RequestBuilder<DeviceBrandListResponse, DeviceBrandListResponse.DeviceBrandListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Return a list of the available device brands.  */
	public static func list(filter: DeviceBrandFilter?, pager: FilterPager?) -> RequestBuilder<DeviceBrandListResponse, DeviceBrandListResponse.DeviceBrandListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DeviceBrandListResponse, DeviceBrandListResponse.DeviceBrandListResponseTokenizer, ListTokenizer> = RequestBuilder<DeviceBrandListResponse, DeviceBrandListResponse.DeviceBrandListResponseTokenizer, ListTokenizer>(service: "devicebrand", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func deviceBrand<T: DeviceBrand.DeviceBrandTokenizer>() -> T {
			return T(self.append("deviceBrand"))
		}
	}

	/**  Updates an existing device brand which belongs to a specific group.  */
	public static func update(id: Int64, deviceBrand: DeviceBrand) -> RequestBuilder<DeviceBrand, DeviceBrand.DeviceBrandTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DeviceBrand, DeviceBrand.DeviceBrandTokenizer, UpdateTokenizer> = RequestBuilder<DeviceBrand, DeviceBrand.DeviceBrandTokenizer, UpdateTokenizer>(service: "devicebrand", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "deviceBrand", value: deviceBrand)

		return request
	}
}
