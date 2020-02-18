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

public final class CategoryItemService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: CategoryItem.CategoryItemTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  categoryItem add  */
	public static func add(objectToAdd: CategoryItem) -> RequestBuilder<CategoryItem, CategoryItem.CategoryItemTokenizer, AddTokenizer> {
		let request: RequestBuilder<CategoryItem, CategoryItem.CategoryItemTokenizer, AddTokenizer> = RequestBuilder<CategoryItem, CategoryItem.CategoryItemTokenizer, AddTokenizer>(service: "categoryitem", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: CategoryItem.CategoryItemTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  categoryItem update  */
	public static func update(id: Int64, objectToUpdate: CategoryItem) -> RequestBuilder<CategoryItem, CategoryItem.CategoryItemTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CategoryItem, CategoryItem.CategoryItemTokenizer, UpdateTokenizer> = RequestBuilder<CategoryItem, CategoryItem.CategoryItemTokenizer, UpdateTokenizer>(service: "categoryitem", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Remove category  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "categoryitem", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CategoryItemFilter.CategoryItemFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: CategoryItemFilter?) -> RequestBuilder<CategoryItemListResponse, CategoryItemListResponse.CategoryItemListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: )
	}

	/**  Gets all categoryItem items  */
	public static func list(filter: CategoryItemFilter?, pager: FilterPager) -> RequestBuilder<CategoryItemListResponse, CategoryItemListResponse.CategoryItemListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CategoryItemListResponse, CategoryItemListResponse.CategoryItemListResponseTokenizer, ListTokenizer> = RequestBuilder<CategoryItemListResponse, CategoryItemListResponse.CategoryItemListResponseTokenizer, ListTokenizer>(service: "categoryitem", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
