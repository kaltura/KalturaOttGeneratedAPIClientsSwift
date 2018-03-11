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

public final class FollowTvSeriesService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func followTvSeries<T: FollowTvSeries.FollowTvSeriesTokenizer>() -> T {
			return T(self.append("followTvSeries"))
		}
	}

	/**  Add a user&amp;#39;s tv series follow.              Possible status codes:
	  UserAlreadyFollowing = 8013, NotFound = 500007, InvalidAssetId = 4024  */
	public static func add(followTvSeries: FollowTvSeries) -> RequestBuilder<FollowTvSeries, FollowTvSeries.FollowTvSeriesTokenizer, AddTokenizer> {
		let request: RequestBuilder<FollowTvSeries, FollowTvSeries.FollowTvSeriesTokenizer, AddTokenizer> = RequestBuilder<FollowTvSeries, FollowTvSeries.FollowTvSeriesTokenizer, AddTokenizer>(service: "followtvseries", action: "add")
			.setParam(key: "followTvSeries", value: followTvSeries)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
	}

	/**  Delete a user&amp;#39;s tv series follow.              Possible status codes:
	  UserNotFollowing = 8012, NotFound = 500007, InvalidAssetId = 4024,
	  AnnouncementNotFound = 8006  */
	public static func delete(assetId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "followtvseries", action: "delete")
			.setParam(key: "assetId", value: assetId)

		return request
	}

	public class DeleteWithTokenTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
			}
		}
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
	}

	/**  Delete a user&amp;#39;s tv series follow.  */
	public static func deleteWithToken(assetId: Int, token: String, partnerId: Int) -> NullRequestBuilder<DeleteWithTokenTokenizer> {
		let request: NullRequestBuilder<DeleteWithTokenTokenizer> = NullRequestBuilder<DeleteWithTokenTokenizer>(service: "followtvseries", action: "deleteWithToken")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "token", value: token)
			.setParam(key: "partnerId", value: partnerId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: FollowTvSeriesFilter.FollowTvSeriesFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: FollowTvSeriesFilter) -> RequestBuilder<FollowTvSeriesListResponse, FollowTvSeriesListResponse.FollowTvSeriesListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List user&amp;#39;s tv series follows.              Possible status codes:  */
	public static func list(filter: FollowTvSeriesFilter, pager: FilterPager?) -> RequestBuilder<FollowTvSeriesListResponse, FollowTvSeriesListResponse.FollowTvSeriesListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<FollowTvSeriesListResponse, FollowTvSeriesListResponse.FollowTvSeriesListResponseTokenizer, ListTokenizer> = RequestBuilder<FollowTvSeriesListResponse, FollowTvSeriesListResponse.FollowTvSeriesListResponseTokenizer, ListTokenizer>(service: "followtvseries", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
