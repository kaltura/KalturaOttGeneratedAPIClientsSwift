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

public final class PasswordPolicyService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: PasswordPolicy.PasswordPolicyTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  Add an object  */
	public static func add(objectToAdd: PasswordPolicy) -> RequestBuilder<PasswordPolicy, PasswordPolicy.PasswordPolicyTokenizer, AddTokenizer> {
		let request: RequestBuilder<PasswordPolicy, PasswordPolicy.PasswordPolicyTokenizer, AddTokenizer> = RequestBuilder<PasswordPolicy, PasswordPolicy.PasswordPolicyTokenizer, AddTokenizer>(service: "passwordpolicy", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: PasswordPolicy.PasswordPolicyTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  Update an object  */
	public static func update(id: Int64, objectToUpdate: PasswordPolicy) -> RequestBuilder<PasswordPolicy, PasswordPolicy.PasswordPolicyTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PasswordPolicy, PasswordPolicy.PasswordPolicyTokenizer, UpdateTokenizer> = RequestBuilder<PasswordPolicy, PasswordPolicy.PasswordPolicyTokenizer, UpdateTokenizer>(service: "passwordpolicy", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an object  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "passwordpolicy", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PasswordPolicyFilter.PasswordPolicyFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list(filter: PasswordPolicyFilter) -> RequestBuilder<PasswordPolicyListResponse, PasswordPolicyListResponse.PasswordPolicyListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PasswordPolicyListResponse, PasswordPolicyListResponse.PasswordPolicyListResponseTokenizer, ListTokenizer> = RequestBuilder<PasswordPolicyListResponse, PasswordPolicyListResponse.PasswordPolicyListResponseTokenizer, ListTokenizer>(service: "passwordpolicy", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
