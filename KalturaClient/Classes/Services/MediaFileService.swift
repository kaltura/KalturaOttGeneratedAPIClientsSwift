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
// Copyright (C) 2006-2019  Kaltura Inc.
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

public final class MediaFileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func mediaFile<T: MediaFile.MediaFileTokenizer>() -> T {
			return T(self.append("mediaFile"))
		}
	}

	/**  Add a new media file  */
	public static func add(mediaFile: MediaFile) -> RequestBuilder<MediaFile, MediaFile.MediaFileTokenizer, AddTokenizer> {
		let request: RequestBuilder<MediaFile, MediaFile.MediaFileTokenizer, AddTokenizer> = RequestBuilder<MediaFile, MediaFile.MediaFileTokenizer, AddTokenizer>(service: "mediafile", action: "add")
			.setParam(key: "mediaFile", value: mediaFile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing media file  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "mediafile", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: MediaFileFilter.MediaFileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<MediaFileListResponse, MediaFileListResponse.MediaFileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns a list of media-file  */
	public static func list(filter: MediaFileFilter?) -> RequestBuilder<MediaFileListResponse, MediaFileListResponse.MediaFileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MediaFileListResponse, MediaFileListResponse.MediaFileListResponseTokenizer, ListTokenizer> = RequestBuilder<MediaFileListResponse, MediaFileListResponse.MediaFileListResponseTokenizer, ListTokenizer>(service: "mediafile", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func mediaFile<T: MediaFile.MediaFileTokenizer>() -> T {
			return T(self.append("mediaFile"))
		}
	}

	/**  update an existing media file  */
	public static func update(id: Int64, mediaFile: MediaFile) -> RequestBuilder<MediaFile, MediaFile.MediaFileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<MediaFile, MediaFile.MediaFileTokenizer, UpdateTokenizer> = RequestBuilder<MediaFile, MediaFile.MediaFileTokenizer, UpdateTokenizer>(service: "mediafile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "mediaFile", value: mediaFile)

		return request
	}
}
