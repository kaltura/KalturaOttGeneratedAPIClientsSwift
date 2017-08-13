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

public final class SeriesRecordingService{

	/**  Issue a record request for a complete season or series  */
	public static func add(recording: SeriesRecording) -> RequestBuilder<SeriesRecording> {
		let request: RequestBuilder<SeriesRecording> = RequestBuilder<SeriesRecording>(service: "seriesrecording", action: "add")
			.setBody(key: "recording", value: recording)

		return request
	}

	/**  Cancel a previously requested series recording. Cancel series recording can be
	  called for recording in status Scheduled or Recording Only  */
	public static func cancel(id: Int64) -> RequestBuilder<SeriesRecording> {
		let request: RequestBuilder<SeriesRecording> = RequestBuilder<SeriesRecording>(service: "seriesrecording", action: "cancel")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Cancel EPG recording that was recorded as part of series  */
	public static func cancelByEpgId(id: Int64, epgId: Int64) -> RequestBuilder<SeriesRecording> {
		let request: RequestBuilder<SeriesRecording> = RequestBuilder<SeriesRecording>(service: "seriesrecording", action: "cancelByEpgId")
			.setBody(key: "id", value: id)
			.setBody(key: "epgId", value: epgId)

		return request
	}

	/**  Cancel Season recording epgs that was recorded as part of series  */
	public static func cancelBySeasonNumber(id: Int64, seasonNumber: Int64) -> RequestBuilder<SeriesRecording> {
		let request: RequestBuilder<SeriesRecording> = RequestBuilder<SeriesRecording>(service: "seriesrecording", action: "cancelBySeasonNumber")
			.setBody(key: "id", value: id)
			.setBody(key: "seasonNumber", value: seasonNumber)

		return request
	}

	/**  Delete series recording(s). Delete series recording can be called recordings in
	  any status  */
	public static func delete(id: Int64) -> RequestBuilder<SeriesRecording> {
		let request: RequestBuilder<SeriesRecording> = RequestBuilder<SeriesRecording>(service: "seriesrecording", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Delete Season recording epgs that was recorded as part of series  */
	public static func deleteBySeasonNumber(id: Int64, seasonNumber: Int) -> RequestBuilder<SeriesRecording> {
		let request: RequestBuilder<SeriesRecording> = RequestBuilder<SeriesRecording>(service: "seriesrecording", action: "deleteBySeasonNumber")
			.setBody(key: "id", value: id)
			.setBody(key: "seasonNumber", value: seasonNumber)

		return request
	}

	public static func list() -> RequestBuilder<SeriesRecordingListResponse> {
		return list(filter: nil)
	}

	/**  Return a list of series recordings for the household with optional filter by
	  status and KSQL.  */
	public static func list(filter: SeriesRecordingFilter?) -> RequestBuilder<SeriesRecordingListResponse> {
		let request: RequestBuilder<SeriesRecordingListResponse> = RequestBuilder<SeriesRecordingListResponse>(service: "seriesrecording", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}
}
