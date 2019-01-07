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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class UserRoleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func role<T: UserRole.UserRoleTokenizer>() -> T {
			return T(self.append("role"))
		}
	}

	/**  Creates a new role  */
	public static func add(role: UserRole) -> RequestBuilder<UserRole, UserRole.UserRoleTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserRole, UserRole.UserRoleTokenizer, AddTokenizer> = RequestBuilder<UserRole, UserRole.UserRoleTokenizer, AddTokenizer>(service: "userrole", action: "add")
			.setParam(key: "role", value: role)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete role  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "userrole", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserRoleFilter.UserRoleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Retrieving user roles by identifiers, if filter is empty, returns all partner
	  roles  */
	public static func list(filter: UserRoleFilter?) -> RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer> = RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer>(service: "userrole", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func role<T: UserRole.UserRoleTokenizer>() -> T {
			return T(self.append("role"))
		}
	}

	/**  Update role  */
	public static func update(id: Int64, role: UserRole) -> RequestBuilder<UserRole, UserRole.UserRoleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<UserRole, UserRole.UserRoleTokenizer, UpdateTokenizer> = RequestBuilder<UserRole, UserRole.UserRoleTokenizer, UpdateTokenizer>(service: "userrole", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "role", value: role)

		return request
	}
}
