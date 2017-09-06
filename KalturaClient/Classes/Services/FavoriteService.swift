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

public final class FavoriteService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func favorite<T: Favorite.FavoriteTokenizer>() -> T {
			return T(self.append("favorite"))
		}
	}

	/**  Add media to user&amp;#39;s favorite list  */
	public static func add(favorite: Favorite) -> RequestBuilder<Favorite, Favorite.FavoriteTokenizer, AddTokenizer> {
		let request: RequestBuilder<Favorite, Favorite.FavoriteTokenizer, AddTokenizer> = RequestBuilder<Favorite, Favorite.FavoriteTokenizer, AddTokenizer>(service: "favorite", action: "add")
			.setBody(key: "favorite", value: favorite)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Remove media from user&amp;#39;s favorite list  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "favorite", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: FavoriteFilter.FavoriteFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<FavoriteListResponse, FavoriteListResponse.FavoriteListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Retrieving users&amp;#39; favorites  */
	public static func list(filter: FavoriteFilter?) -> RequestBuilder<FavoriteListResponse, FavoriteListResponse.FavoriteListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<FavoriteListResponse, FavoriteListResponse.FavoriteListResponseTokenizer, ListTokenizer> = RequestBuilder<FavoriteListResponse, FavoriteListResponse.FavoriteListResponseTokenizer, ListTokenizer>(service: "favorite", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}
}
