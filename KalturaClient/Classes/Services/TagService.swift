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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class TagService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func tag<T: Tag.TagTokenizer>() -> T {
			return T(self.append("tag"))
		}
	}

	/**  Add a new tag  */
	public static func add(tag: Tag) -> RequestBuilder<Tag, Tag.TagTokenizer, AddTokenizer> {
		let request: RequestBuilder<Tag, Tag.TagTokenizer, AddTokenizer> = RequestBuilder<Tag, Tag.TagTokenizer, AddTokenizer>(service: "tag", action: "add")
			.setParam(key: "tag", value: tag)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing tag  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "tag", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: TagFilter.TagFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: TagFilter?) -> RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Get the list of tags for the partner  */
	public static func list(filter: TagFilter?, pager: FilterPager?) -> RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, ListTokenizer> = RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, ListTokenizer>(service: "tag", action: "list")
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
		
		public func tag<T: Tag.TagTokenizer>() -> T {
			return T(self.append("tag"))
		}
	}

	/**  Update an existing tag  */
	public static func update(id: Int64, tag: Tag) -> RequestBuilder<Tag, Tag.TagTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Tag, Tag.TagTokenizer, UpdateTokenizer> = RequestBuilder<Tag, Tag.TagTokenizer, UpdateTokenizer>(service: "tag", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "tag", value: tag)

		return request
	}
}
