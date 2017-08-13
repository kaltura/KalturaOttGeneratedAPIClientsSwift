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

public final class SearchHistoryService{

	public static func clean() -> RequestBuilder<Bool> {
		return clean(filter: nil)
	}

	/**  Clean the user’s search history  */
	public static func clean(filter: SearchHistoryFilter?) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "searchhistory", action: "clean")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  Delete a specific search history.              Possible error code: 2032 -
	  ItemNotFound  */
	public static func delete(id: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "searchhistory", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<SearchHistoryListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: SearchHistoryFilter?) -> RequestBuilder<SearchHistoryListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Get user&amp;#39;s last search requests  */
	public static func list(filter: SearchHistoryFilter?, pager: FilterPager?) -> RequestBuilder<SearchHistoryListResponse> {
		let request: RequestBuilder<SearchHistoryListResponse> = RequestBuilder<SearchHistoryListResponse>(service: "searchhistory", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
