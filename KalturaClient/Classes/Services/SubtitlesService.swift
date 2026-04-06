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

	public class UploadFileTokenizer: ClientTokenizer  {
		
		public func subtitles<T: UploadSubtitles.UploadSubtitlesTokenizer>() -> T {
			return T(self.append("subtitles"))
		}
	}

	/**  Add a subtitles file to be used for generating metadata and enriching the assets
	  using a multi-part form-data body including the JSON configuration object and
	  the uploaded file.  */
	public static func uploadFile(subtitles: UploadSubtitles, fileData: RequestFile) -> RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, UploadFileTokenizer> {
		let request: RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, UploadFileTokenizer> = RequestBuilder<Subtitles, Subtitles.SubtitlesTokenizer, UploadFileTokenizer>(service: "subtitles", action: "uploadFile")
			.setParam(key: "subtitles", value: subtitles)
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
