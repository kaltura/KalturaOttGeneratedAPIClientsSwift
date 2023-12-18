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

public final class UserSessionProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func userSessionProfile<T: UserSessionProfile.UserSessionProfileTokenizer>() -> T {
			return T(self.append("userSessionProfile"))
		}
	}

	/**  Add new UserSessionProfile  */
	public static func add(userSessionProfile: UserSessionProfile) -> RequestBuilder<UserSessionProfile, UserSessionProfile.UserSessionProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserSessionProfile, UserSessionProfile.UserSessionProfileTokenizer, AddTokenizer> = RequestBuilder<UserSessionProfile, UserSessionProfile.UserSessionProfileTokenizer, AddTokenizer>(service: "usersessionprofile", action: "add")
			.setParam(key: "userSessionProfile", value: userSessionProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete existing UserSessionProfile  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "usersessionprofile", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserSessionProfileFilter.UserSessionProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<UserSessionProfileListResponse, UserSessionProfileListResponse.UserSessionProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: UserSessionProfileFilter?) -> RequestBuilder<UserSessionProfileListResponse, UserSessionProfileListResponse.UserSessionProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Returns the list of available UserSessionProfiles  */
	public static func list(filter: UserSessionProfileFilter?, pager: FilterPager?) -> RequestBuilder<UserSessionProfileListResponse, UserSessionProfileListResponse.UserSessionProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserSessionProfileListResponse, UserSessionProfileListResponse.UserSessionProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<UserSessionProfileListResponse, UserSessionProfileListResponse.UserSessionProfileListResponseTokenizer, ListTokenizer>(service: "usersessionprofile", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func userSessionProfile<T: UserSessionProfile.UserSessionProfileTokenizer>() -> T {
			return T(self.append("userSessionProfile"))
		}
	}

	/**  Update existing UserSessionProfile  */
	public static func update(id: Int64, userSessionProfile: UserSessionProfile) -> RequestBuilder<UserSessionProfile, UserSessionProfile.UserSessionProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<UserSessionProfile, UserSessionProfile.UserSessionProfileTokenizer, UpdateTokenizer> = RequestBuilder<UserSessionProfile, UserSessionProfile.UserSessionProfileTokenizer, UpdateTokenizer>(service: "usersessionprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "userSessionProfile", value: userSessionProfile)

		return request
	}
}
