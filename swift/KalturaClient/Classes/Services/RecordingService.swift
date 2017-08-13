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

public final class RecordingService{

	/**  Issue a record request for a program  */
	public static func add(recording: Recording) -> RequestBuilder<Recording> {
		let request: RequestBuilder<Recording> = RequestBuilder<Recording>(service: "recording", action: "add")
			.setBody(key: "recording", value: recording)

		return request
	}

	/**  Cancel a previously requested recording. Cancel recording can be called for
	  recording in status Scheduled or Recording Only  */
	public static func cancel(id: Int64) -> RequestBuilder<Recording> {
		let request: RequestBuilder<Recording> = RequestBuilder<Recording>(service: "recording", action: "cancel")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Delete one or more user recording(s). Delete recording can be called only for
	  recordings in status Recorded  */
	public static func delete(id: Int64) -> RequestBuilder<Recording> {
		let request: RequestBuilder<Recording> = RequestBuilder<Recording>(service: "recording", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Returns recording object by internal identifier  */
	public static func get(id: Int64) -> RequestBuilder<Recording> {
		let request: RequestBuilder<Recording> = RequestBuilder<Recording>(service: "recording", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<RecordingListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: RecordingFilter?) -> RequestBuilder<RecordingListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Return a list of recordings for the household with optional filter by status and
	  KSQL.  */
	public static func list(filter: RecordingFilter?, pager: FilterPager?) -> RequestBuilder<RecordingListResponse> {
		let request: RequestBuilder<RecordingListResponse> = RequestBuilder<RecordingListResponse>(service: "recording", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Protects an existing recording from the cleanup process for the defined
	  protection period  */
	public static func protect(id: Int64) -> RequestBuilder<Recording> {
		let request: RequestBuilder<Recording> = RequestBuilder<Recording>(service: "recording", action: "protect")
			.setBody(key: "id", value: id)

		return request
	}
}
