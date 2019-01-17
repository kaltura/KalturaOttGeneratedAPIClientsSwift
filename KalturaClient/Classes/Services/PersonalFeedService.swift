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
// Copyright (C) 2006-2019  Kaltura Inc.
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

public final class PersonalFeedService{

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PersonalFeedFilter.PersonalFeedFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: PersonalFeedFilter) -> RequestBuilder<PersonalFeedListResponse, PersonalFeedListResponse.PersonalFeedListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List user&amp;#39;s feeds.              Possible status codes:  */
	public static func list(filter: PersonalFeedFilter, pager: FilterPager?) -> RequestBuilder<PersonalFeedListResponse, PersonalFeedListResponse.PersonalFeedListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PersonalFeedListResponse, PersonalFeedListResponse.PersonalFeedListResponseTokenizer, ListTokenizer> = RequestBuilder<PersonalFeedListResponse, PersonalFeedListResponse.PersonalFeedListResponseTokenizer, ListTokenizer>(service: "personalfeed", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
