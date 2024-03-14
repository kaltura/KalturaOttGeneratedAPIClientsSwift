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

public final class TopicNotificationMessageService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func topicNotificationMessage<T: TopicNotificationMessage.TopicNotificationMessageTokenizer>() -> T {
			return T(self.append("topicNotificationMessage"))
		}
	}

	/**  Add a new topic notification message  */
	public static func add(topicNotificationMessage: TopicNotificationMessage) -> RequestBuilder<TopicNotificationMessage, TopicNotificationMessage.TopicNotificationMessageTokenizer, AddTokenizer> {
		let request: RequestBuilder<TopicNotificationMessage, TopicNotificationMessage.TopicNotificationMessageTokenizer, AddTokenizer> = RequestBuilder<TopicNotificationMessage, TopicNotificationMessage.TopicNotificationMessageTokenizer, AddTokenizer>(service: "topicnotificationmessage", action: "add")
			.setParam(key: "topicNotificationMessage", value: topicNotificationMessage)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing topic notification message  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "topicnotificationmessage", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: TopicNotificationMessageFilter.TopicNotificationMessageFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<TopicNotificationMessageListResponse, TopicNotificationMessageListResponse.TopicNotificationMessageListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: TopicNotificationMessageFilter?) -> RequestBuilder<TopicNotificationMessageListResponse, TopicNotificationMessageListResponse.TopicNotificationMessageListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists all topic notifications in the system.  */
	public static func list(filter: TopicNotificationMessageFilter?, pager: FilterPager?) -> RequestBuilder<TopicNotificationMessageListResponse, TopicNotificationMessageListResponse.TopicNotificationMessageListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<TopicNotificationMessageListResponse, TopicNotificationMessageListResponse.TopicNotificationMessageListResponseTokenizer, ListTokenizer> = RequestBuilder<TopicNotificationMessageListResponse, TopicNotificationMessageListResponse.TopicNotificationMessageListResponseTokenizer, ListTokenizer>(service: "topicnotificationmessage", action: "list")
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
		
		public func topicNotificationMessage<T: TopicNotificationMessage.TopicNotificationMessageTokenizer>() -> T {
			return T(self.append("topicNotificationMessage"))
		}
	}

	/**  Update an existing topic notification message  */
	public static func update(id: Int, topicNotificationMessage: TopicNotificationMessage) -> RequestBuilder<TopicNotificationMessage, TopicNotificationMessage.TopicNotificationMessageTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<TopicNotificationMessage, TopicNotificationMessage.TopicNotificationMessageTokenizer, UpdateTokenizer> = RequestBuilder<TopicNotificationMessage, TopicNotificationMessage.TopicNotificationMessageTokenizer, UpdateTokenizer>(service: "topicnotificationmessage", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "topicNotificationMessage", value: topicNotificationMessage)

		return request
	}
}
