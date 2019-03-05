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

public final class BulkUploadService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get BulkUpload by ID  */
	public static func get(id: Int64) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer>(service: "bulkupload", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: BulkUploadFilter.BulkUploadFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Get list of KalturaBulkUpload by filter  */
	public static func list(filter: BulkUploadFilter?) -> RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> = RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer>(service: "bulkupload", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
