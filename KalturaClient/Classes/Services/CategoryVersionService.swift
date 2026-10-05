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

public final class CategoryVersionService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: CategoryVersion.CategoryVersionTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  categoryVersion add  */
	public static func add(objectToAdd: CategoryVersion) -> RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, AddTokenizer> {
		let request: RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, AddTokenizer> = RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, AddTokenizer>(service: "categoryversion", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class CreateTreeTokenizer: ClientTokenizer  {
		
		public var categoryItemId: BaseTokenizedObject {
			get {
				return self.append("categoryItemId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var comment: BaseTokenizedObject {
			get {
				return self.append("comment") 
			}
		}
	}

	/**  Acreate new tree for this categoryItem  */
	public static func createTree(categoryItemId: Int64, name: String, comment: String) -> RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, CreateTreeTokenizer> {
		let request: RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, CreateTreeTokenizer> = RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, CreateTreeTokenizer>(service: "categoryversion", action: "createTree")
			.setParam(key: "categoryItemId", value: categoryItemId)
			.setParam(key: "name", value: name)
			.setParam(key: "comment", value: comment)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Remove category version  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "categoryversion", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CategoryVersionFilter.CategoryVersionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: CategoryVersionFilter) -> RequestBuilder<CategoryVersionListResponse, CategoryVersionListResponse.CategoryVersionListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Gets all category versions  */
	public static func list(filter: CategoryVersionFilter, pager: FilterPager?) -> RequestBuilder<CategoryVersionListResponse, CategoryVersionListResponse.CategoryVersionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CategoryVersionListResponse, CategoryVersionListResponse.CategoryVersionListResponseTokenizer, ListTokenizer> = RequestBuilder<CategoryVersionListResponse, CategoryVersionListResponse.CategoryVersionListResponseTokenizer, ListTokenizer>(service: "categoryversion", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SetDefaultTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var force: BaseTokenizedObject {
			get {
				return self.append("force") 
			}
		}
	}

	public static func setDefault(id: Int64) -> NullRequestBuilder<SetDefaultTokenizer> {
		return setDefault(id: id, force: false)
	}

	/**  Set new default category version  */
	public static func setDefault(id: Int64, force: Bool?) -> NullRequestBuilder<SetDefaultTokenizer> {
		let request: NullRequestBuilder<SetDefaultTokenizer> = NullRequestBuilder<SetDefaultTokenizer>(service: "categoryversion", action: "setDefault")
			.setParam(key: "id", value: id)
			.setParam(key: "force", value: force)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: CategoryVersion.CategoryVersionTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  categoryVersion update  */
	public static func update(id: Int64, objectToUpdate: CategoryVersion) -> RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, UpdateTokenizer> = RequestBuilder<CategoryVersion, CategoryVersion.CategoryVersionTokenizer, UpdateTokenizer>(service: "categoryversion", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}
}
