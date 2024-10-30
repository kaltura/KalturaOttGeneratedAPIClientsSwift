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

public final class CollectionService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func collection<T: Collection.CollectionTokenizer>() -> T {
			return T(self.append("collection"))
		}
	}

	/**  Insert new collection for partner  */
	public static func add(collection: Collection) -> RequestBuilder<Collection, Collection.CollectionTokenizer, AddTokenizer> {
		let request: RequestBuilder<Collection, Collection.CollectionTokenizer, AddTokenizer> = RequestBuilder<Collection, Collection.CollectionTokenizer, AddTokenizer>(service: "collection", action: "add")
			.setParam(key: "collection", value: collection)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete collection  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "collection", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CollectionFilter.CollectionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<CollectionListResponse, CollectionListResponse.CollectionListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: CollectionFilter?) -> RequestBuilder<CollectionListResponse, CollectionListResponse.CollectionListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Returns a list of collections requested by Collection IDs or file identifier or
	  coupon group identifier  */
	public static func list(filter: CollectionFilter?, pager: FilterPager?) -> RequestBuilder<CollectionListResponse, CollectionListResponse.CollectionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CollectionListResponse, CollectionListResponse.CollectionListResponseTokenizer, ListTokenizer> = RequestBuilder<CollectionListResponse, CollectionListResponse.CollectionListResponseTokenizer, ListTokenizer>(service: "collection", action: "list")
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
		
		public func collection<T: Collection.CollectionTokenizer>() -> T {
			return T(self.append("collection"))
		}
	}

	/**  Update Collection  */
	public static func update(id: Int64, collection: Collection) -> RequestBuilder<Collection, Collection.CollectionTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Collection, Collection.CollectionTokenizer, UpdateTokenizer> = RequestBuilder<Collection, Collection.CollectionTokenizer, UpdateTokenizer>(service: "collection", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "collection", value: collection)

		return request
	}
}
