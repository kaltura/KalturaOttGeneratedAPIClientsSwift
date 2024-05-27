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

public final class SearchPriorityGroupOrderedIdsSetService{

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Return the current ordering of priority groups for the partner.  */
	public static func get() -> RequestBuilder<SearchPriorityGroupOrderedIdsSet, SearchPriorityGroupOrderedIdsSet.SearchPriorityGroupOrderedIdsSetTokenizer, GetTokenizer> {
		let request: RequestBuilder<SearchPriorityGroupOrderedIdsSet, SearchPriorityGroupOrderedIdsSet.SearchPriorityGroupOrderedIdsSetTokenizer, GetTokenizer> = RequestBuilder<SearchPriorityGroupOrderedIdsSet, SearchPriorityGroupOrderedIdsSet.SearchPriorityGroupOrderedIdsSetTokenizer, GetTokenizer>(service: "searchprioritygrouporderedidsset", action: "get")

		return request
	}

	public class SetTokenizer: ClientTokenizer  {
		
		public func orderedList<T: SearchPriorityGroupOrderedIdsSet.SearchPriorityGroupOrderedIdsSetTokenizer>() -> T {
			return T(self.append("orderedList"))
		}
	}

	/**  Set the ordering of priority groups for the partner.  */
	public static func set(orderedList: SearchPriorityGroupOrderedIdsSet) -> RequestBuilder<SearchPriorityGroupOrderedIdsSet, SearchPriorityGroupOrderedIdsSet.SearchPriorityGroupOrderedIdsSetTokenizer, SetTokenizer> {
		let request: RequestBuilder<SearchPriorityGroupOrderedIdsSet, SearchPriorityGroupOrderedIdsSet.SearchPriorityGroupOrderedIdsSetTokenizer, SetTokenizer> = RequestBuilder<SearchPriorityGroupOrderedIdsSet, SearchPriorityGroupOrderedIdsSet.SearchPriorityGroupOrderedIdsSetTokenizer, SetTokenizer>(service: "searchprioritygrouporderedidsset", action: "set")
			.setParam(key: "orderedList", value: orderedList)

		return request
	}
}
