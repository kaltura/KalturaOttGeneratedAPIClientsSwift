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

public final class TopicService{

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Deleted a topic  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "topic", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Gets a topic  */
	public static func get(id: Int) -> RequestBuilder<Topic, Topic.TopicTokenizer, GetTokenizer> {
		let request: RequestBuilder<Topic, Topic.TopicTokenizer, GetTokenizer> = RequestBuilder<Topic, Topic.TopicTokenizer, GetTokenizer>(service: "topic", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: TopicFilter.TopicFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<TopicListResponse, TopicListResponse.TopicListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: TopicFilter?) -> RequestBuilder<TopicListResponse, TopicListResponse.TopicListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Get list of topics  */
	public static func list(filter: TopicFilter?, pager: FilterPager?) -> RequestBuilder<TopicListResponse, TopicListResponse.TopicListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<TopicListResponse, TopicListResponse.TopicListResponseTokenizer, ListTokenizer> = RequestBuilder<TopicListResponse, TopicListResponse.TopicListResponseTokenizer, ListTokenizer>(service: "topic", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var automaticIssueNotification: BaseTokenizedObject {
			get {
				return self.append("automaticIssueNotification") 
			}
		}
	}

	/**  Updates a topic &amp;quot;automatic issue notification&amp;quot; behavior.  */
	public static func updateStatus(id: Int, automaticIssueNotification: TopicAutomaticIssueNotification) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer>(service: "topic", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "automaticIssueNotification", value: automaticIssueNotification.rawValue)

		return request
	}
}
