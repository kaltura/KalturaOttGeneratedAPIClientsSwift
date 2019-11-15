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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class EventNotificationService{

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: EventNotification.EventNotificationTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  eventNotification update  */
	public static func update(id: String, objectToUpdate: EventNotification) -> RequestBuilder<EventNotification, EventNotification.EventNotificationTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<EventNotification, EventNotification.EventNotificationTokenizer, UpdateTokenizer> = RequestBuilder<EventNotification, EventNotification.EventNotificationTokenizer, UpdateTokenizer>(service: "eventnotification", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: EventNotificationFilter.EventNotificationFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Gets all EventNotification items for a given Object id and type  */
	public static func list(filter: EventNotificationFilter) -> RequestBuilder<EventNotificationListResponse, EventNotificationListResponse.EventNotificationListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EventNotificationListResponse, EventNotificationListResponse.EventNotificationListResponseTokenizer, ListTokenizer> = RequestBuilder<EventNotificationListResponse, EventNotificationListResponse.EventNotificationListResponseTokenizer, ListTokenizer>(service: "eventnotification", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}