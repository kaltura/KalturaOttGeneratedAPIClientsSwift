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

public final class AnnouncementService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func announcement<T: Announcement.AnnouncementTokenizer>() -> T {
			return T(self.append("announcement"))
		}
	}

	/**  Add a new future scheduled system announcement push notification  */
	public static func add(announcement: Announcement) -> RequestBuilder<Announcement, Announcement.AnnouncementTokenizer, AddTokenizer> {
		let request: RequestBuilder<Announcement, Announcement.AnnouncementTokenizer, AddTokenizer> = RequestBuilder<Announcement, Announcement.AnnouncementTokenizer, AddTokenizer>(service: "announcement", action: "add")
			.setParam(key: "announcement", value: announcement)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing announcing. Announcement cannot be delete while being sent.  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "announcement", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class EnableSystemAnnouncementsTokenizer: ClientTokenizer  {
	}

	/**  Enable system announcements  */
	public static func enableSystemAnnouncements() -> RequestBuilder<Bool, BaseTokenizedObject, EnableSystemAnnouncementsTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, EnableSystemAnnouncementsTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, EnableSystemAnnouncementsTokenizer>(service: "announcement", action: "enableSystemAnnouncements")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AnnouncementFilter.AnnouncementFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: AnnouncementFilter) -> RequestBuilder<AnnouncementListResponse, AnnouncementListResponse.AnnouncementListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists all announcements in the system.  */
	public static func list(filter: AnnouncementFilter, pager: FilterPager?) -> RequestBuilder<AnnouncementListResponse, AnnouncementListResponse.AnnouncementListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AnnouncementListResponse, AnnouncementListResponse.AnnouncementListResponseTokenizer, ListTokenizer> = RequestBuilder<AnnouncementListResponse, AnnouncementListResponse.AnnouncementListResponseTokenizer, ListTokenizer>(service: "announcement", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var announcementId: BaseTokenizedObject {
			get {
				return self.append("announcementId") 
			}
		}
		
		public func announcement<T: Announcement.AnnouncementTokenizer>() -> T {
			return T(self.append("announcement"))
		}
	}

	/**  Update an existing future system announcement push notification. Announcement
	  can only be updated only before sending  */
	public static func update(announcementId: Int, announcement: Announcement) -> RequestBuilder<Announcement, Announcement.AnnouncementTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Announcement, Announcement.AnnouncementTokenizer, UpdateTokenizer> = RequestBuilder<Announcement, Announcement.AnnouncementTokenizer, UpdateTokenizer>(service: "announcement", action: "update")
			.setParam(key: "announcementId", value: announcementId)
			.setParam(key: "announcement", value: announcement)

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

	/**  Update a system announcement status  */
	public static func updateStatus(id: Int64, status: Bool) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer>(service: "announcement", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status)

		return request
	}
}
