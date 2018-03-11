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

public final class UserInterestService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func userInterest<T: UserInterest.UserInterestTokenizer>() -> T {
			return T(self.append("userInterest"))
		}
	}

	/**  Insert new user interest for partner user  */
	public static func add(userInterest: UserInterest) -> RequestBuilder<UserInterest, UserInterest.UserInterestTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserInterest, UserInterest.UserInterestTokenizer, AddTokenizer> = RequestBuilder<UserInterest, UserInterest.UserInterestTokenizer, AddTokenizer>(service: "userinterest", action: "add")
			.setParam(key: "userInterest", value: userInterest)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete new user interest for partner user  */
	public static func delete(id: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "userinterest", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class DeleteWithTokenTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
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

	/**  Delete new user interest for partner user  */
	public static func deleteWithToken(id: String, token: String, partnerId: Int) -> NullRequestBuilder<DeleteWithTokenTokenizer> {
		let request: NullRequestBuilder<DeleteWithTokenTokenizer> = NullRequestBuilder<DeleteWithTokenTokenizer>(service: "userinterest", action: "deleteWithToken")
			.setParam(key: "id", value: id)
			.setParam(key: "token", value: token)
			.setParam(key: "partnerId", value: partnerId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all Engagement for partner  */
	public static func list() -> RequestBuilder<UserInterestListResponse, UserInterestListResponse.UserInterestListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserInterestListResponse, UserInterestListResponse.UserInterestListResponseTokenizer, ListTokenizer> = RequestBuilder<UserInterestListResponse, UserInterestListResponse.UserInterestListResponseTokenizer, ListTokenizer>(service: "userinterest", action: "list")

		return request
	}
}
