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

public final class HouseholdUserService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func householdUser<T: HouseholdUser.HouseholdUserTokenizer>() -> T {
			return T(self.append("householdUser"))
		}
	}

	/**  Adds a user to household  */
	public static func add(householdUser: HouseholdUser) -> RequestBuilder<HouseholdUser, HouseholdUser.HouseholdUserTokenizer, AddTokenizer> {
		let request: RequestBuilder<HouseholdUser, HouseholdUser.HouseholdUserTokenizer, AddTokenizer> = RequestBuilder<HouseholdUser, HouseholdUser.HouseholdUserTokenizer, AddTokenizer>(service: "householduser", action: "add")
			.setBody(key: "householdUser", value: householdUser)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Removes a user from household  */
	public static func delete(id: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "householduser", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: HouseholdUserFilter.HouseholdUserFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<HouseholdUserListResponse, HouseholdUserListResponse.HouseholdUserListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns the users within the household  */
	public static func list(filter: HouseholdUserFilter?) -> RequestBuilder<HouseholdUserListResponse, HouseholdUserListResponse.HouseholdUserListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdUserListResponse, HouseholdUserListResponse.HouseholdUserListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdUserListResponse, HouseholdUserListResponse.HouseholdUserListResponseTokenizer, ListTokenizer>(service: "householduser", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}
}
