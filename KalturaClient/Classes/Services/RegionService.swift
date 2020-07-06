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

public final class RegionService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func region<T: Region.RegionTokenizer>() -> T {
			return T(self.append("region"))
		}
	}

	/**  Adds a new region for partner  */
	public static func add(region: Region) -> RequestBuilder<Region, Region.RegionTokenizer, AddTokenizer> {
		let request: RequestBuilder<Region, Region.RegionTokenizer, AddTokenizer> = RequestBuilder<Region, Region.RegionTokenizer, AddTokenizer>(service: "region", action: "add")
			.setParam(key: "region", value: region)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing region  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "region", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: BaseRegionFilter.BaseRegionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Returns all regions for the partner  */
	public static func list(filter: BaseRegionFilter) -> RequestBuilder<RegionListResponse, RegionListResponse.RegionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<RegionListResponse, RegionListResponse.RegionListResponseTokenizer, ListTokenizer> = RequestBuilder<RegionListResponse, RegionListResponse.RegionListResponseTokenizer, ListTokenizer>(service: "region", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func region<T: Region.RegionTokenizer>() -> T {
			return T(self.append("region"))
		}
	}

	/**  Update an existing region  */
	public static func update(id: Int, region: Region) -> RequestBuilder<Region, Region.RegionTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Region, Region.RegionTokenizer, UpdateTokenizer> = RequestBuilder<Region, Region.RegionTokenizer, UpdateTokenizer>(service: "region", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "region", value: region)

		return request
	}
}
