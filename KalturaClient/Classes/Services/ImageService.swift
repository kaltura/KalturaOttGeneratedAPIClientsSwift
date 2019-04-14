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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class ImageService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func image<T: Image.ImageTokenizer>() -> T {
			return T(self.append("image"))
		}
	}

	/**  Add a new image  */
	public static func add(image: Image) -> RequestBuilder<Image, Image.ImageTokenizer, AddTokenizer> {
		let request: RequestBuilder<Image, Image.ImageTokenizer, AddTokenizer> = RequestBuilder<Image, Image.ImageTokenizer, AddTokenizer>(service: "image", action: "add")
			.setParam(key: "image", value: image)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing image  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "image", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ImageFilter.ImageFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<ImageListResponse, ImageListResponse.ImageListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Get the list of images by different filtering  */
	public static func list(filter: ImageFilter?) -> RequestBuilder<ImageListResponse, ImageListResponse.ImageListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ImageListResponse, ImageListResponse.ImageListResponseTokenizer, ListTokenizer> = RequestBuilder<ImageListResponse, ImageListResponse.ImageListResponseTokenizer, ListTokenizer>(service: "image", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class SetContentTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func content<T: ContentResource.ContentResourceTokenizer>() -> T {
			return T(self.append("content"))
		}
	}

	/**  Sets the content of an existing image  */
	public static func setContent(id: Int64, content: ContentResource) -> NullRequestBuilder<SetContentTokenizer> {
		let request: NullRequestBuilder<SetContentTokenizer> = NullRequestBuilder<SetContentTokenizer>(service: "image", action: "setContent")
			.setParam(key: "id", value: id)
			.setParam(key: "content", value: content)

		return request
	}
}
