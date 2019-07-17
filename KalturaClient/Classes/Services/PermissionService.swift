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

public final class PermissionService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func permission<T: Permission.PermissionTokenizer>() -> T {
			return T(self.append("permission"))
		}
	}

	/**  Adds new permission  */
	public static func add(permission: Permission) -> RequestBuilder<Permission, Permission.PermissionTokenizer, AddTokenizer> {
		let request: RequestBuilder<Permission, Permission.PermissionTokenizer, AddTokenizer> = RequestBuilder<Permission, Permission.PermissionTokenizer, AddTokenizer>(service: "permission", action: "add")
			.setParam(key: "permission", value: permission)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Deletes an existing permission  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "permission", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetCurrentPermissionsTokenizer: ClientTokenizer  {
	}

	/**  Returns permission names as comma separated string  */
	public static func getCurrentPermissions() -> RequestBuilder<String, BaseTokenizedObject, GetCurrentPermissionsTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetCurrentPermissionsTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetCurrentPermissionsTokenizer>(service: "permission", action: "getCurrentPermissions")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PermissionFilter.PermissionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Retrieving permissions by identifiers, if filter is empty, returns all partner
	  permissions  */
	public static func list(filter: PermissionFilter?) -> RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer> = RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer>(service: "permission", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
