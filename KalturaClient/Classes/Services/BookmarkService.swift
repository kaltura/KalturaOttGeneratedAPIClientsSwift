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

public final class BookmarkService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func bookmark<T: Bookmark.BookmarkTokenizer>() -> T {
			return T(self.append("bookmark"))
		}
	}

	/**  Report player position and action for the user on the watched asset. Player
	  position is used to later allow resume watching.  */
	public static func add(bookmark: Bookmark) -> RequestBuilder<Bool, BaseTokenizedObject, AddTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, AddTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, AddTokenizer>(service: "bookmark", action: "add")
			.setParam(key: "bookmark", value: bookmark)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: BookmarkFilter.BookmarkFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Returns player position record/s for the requested asset and the requesting
	  user.               If default user makes the request – player position
	  records are provided for all of the users in the household.              If
	  non-default user makes the request - player position records are provided for
	  the requesting user and the default user of the household.  */
	public static func list(filter: BookmarkFilter) -> RequestBuilder<BookmarkListResponse, BookmarkListResponse.BookmarkListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BookmarkListResponse, BookmarkListResponse.BookmarkListResponseTokenizer, ListTokenizer> = RequestBuilder<BookmarkListResponse, BookmarkListResponse.BookmarkListResponseTokenizer, ListTokenizer>(service: "bookmark", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
