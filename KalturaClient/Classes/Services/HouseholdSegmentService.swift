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

public final class HouseholdSegmentService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: HouseholdSegment.HouseholdSegmentTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  householdSegment add  */
	public static func add(objectToAdd: HouseholdSegment) -> RequestBuilder<HouseholdSegment, HouseholdSegment.HouseholdSegmentTokenizer, AddTokenizer> {
		let request: RequestBuilder<HouseholdSegment, HouseholdSegment.HouseholdSegmentTokenizer, AddTokenizer> = RequestBuilder<HouseholdSegment, HouseholdSegment.HouseholdSegmentTokenizer, AddTokenizer>(service: "householdsegment", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Remove segment from household  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "householdsegment", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: HouseholdSegmentFilter.HouseholdSegmentFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<HouseholdSegmentListResponse, HouseholdSegmentListResponse.HouseholdSegmentListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Gets all HouseholdSegment items for a household  */
	public static func list(filter: HouseholdSegmentFilter?) -> RequestBuilder<HouseholdSegmentListResponse, HouseholdSegmentListResponse.HouseholdSegmentListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdSegmentListResponse, HouseholdSegmentListResponse.HouseholdSegmentListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdSegmentListResponse, HouseholdSegmentListResponse.HouseholdSegmentListResponseTokenizer, ListTokenizer>(service: "householdsegment", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
