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

public final class InboxMessageService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  TBD  */
	public static func get(id: String) -> RequestBuilder<InboxMessage, InboxMessage.InboxMessageTokenizer, GetTokenizer> {
		let request: RequestBuilder<InboxMessage, InboxMessage.InboxMessageTokenizer, GetTokenizer> = RequestBuilder<InboxMessage, InboxMessage.InboxMessageTokenizer, GetTokenizer>(service: "inboxmessage", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: InboxMessageFilter.InboxMessageFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<InboxMessageListResponse, InboxMessageListResponse.InboxMessageListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: InboxMessageFilter?) -> RequestBuilder<InboxMessageListResponse, InboxMessageListResponse.InboxMessageListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List inbox messages  */
	public static func list(filter: InboxMessageFilter?, pager: FilterPager?) -> RequestBuilder<InboxMessageListResponse, InboxMessageListResponse.InboxMessageListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<InboxMessageListResponse, InboxMessageListResponse.InboxMessageListResponseTokenizer, ListTokenizer> = RequestBuilder<InboxMessageListResponse, InboxMessageListResponse.InboxMessageListResponseTokenizer, ListTokenizer>(service: "inboxmessage", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Updates the message status.  */
	public static func updateStatus(id: String, status: InboxMessageStatus) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer>(service: "inboxmessage", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
