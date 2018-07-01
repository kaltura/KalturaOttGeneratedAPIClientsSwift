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
// Copyright (C) 2006-2018  Kaltura Inc.
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

public final class PersonalListService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func personalList<T: PersonalList.PersonalListTokenizer>() -> T {
			return T(self.append("personalList"))
		}
	}

	/**  Add a user&amp;#39;s personal list item to follow.  */
	public static func add(personalList: PersonalList) -> RequestBuilder<PersonalList, PersonalList.PersonalListTokenizer, AddTokenizer> {
		let request: RequestBuilder<PersonalList, PersonalList.PersonalListTokenizer, AddTokenizer> = RequestBuilder<PersonalList, PersonalList.PersonalListTokenizer, AddTokenizer>(service: "personallist", action: "add")
			.setParam(key: "personalList", value: personalList)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var personalListId: BaseTokenizedObject {
			get {
				return self.append("personalListId") 
			}
		}
	}

	/**  Remove followed item from user&amp;#39;s personal list  */
	public static func delete(personalListId: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "personallist", action: "delete")
			.setParam(key: "personalListId", value: personalListId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PersonalListFilter.PersonalListFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<PersonalListListResponse, PersonalListListResponse.PersonalListListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: PersonalListFilter?) -> RequestBuilder<PersonalListListResponse, PersonalListListResponse.PersonalListListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List user&amp;#39;s tv personal item to follow.              Possible status
	  codes:  */
	public static func list(filter: PersonalListFilter?, pager: FilterPager?) -> RequestBuilder<PersonalListListResponse, PersonalListListResponse.PersonalListListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PersonalListListResponse, PersonalListListResponse.PersonalListListResponseTokenizer, ListTokenizer> = RequestBuilder<PersonalListListResponse, PersonalListListResponse.PersonalListListResponseTokenizer, ListTokenizer>(service: "personallist", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
