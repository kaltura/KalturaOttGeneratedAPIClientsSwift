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

public final class WatchBasedRecommendationsProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func profile<T: WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer>() -> T {
			return T(self.append("profile"))
		}
	}

	/**  Add partner&amp;#39;s watch based recommendations profile.  */
	public static func add(profile: WatchBasedRecommendationsProfile) -> RequestBuilder<WatchBasedRecommendationsProfile, WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<WatchBasedRecommendationsProfile, WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer, AddTokenizer> = RequestBuilder<WatchBasedRecommendationsProfile, WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer, AddTokenizer>(service: "watchbasedrecommendationsprofile", action: "add")
			.setParam(key: "profile", value: profile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete partner&amp;#39;s watch based recommendations profile.  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "watchbasedrecommendationsprofile", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class DeleteWatchBasedRecommendationsOfProfileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete all recommendations that were calculated based on specific profile.  */
	public static func deleteWatchBasedRecommendationsOfProfile(id: Int64) -> NullRequestBuilder<DeleteWatchBasedRecommendationsOfProfileTokenizer> {
		let request: NullRequestBuilder<DeleteWatchBasedRecommendationsOfProfileTokenizer> = NullRequestBuilder<DeleteWatchBasedRecommendationsOfProfileTokenizer>(service: "watchbasedrecommendationsprofile", action: "deleteWatchBasedRecommendationsOfProfile")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: WatchBasedRecommendationsProfileFilter.WatchBasedRecommendationsProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<WatchBasedRecommendationsProfileListResponse, WatchBasedRecommendationsProfileListResponse.WatchBasedRecommendationsProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Get partner&amp;#39;s watch based recommendations profiles.  */
	public static func list(filter: WatchBasedRecommendationsProfileFilter?) -> RequestBuilder<WatchBasedRecommendationsProfileListResponse, WatchBasedRecommendationsProfileListResponse.WatchBasedRecommendationsProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<WatchBasedRecommendationsProfileListResponse, WatchBasedRecommendationsProfileListResponse.WatchBasedRecommendationsProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<WatchBasedRecommendationsProfileListResponse, WatchBasedRecommendationsProfileListResponse.WatchBasedRecommendationsProfileListResponseTokenizer, ListTokenizer>(service: "watchbasedrecommendationsprofile", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func profile<T: WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer>() -> T {
			return T(self.append("profile"))
		}
	}

	/**  Update partner&amp;#39;s watch based recommendations profile.  */
	public static func update(id: Int64, profile: WatchBasedRecommendationsProfile) -> RequestBuilder<WatchBasedRecommendationsProfile, WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<WatchBasedRecommendationsProfile, WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer, UpdateTokenizer> = RequestBuilder<WatchBasedRecommendationsProfile, WatchBasedRecommendationsProfile.WatchBasedRecommendationsProfileTokenizer, UpdateTokenizer>(service: "watchbasedrecommendationsprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "profile", value: profile)

		return request
	}
}
