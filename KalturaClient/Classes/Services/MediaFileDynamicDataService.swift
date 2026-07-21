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

public final class MediaFileDynamicDataService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func dynamicData<T: MediaFileDynamicData.MediaFileDynamicDataTokenizer>() -> T {
			return T(self.append("dynamicData"))
		}
	}

	/**  Add a dynamicData value to the values list of a specific key name in a specific
	  mediaFileTypeId  */
	public static func add(dynamicData: MediaFileDynamicData) -> RequestBuilder<MediaFileDynamicData, MediaFileDynamicData.MediaFileDynamicDataTokenizer, AddTokenizer> {
		let request: RequestBuilder<MediaFileDynamicData, MediaFileDynamicData.MediaFileDynamicDataTokenizer, AddTokenizer> = RequestBuilder<MediaFileDynamicData, MediaFileDynamicData.MediaFileDynamicDataTokenizer, AddTokenizer>(service: "mediafiledynamicdata", action: "add")
			.setParam(key: "dynamicData", value: dynamicData)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing DynamicData value  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "mediafiledynamicdata", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: MediaFileDynamicDataFilter.MediaFileDynamicDataFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: MediaFileDynamicDataFilter) -> RequestBuilder<MediaFileDynamicDataListResponse, MediaFileDynamicDataListResponse.MediaFileDynamicDataListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List and filter existing mediaFile dynamicData values  */
	public static func list(filter: MediaFileDynamicDataFilter, pager: FilterPager?) -> RequestBuilder<MediaFileDynamicDataListResponse, MediaFileDynamicDataListResponse.MediaFileDynamicDataListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MediaFileDynamicDataListResponse, MediaFileDynamicDataListResponse.MediaFileDynamicDataListResponseTokenizer, ListTokenizer> = RequestBuilder<MediaFileDynamicDataListResponse, MediaFileDynamicDataListResponse.MediaFileDynamicDataListResponseTokenizer, ListTokenizer>(service: "mediafiledynamicdata", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
