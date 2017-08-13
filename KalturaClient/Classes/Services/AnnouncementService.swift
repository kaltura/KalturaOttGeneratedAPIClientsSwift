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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class AnnouncementService{

	/**  Add a new future scheduled system announcement push notification  */
	public static func add(announcement: Announcement) -> RequestBuilder<Announcement> {
		let request: RequestBuilder<Announcement> = RequestBuilder<Announcement>(service: "announcement", action: "add")
			.setBody(key: "announcement", value: announcement)

		return request
	}

	/**  Delete an existing announcing. Announcement cannot be delete while being sent.  */
	public static func delete(id: Int64) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "announcement", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Enable system announcements  */
	public static func enableSystemAnnouncements() -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "announcement", action: "enableSystemAnnouncements")

		return request
	}

	public static func list(filter: AnnouncementFilter) -> RequestBuilder<AnnouncementListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists all announcements in the system.  */
	public static func list(filter: AnnouncementFilter, pager: FilterPager?) -> RequestBuilder<AnnouncementListResponse> {
		let request: RequestBuilder<AnnouncementListResponse> = RequestBuilder<AnnouncementListResponse>(service: "announcement", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing future system announcement push notification. Announcement
	  can only be updated only before sending  */
	public static func update(announcementId: Int, announcement: Announcement) -> RequestBuilder<Announcement> {
		let request: RequestBuilder<Announcement> = RequestBuilder<Announcement>(service: "announcement", action: "update")
			.setBody(key: "announcementId", value: announcementId)
			.setBody(key: "announcement", value: announcement)

		return request
	}

	/**  Update a system announcement status  */
	public static func updateStatus(id: Int64, status: Bool) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "announcement", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status)

		return request
	}
}
