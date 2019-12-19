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
		
		public func householdSegment<T: HouseholdSegment.HouseholdSegmentTokenizer>() -> T {
			return T(self.append("householdSegment"))
		}
	}

	/**  Adds a segment to a household  */
	public static func add(householdSegment: HouseholdSegment) -> RequestBuilder<HouseholdSegment, HouseholdSegment.HouseholdSegmentTokenizer, AddTokenizer> {
		let request: RequestBuilder<HouseholdSegment, HouseholdSegment.HouseholdSegmentTokenizer, AddTokenizer> = RequestBuilder<HouseholdSegment, HouseholdSegment.HouseholdSegmentTokenizer, AddTokenizer>(service: "householdsegment", action: "add")
			.setParam(key: "householdSegment", value: householdSegment)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var segmentId: BaseTokenizedObject {
			get {
				return self.append("segmentId") 
			}
		}
	}

	/**  Deletes a segment from a household  */
	public static func delete(householdId: Int64, segmentId: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "householdsegment", action: "delete")
			.setParam(key: "householdId", value: householdId)
			.setParam(key: "segmentId", value: segmentId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Retrieve all the segments that apply for given household  */
	public static func list() -> RequestBuilder<HouseholdSegmentListResponse, HouseholdSegmentListResponse.HouseholdSegmentListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdSegmentListResponse, HouseholdSegmentListResponse.HouseholdSegmentListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdSegmentListResponse, HouseholdSegmentListResponse.HouseholdSegmentListResponseTokenizer, ListTokenizer>(service: "householdsegment", action: "list")

		return request
	}
}
