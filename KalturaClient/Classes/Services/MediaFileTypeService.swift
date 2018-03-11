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

public final class MediaFileTypeService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func mediaFileType<T: MediaFileType.MediaFileTypeTokenizer>() -> T {
			return T(self.append("mediaFileType"))
		}
	}

	/**  Add new media-file type  */
	public static func add(mediaFileType: MediaFileType) -> RequestBuilder<MediaFileType, MediaFileType.MediaFileTypeTokenizer, AddTokenizer> {
		let request: RequestBuilder<MediaFileType, MediaFileType.MediaFileTypeTokenizer, AddTokenizer> = RequestBuilder<MediaFileType, MediaFileType.MediaFileTypeTokenizer, AddTokenizer>(service: "mediafiletype", action: "add")
			.setParam(key: "mediaFileType", value: mediaFileType)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete media-file type by id  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "mediafiletype", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns a list of media-file types  */
	public static func list() -> RequestBuilder<MediaFileTypeListResponse, MediaFileTypeListResponse.MediaFileTypeListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MediaFileTypeListResponse, MediaFileTypeListResponse.MediaFileTypeListResponseTokenizer, ListTokenizer> = RequestBuilder<MediaFileTypeListResponse, MediaFileTypeListResponse.MediaFileTypeListResponseTokenizer, ListTokenizer>(service: "mediafiletype", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func mediaFileType<T: MediaFileType.MediaFileTypeTokenizer>() -> T {
			return T(self.append("mediaFileType"))
		}
	}

	/**  Update existing media-file type  */
	public static func update(id: Int, mediaFileType: MediaFileType) -> RequestBuilder<MediaFileType, MediaFileType.MediaFileTypeTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<MediaFileType, MediaFileType.MediaFileTypeTokenizer, UpdateTokenizer> = RequestBuilder<MediaFileType, MediaFileType.MediaFileTypeTokenizer, UpdateTokenizer>(service: "mediafiletype", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "mediaFileType", value: mediaFileType)

		return request
	}
}
