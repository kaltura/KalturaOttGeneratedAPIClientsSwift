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

public final class SegmentationTypeService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func segmentationType<T: SegmentationType.SegmentationTypeTokenizer>() -> T {
			return T(self.append("segmentationType"))
		}
	}

	/**  Adds a new segmentation type to the system  */
	public static func add(segmentationType: SegmentationType) -> RequestBuilder<SegmentationType, SegmentationType.SegmentationTypeTokenizer, AddTokenizer> {
		let request: RequestBuilder<SegmentationType, SegmentationType.SegmentationTypeTokenizer, AddTokenizer> = RequestBuilder<SegmentationType, SegmentationType.SegmentationTypeTokenizer, AddTokenizer>(service: "segmentationtype", action: "add")
			.setParam(key: "segmentationType", value: segmentationType)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a segmentation type from the system  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "segmentationtype", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SegmentationTypeFilter.SegmentationTypeFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<SegmentationTypeListResponse, SegmentationTypeListResponse.SegmentationTypeListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: SegmentationTypeFilter?) -> RequestBuilder<SegmentationTypeListResponse, SegmentationTypeListResponse.SegmentationTypeListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists all segmentation types in group  */
	public static func list(filter: SegmentationTypeFilter?, pager: FilterPager?) -> RequestBuilder<SegmentationTypeListResponse, SegmentationTypeListResponse.SegmentationTypeListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SegmentationTypeListResponse, SegmentationTypeListResponse.SegmentationTypeListResponseTokenizer, ListTokenizer> = RequestBuilder<SegmentationTypeListResponse, SegmentationTypeListResponse.SegmentationTypeListResponseTokenizer, ListTokenizer>(service: "segmentationtype", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var segmentationTypeId: BaseTokenizedObject {
			get {
				return self.append("segmentationTypeId") 
			}
		}
		
		public func segmentationType<T: SegmentationType.SegmentationTypeTokenizer>() -> T {
			return T(self.append("segmentationType"))
		}
	}

	/**  Updates an existing segmentation type  */
	public static func update(segmentationTypeId: Int64, segmentationType: SegmentationType) -> RequestBuilder<SegmentationType, SegmentationType.SegmentationTypeTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<SegmentationType, SegmentationType.SegmentationTypeTokenizer, UpdateTokenizer> = RequestBuilder<SegmentationType, SegmentationType.SegmentationTypeTokenizer, UpdateTokenizer>(service: "segmentationtype", action: "update")
			.setParam(key: "segmentationTypeId", value: segmentationTypeId)
			.setParam(key: "segmentationType", value: segmentationType)

		return request
	}
}
