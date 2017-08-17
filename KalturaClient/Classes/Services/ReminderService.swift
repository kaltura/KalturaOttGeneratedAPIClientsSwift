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

public final class ReminderService{

	/**  Add a new future reminder  */
	public static func add(reminder: Reminder) -> RequestBuilder<Reminder> {
		let request: RequestBuilder<Reminder> = RequestBuilder<Reminder>(service: "reminder", action: "add")
			.setBody(key: "reminder", value: reminder)

		return request
	}

	/**  Delete a reminder. Reminder cannot be delete while being sent.  */
	public static func delete(id: Int64, type: ReminderType) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "reminder", action: "delete")
			.setBody(key: "id", value: id)
			.setBody(key: "type", value: type.rawValue)

		return request
	}

	public static func list(filter: ReminderFilter) -> RequestBuilder<ReminderListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Return a list of reminders with optional filter by KSQL.  */
	public static func list(filter: ReminderFilter, pager: FilterPager?) -> RequestBuilder<ReminderListResponse> {
		let request: RequestBuilder<ReminderListResponse> = RequestBuilder<ReminderListResponse>(service: "reminder", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
