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

public final class TopicNotificationService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func topicNotification<T: TopicNotification.TopicNotificationTokenizer>() -> T {
			return T(self.append("topicNotification"))
		}
	}

	/**  Add a new topic notification  */
	public static func add(topicNotification: TopicNotification) -> RequestBuilder<TopicNotification, TopicNotification.TopicNotificationTokenizer, AddTokenizer> {
		let request: RequestBuilder<TopicNotification, TopicNotification.TopicNotificationTokenizer, AddTokenizer> = RequestBuilder<TopicNotification, TopicNotification.TopicNotificationTokenizer, AddTokenizer>(service: "topicnotification", action: "add")
			.setParam(key: "topicNotification", value: topicNotification)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing topic notification  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "topicnotification", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: TopicNotificationFilter.TopicNotificationFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Lists all topic notifications in the system.  */
	public static func list(filter: TopicNotificationFilter) -> RequestBuilder<TopicNotificationListResponse, TopicNotificationListResponse.TopicNotificationListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<TopicNotificationListResponse, TopicNotificationListResponse.TopicNotificationListResponseTokenizer, ListTokenizer> = RequestBuilder<TopicNotificationListResponse, TopicNotificationListResponse.TopicNotificationListResponseTokenizer, ListTokenizer>(service: "topicnotification", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class SubscribeTokenizer: ClientTokenizer  {
		
		public var topicNotificationId: BaseTokenizedObject {
			get {
				return self.append("topicNotificationId") 
			}
		}
	}

	/**  Subscribe a user to a topic notification  */
	public static func subscribe(topicNotificationId: Int64) -> NullRequestBuilder<SubscribeTokenizer> {
		let request: NullRequestBuilder<SubscribeTokenizer> = NullRequestBuilder<SubscribeTokenizer>(service: "topicnotification", action: "subscribe")
			.setParam(key: "topicNotificationId", value: topicNotificationId)

		return request
	}

	public class UnsubscribeTokenizer: ClientTokenizer  {
		
		public var topicNotificationId: BaseTokenizedObject {
			get {
				return self.append("topicNotificationId") 
			}
		}
	}

	/**  Unubscribe a user from a topic notification  */
	public static func unsubscribe(topicNotificationId: Int64) -> NullRequestBuilder<UnsubscribeTokenizer> {
		let request: NullRequestBuilder<UnsubscribeTokenizer> = NullRequestBuilder<UnsubscribeTokenizer>(service: "topicnotification", action: "unsubscribe")
			.setParam(key: "topicNotificationId", value: topicNotificationId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func topicNotification<T: TopicNotification.TopicNotificationTokenizer>() -> T {
			return T(self.append("topicNotification"))
		}
	}

	/**  Update an existing topic notification  */
	public static func update(id: Int, topicNotification: TopicNotification) -> RequestBuilder<TopicNotification, TopicNotification.TopicNotificationTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<TopicNotification, TopicNotification.TopicNotificationTokenizer, UpdateTokenizer> = RequestBuilder<TopicNotification, TopicNotification.TopicNotificationTokenizer, UpdateTokenizer>(service: "topicnotification", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "topicNotification", value: topicNotification)

		return request
	}
}
