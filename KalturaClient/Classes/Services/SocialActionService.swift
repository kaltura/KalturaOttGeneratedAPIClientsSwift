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

public final class SocialActionService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func socialAction<T: SocialAction.SocialActionTokenizer>() -> T {
			return T(self.append("socialAction"))
		}
	}

	/**  Insert new user social action  */
	public static func add(socialAction: SocialAction) -> RequestBuilder<UserSocialActionResponse, UserSocialActionResponse.UserSocialActionResponseTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserSocialActionResponse, UserSocialActionResponse.UserSocialActionResponseTokenizer, AddTokenizer> = RequestBuilder<UserSocialActionResponse, UserSocialActionResponse.UserSocialActionResponseTokenizer, AddTokenizer>(service: "socialaction", action: "add")
			.setBody(key: "socialAction", value: socialAction)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  delete user social action  */
	public static func delete(id: String) -> ArrayRequestBuilder<NetworkActionStatus, ArrayTokenizedObject<NetworkActionStatus.NetworkActionStatusTokenizer>, DeleteTokenizer> {
		let request: ArrayRequestBuilder<NetworkActionStatus, ArrayTokenizedObject<NetworkActionStatus.NetworkActionStatusTokenizer>, DeleteTokenizer> = ArrayRequestBuilder<NetworkActionStatus, ArrayTokenizedObject<NetworkActionStatus.NetworkActionStatusTokenizer>, DeleteTokenizer>(service: "socialaction", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SocialActionFilter.SocialActionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: SocialActionFilter) -> RequestBuilder<SocialActionListResponse, SocialActionListResponse.SocialActionListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Get list of user social actions  */
	public static func list(filter: SocialActionFilter, pager: FilterPager?) -> RequestBuilder<SocialActionListResponse, SocialActionListResponse.SocialActionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SocialActionListResponse, SocialActionListResponse.SocialActionListResponseTokenizer, ListTokenizer> = RequestBuilder<SocialActionListResponse, SocialActionListResponse.SocialActionListResponseTokenizer, ListTokenizer>(service: "socialaction", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
