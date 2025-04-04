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

public final class SearchPriorityGroupService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func searchPriorityGroup<T: SearchPriorityGroup.SearchPriorityGroupTokenizer>() -> T {
			return T(self.append("searchPriorityGroup"))
		}
	}

	/**  Add a new priority group.  */
	public static func add(searchPriorityGroup: SearchPriorityGroup) -> RequestBuilder<SearchPriorityGroup, SearchPriorityGroup.SearchPriorityGroupTokenizer, AddTokenizer> {
		let request: RequestBuilder<SearchPriorityGroup, SearchPriorityGroup.SearchPriorityGroupTokenizer, AddTokenizer> = RequestBuilder<SearchPriorityGroup, SearchPriorityGroup.SearchPriorityGroupTokenizer, AddTokenizer>(service: "searchprioritygroup", action: "add")
			.setParam(key: "searchPriorityGroup", value: searchPriorityGroup)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete the existing priority group by its identifier.  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "searchprioritygroup", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SearchPriorityGroupFilter.SearchPriorityGroupFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: SearchPriorityGroupFilter) -> RequestBuilder<SearchPriorityGroupListResponse, SearchPriorityGroupListResponse.SearchPriorityGroupListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Gets list of search priority groups which meet the filter criteria.  */
	public static func list(filter: SearchPriorityGroupFilter, pager: FilterPager?) -> RequestBuilder<SearchPriorityGroupListResponse, SearchPriorityGroupListResponse.SearchPriorityGroupListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SearchPriorityGroupListResponse, SearchPriorityGroupListResponse.SearchPriorityGroupListResponseTokenizer, ListTokenizer> = RequestBuilder<SearchPriorityGroupListResponse, SearchPriorityGroupListResponse.SearchPriorityGroupListResponseTokenizer, ListTokenizer>(service: "searchprioritygroup", action: "list")
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
		
		public func searchPriorityGroup<T: SearchPriorityGroup.SearchPriorityGroupTokenizer>() -> T {
			return T(self.append("searchPriorityGroup"))
		}
	}

	/**  Update an existing priority group.  */
	public static func update(id: Int64, searchPriorityGroup: SearchPriorityGroup) -> RequestBuilder<SearchPriorityGroup, SearchPriorityGroup.SearchPriorityGroupTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<SearchPriorityGroup, SearchPriorityGroup.SearchPriorityGroupTokenizer, UpdateTokenizer> = RequestBuilder<SearchPriorityGroup, SearchPriorityGroup.SearchPriorityGroupTokenizer, UpdateTokenizer>(service: "searchprioritygroup", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "searchPriorityGroup", value: searchPriorityGroup)

		return request
	}
}
