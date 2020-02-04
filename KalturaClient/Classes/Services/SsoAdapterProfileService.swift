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

public final class SsoAdapterProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func ssoAdapter<T: SSOAdapterProfile.SSOAdapterProfileTokenizer>() -> T {
			return T(self.append("ssoAdapter"))
		}
	}

	/**  Insert new sso adapter for partner  */
	public static func add(ssoAdapter: SSOAdapterProfile) -> RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, AddTokenizer> = RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, AddTokenizer>(service: "ssoadapterprofile", action: "add")
			.setParam(key: "ssoAdapter", value: ssoAdapter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var ssoAdapterId: BaseTokenizedObject {
			get {
				return self.append("ssoAdapterId") 
			}
		}
	}

	/**  Delete sso adapters by sso adapters id  */
	public static func delete(ssoAdapterId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "ssoadapterprofile", action: "delete")
			.setParam(key: "ssoAdapterId", value: ssoAdapterId)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var ssoAdapterId: BaseTokenizedObject {
			get {
				return self.append("ssoAdapterId") 
			}
		}
	}

	/**  Generate SSO Adapter shared secret  */
	public static func generateSharedSecret(ssoAdapterId: Int) -> RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, GenerateSharedSecretTokenizer>(service: "ssoadapterprofile", action: "generateSharedSecret")
			.setParam(key: "ssoAdapterId", value: ssoAdapterId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all sso adapters for partner : id + name  */
	public static func list() -> RequestBuilder<SSOAdapterProfileListResponse, SSOAdapterProfileListResponse.SSOAdapterProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SSOAdapterProfileListResponse, SSOAdapterProfileListResponse.SSOAdapterProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<SSOAdapterProfileListResponse, SSOAdapterProfileListResponse.SSOAdapterProfileListResponseTokenizer, ListTokenizer>(service: "ssoadapterprofile", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var ssoAdapterId: BaseTokenizedObject {
			get {
				return self.append("ssoAdapterId") 
			}
		}
		
		public func ssoAdapter<T: SSOAdapterProfile.SSOAdapterProfileTokenizer>() -> T {
			return T(self.append("ssoAdapter"))
		}
	}

	/**  Update sso adapter details  */
	public static func update(ssoAdapterId: Int, ssoAdapter: SSOAdapterProfile) -> RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, UpdateTokenizer> = RequestBuilder<SSOAdapterProfile, SSOAdapterProfile.SSOAdapterProfileTokenizer, UpdateTokenizer>(service: "ssoadapterprofile", action: "update")
			.setParam(key: "ssoAdapterId", value: ssoAdapterId)
			.setParam(key: "ssoAdapter", value: ssoAdapter)

		return request
	}
}
