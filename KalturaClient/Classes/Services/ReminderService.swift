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

public final class ReminderService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func reminder<T: Reminder.ReminderTokenizer>() -> T {
			return T(self.append("reminder"))
		}
	}

	/**  Add a new future reminder  */
	public static func add(reminder: Reminder) -> RequestBuilder<Reminder, Reminder.ReminderTokenizer, AddTokenizer> {
		let request: RequestBuilder<Reminder, Reminder.ReminderTokenizer, AddTokenizer> = RequestBuilder<Reminder, Reminder.ReminderTokenizer, AddTokenizer>(service: "reminder", action: "add")
			.setParam(key: "reminder", value: reminder)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  Delete a reminder. Reminder cannot be delete while being sent.  */
	public static func delete(id: Int64, type: ReminderType) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "reminder", action: "delete")
			.setParam(key: "id", value: id)
			.setParam(key: "type", value: type.rawValue)

		return request
	}

	public class DeleteWithTokenTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
			}
		}
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
	}

	/**  Delete a reminder. Reminder cannot be delete while being sent.  */
	public static func deleteWithToken(id: Int64, type: ReminderType, token: String, partnerId: Int) -> NullRequestBuilder<DeleteWithTokenTokenizer> {
		let request: NullRequestBuilder<DeleteWithTokenTokenizer> = NullRequestBuilder<DeleteWithTokenTokenizer>(service: "reminder", action: "deleteWithToken")
			.setParam(key: "id", value: id)
			.setParam(key: "type", value: type.rawValue)
			.setParam(key: "token", value: token)
			.setParam(key: "partnerId", value: partnerId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ReminderFilter.ReminderFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: ReminderFilter) -> RequestBuilder<ReminderListResponse, ReminderListResponse.ReminderListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Return a list of reminders with optional filter by KSQL.  */
	public static func list(filter: ReminderFilter, pager: FilterPager?) -> RequestBuilder<ReminderListResponse, ReminderListResponse.ReminderListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ReminderListResponse, ReminderListResponse.ReminderListResponseTokenizer, ListTokenizer> = RequestBuilder<ReminderListResponse, ReminderListResponse.ReminderListResponseTokenizer, ListTokenizer>(service: "reminder", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
