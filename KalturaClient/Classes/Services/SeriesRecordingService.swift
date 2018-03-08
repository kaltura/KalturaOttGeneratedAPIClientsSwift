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

public final class SeriesRecordingService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func recording<T: SeriesRecording.SeriesRecordingTokenizer>() -> T {
			return T(self.append("recording"))
		}
	}

	/**  Issue a record request for a complete season or series  */
	public static func add(recording: SeriesRecording) -> RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, AddTokenizer> {
		let request: RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, AddTokenizer> = RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, AddTokenizer>(service: "seriesrecording", action: "add")
			.setParam(key: "recording", value: recording)

		return request
	}

	public class CancelTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Cancel a previously requested series recording. Cancel series recording can be
	  called for recording in status Scheduled or Recording Only  */
	public static func cancel(id: Int64) -> RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelTokenizer> {
		let request: RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelTokenizer> = RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelTokenizer>(service: "seriesrecording", action: "cancel")
			.setParam(key: "id", value: id)

		return request
	}

	public class CancelByEpgIdTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var epgId: BaseTokenizedObject {
			get {
				return self.append("epgId") 
			}
		}
	}

	/**  Cancel EPG recording that was recorded as part of series  */
	public static func cancelByEpgId(id: Int64, epgId: Int64) -> RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelByEpgIdTokenizer> {
		let request: RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelByEpgIdTokenizer> = RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelByEpgIdTokenizer>(service: "seriesrecording", action: "cancelByEpgId")
			.setParam(key: "id", value: id)
			.setParam(key: "epgId", value: epgId)

		return request
	}

	public class CancelBySeasonNumberTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var seasonNumber: BaseTokenizedObject {
			get {
				return self.append("seasonNumber") 
			}
		}
	}

	/**  Cancel Season recording epgs that was recorded as part of series  */
	public static func cancelBySeasonNumber(id: Int64, seasonNumber: Int64) -> RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelBySeasonNumberTokenizer> {
		let request: RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelBySeasonNumberTokenizer> = RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, CancelBySeasonNumberTokenizer>(service: "seriesrecording", action: "cancelBySeasonNumber")
			.setParam(key: "id", value: id)
			.setParam(key: "seasonNumber", value: seasonNumber)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete series recording(s). Delete series recording can be called recordings in
	  any status  */
	public static func delete(id: Int64) -> RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, DeleteTokenizer> = RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, DeleteTokenizer>(service: "seriesrecording", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class DeleteBySeasonNumberTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var seasonNumber: BaseTokenizedObject {
			get {
				return self.append("seasonNumber") 
			}
		}
	}

	/**  Delete Season recording epgs that was recorded as part of series  */
	public static func deleteBySeasonNumber(id: Int64, seasonNumber: Int) -> RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, DeleteBySeasonNumberTokenizer> {
		let request: RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, DeleteBySeasonNumberTokenizer> = RequestBuilder<SeriesRecording, SeriesRecording.SeriesRecordingTokenizer, DeleteBySeasonNumberTokenizer>(service: "seriesrecording", action: "deleteBySeasonNumber")
			.setParam(key: "id", value: id)
			.setParam(key: "seasonNumber", value: seasonNumber)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SeriesRecordingFilter.SeriesRecordingFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<SeriesRecordingListResponse, SeriesRecordingListResponse.SeriesRecordingListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Return a list of series recordings for the household with optional filter by
	  status and KSQL.  */
	public static func list(filter: SeriesRecordingFilter?) -> RequestBuilder<SeriesRecordingListResponse, SeriesRecordingListResponse.SeriesRecordingListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SeriesRecordingListResponse, SeriesRecordingListResponse.SeriesRecordingListResponseTokenizer, ListTokenizer> = RequestBuilder<SeriesRecordingListResponse, SeriesRecordingListResponse.SeriesRecordingListResponseTokenizer, ListTokenizer>(service: "seriesrecording", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
