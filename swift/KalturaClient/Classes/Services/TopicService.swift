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

public final class TopicService{

	/**  Deleted a topic  */
	public static func delete(id: Int) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "topic", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Gets a topic  */
	public static func get(id: Int) -> RequestBuilder<Topic> {
		let request: RequestBuilder<Topic> = RequestBuilder<Topic>(service: "topic", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<TopicListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: TopicFilter?) -> RequestBuilder<TopicListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Get list of topics  */
	public static func list(filter: TopicFilter?, pager: FilterPager?) -> RequestBuilder<TopicListResponse> {
		let request: RequestBuilder<TopicListResponse> = RequestBuilder<TopicListResponse>(service: "topic", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Updates a topic &amp;quot;automatic issue notification&amp;quot; behavior.  */
	public static func updateStatus(id: Int, automaticIssueNotification: TopicAutomaticIssueNotification) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "topic", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "automaticIssueNotification", value: automaticIssueNotification.rawValue)

		return request
	}
}
