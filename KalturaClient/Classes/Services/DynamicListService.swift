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

public final class DynamicListService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: DynamicList.DynamicListTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  Add an object  */
	public static func add(objectToAdd: DynamicList) -> RequestBuilder<DynamicList, DynamicList.DynamicListTokenizer, AddTokenizer> {
		let request: RequestBuilder<DynamicList, DynamicList.DynamicListTokenizer, AddTokenizer> = RequestBuilder<DynamicList, DynamicList.DynamicListTokenizer, AddTokenizer>(service: "dynamiclist", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: DynamicList.DynamicListTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  Update an object  */
	public static func update(id: Int64, objectToUpdate: DynamicList) -> RequestBuilder<DynamicList, DynamicList.DynamicListTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DynamicList, DynamicList.DynamicListTokenizer, UpdateTokenizer> = RequestBuilder<DynamicList, DynamicList.DynamicListTokenizer, UpdateTokenizer>(service: "dynamiclist", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an object  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "dynamiclist", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DynamicListFilter.DynamicListFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: DynamicListFilter) -> RequestBuilder<DynamicListListResponse, DynamicListListResponse.DynamicListListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: DynamicListFilter, pager: FilterPager?) -> RequestBuilder<DynamicListListResponse, DynamicListListResponse.DynamicListListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DynamicListListResponse, DynamicListListResponse.DynamicListListResponseTokenizer, ListTokenizer> = RequestBuilder<DynamicListListResponse, DynamicListListResponse.DynamicListListResponseTokenizer, ListTokenizer>(service: "dynamiclist", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class AddFromBulkUploadTokenizer: ClientTokenizer  {
		
		public func jobData<T: BulkUploadExcelJobData.BulkUploadExcelJobDataTokenizer>() -> T {
			return T(self.append("jobData"))
		}
		
		public func bulkUploadData<T: BulkUploadDynamicListData.BulkUploadDynamicListDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
	}

	/**  Add new bulk upload batch job Conversion profile id can be specified in the API.  */
	public static func addFromBulkUpload(fileData: RequestFile, jobData: BulkUploadExcelJobData, bulkUploadData: BulkUploadDynamicListData) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer>(service: "dynamiclist", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setParam(key: "jobData", value: jobData)
			.setParam(key: "bulkUploadData", value: bulkUploadData)

		return request
	}
}
