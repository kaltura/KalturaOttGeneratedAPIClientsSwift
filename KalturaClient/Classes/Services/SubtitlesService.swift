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

public final class SubtitlesService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Return a subtitles file  */
	public static func get(id: Int64) -> RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, GetTokenizer> {
		let request: RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, GetTokenizer> = RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, GetTokenizer>(service: "subtitles", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SubtitlesFilter.SubtitlesFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	/**  Return a list of available subtitles files  */
	public static func list(filter: SubtitlesFilter, pager: FilterPager) -> RequestBuilder<SubtitlesListResponse, SubtitlesListResponse.SubtitlesListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SubtitlesListResponse, SubtitlesListResponse.SubtitlesListResponseTokenizer, ListTokenizer> = RequestBuilder<SubtitlesListResponse, SubtitlesListResponse.SubtitlesListResponseTokenizer, ListTokenizer>(service: "subtitles", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UploadFileTokenizer: ClientTokenizer  {
		
		public func subtitles<T: Subtitles.SubtitlesTokenizer>() -> T {
			return T(self.append("subtitles"))
		}
	}

	/**  Upload a subtitles file for a later analysis.  */
	public static func uploadFile(subtitles: Subtitles, fileData: RequestFile) -> RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, UploadFileTokenizer> {
		let request: RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, UploadFileTokenizer> = RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, UploadFileTokenizer>(service: "subtitles", action: "uploadFile")
			.setParam(key: "subtitles", value: subtitles)
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
