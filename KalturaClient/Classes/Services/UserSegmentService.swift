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
// Copyright (C) 2006-2018  Kaltura Inc.
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

public final class UserSegmentService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func userSegment<T: UserSegment.UserSegmentTokenizer>() -> T {
			return T(self.append("userSegment"))
		}
	}

	/**  Adds a segment to a user  */
	public static func add(userSegment: UserSegment) -> RequestBuilder<UserSegment, UserSegment.UserSegmentTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserSegment, UserSegment.UserSegmentTokenizer, AddTokenizer> = RequestBuilder<UserSegment, UserSegment.UserSegmentTokenizer, AddTokenizer>(service: "usersegment", action: "add")
			.setParam(key: "userSegment", value: userSegment)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public override var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var segmentId: BaseTokenizedObject {
			get {
				return self.append("segmentId") 
			}
		}
	}

	/**  Deletes a segment from a user  */
	public static func delete(userId: String, segmentId: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "usersegment", action: "delete")
			.setParam(key: "userId", value: userId)
			.setParam(key: "segmentId", value: segmentId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserSegmentFilter.UserSegmentFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: UserSegmentFilter) -> RequestBuilder<UserSegmentListResponse, UserSegmentListResponse.UserSegmentListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Retrieve all the segments that apply for this user  */
	public static func list(filter: UserSegmentFilter, pager: FilterPager?) -> RequestBuilder<UserSegmentListResponse, UserSegmentListResponse.UserSegmentListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserSegmentListResponse, UserSegmentListResponse.UserSegmentListResponseTokenizer, ListTokenizer> = RequestBuilder<UserSegmentListResponse, UserSegmentListResponse.UserSegmentListResponseTokenizer, ListTokenizer>(service: "usersegment", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
