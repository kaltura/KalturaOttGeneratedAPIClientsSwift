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

public final class CategoryTreeService{

	public class DuplicateTokenizer: ClientTokenizer  {
		
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
	}

	/**  Duplicate category Item  */
	public static func duplicate(categoryItemId: Int64, name: String) -> RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, DuplicateTokenizer> {
		let request: RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, DuplicateTokenizer> = RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, DuplicateTokenizer>(service: "categorytree", action: "duplicate")
			.setParam(key: "categoryItemId", value: categoryItemId)
			.setParam(key: "name", value: name)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var categoryItemId: BaseTokenizedObject {
			get {
				return self.append("categoryItemId") 
			}
		}
		
		public var filter: BaseTokenizedObject {
			get {
				return self.append("filter") 
			}
		}
	}

	public static func get(categoryItemId: Int64) -> RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetTokenizer> {
		return get(categoryItemId: categoryItemId, filter: false)
	}

	/**  Retrive category tree.  */
	public static func get(categoryItemId: Int64, filter: Bool?) -> RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetTokenizer> {
		let request: RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetTokenizer> = RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetTokenizer>(service: "categorytree", action: "get")
			.setParam(key: "categoryItemId", value: categoryItemId)
			.setParam(key: "filter", value: filter)

		return request
	}

	public class GetByVersionTokenizer: ClientTokenizer  {
		
		public var versionId: BaseTokenizedObject {
			get {
				return self.append("versionId") 
			}
		}
	}

	public static func getByVersion() -> RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetByVersionTokenizer> {
		return getByVersion(versionId: nil)
	}

	/**  Retrieve default category tree of deviceFamilyId by KS or specific one if
	  versionId is set.  */
	public static func getByVersion(versionId: Int64?) -> RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetByVersionTokenizer> {
		let request: RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetByVersionTokenizer> = RequestBuilder<CategoryTree, CategoryTree.CategoryTreeTokenizer, GetByVersionTokenizer>(service: "categorytree", action: "getByVersion")
			.setParam(key: "versionId", value: versionId)

		return request
	}
}
