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

public final class AssetCommentService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var comment: AssetComment.AssetCommentTokenizer {
			get {
				return AssetComment.AssetCommentTokenizer(self.append("comment")) 
			}
		}
	}

	/**  Add asset comments by asset id  */
	public static func add(comment: AssetComment) -> RequestBuilder<AssetComment, AssetComment.AssetCommentTokenizer, AddTokenizer> {
		let request: RequestBuilder<AssetComment, AssetComment.AssetCommentTokenizer, AddTokenizer> = RequestBuilder<AssetComment, AssetComment.AssetCommentTokenizer, AddTokenizer>(service: "assetcomment", action: "add")
			.setBody(key: "comment", value: comment)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: AssetCommentFilter.AssetCommentFilterTokenizer {
			get {
				return AssetCommentFilter.AssetCommentFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list(filter: AssetCommentFilter) -> RequestBuilder<AssetCommentListResponse, AssetCommentListResponse.AssetCommentListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Returns asset comments by asset id  */
	public static func list(filter: AssetCommentFilter, pager: FilterPager?) -> RequestBuilder<AssetCommentListResponse, AssetCommentListResponse.AssetCommentListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AssetCommentListResponse, AssetCommentListResponse.AssetCommentListResponseTokenizer, ListTokenizer> = RequestBuilder<AssetCommentListResponse, AssetCommentListResponse.AssetCommentListResponseTokenizer, ListTokenizer>(service: "assetcomment", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
