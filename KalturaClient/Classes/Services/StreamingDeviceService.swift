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

public final class StreamingDeviceService{

	public class BookPlaybackSessionTokenizer: ClientTokenizer  {
		
		public var fileId: BaseTokenizedObject {
			get {
				return self.append("fileId") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var assetType: BaseTokenizedObject {
			get {
				return self.append("assetType") 
			}
		}
	}

	/**  Reserves a concurrency slot for the given asset-device combination  */
	public static func bookPlaybackSession(fileId: String, assetId: String, assetType: AssetType) -> RequestBuilder<Bool, BaseTokenizedObject, BookPlaybackSessionTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, BookPlaybackSessionTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, BookPlaybackSessionTokenizer>(service: "streamingdevice", action: "bookPlaybackSession")
			.setParam(key: "fileId", value: fileId)
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "assetType", value: assetType.rawValue)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: StreamingDeviceFilter.StreamingDeviceFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<StreamingDeviceListResponse, StreamingDeviceListResponse.StreamingDeviceListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Lists of devices that are streaming at that moment  */
	public static func list(filter: StreamingDeviceFilter?) -> RequestBuilder<StreamingDeviceListResponse, StreamingDeviceListResponse.StreamingDeviceListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<StreamingDeviceListResponse, StreamingDeviceListResponse.StreamingDeviceListResponseTokenizer, ListTokenizer> = RequestBuilder<StreamingDeviceListResponse, StreamingDeviceListResponse.StreamingDeviceListResponseTokenizer, ListTokenizer>(service: "streamingdevice", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
