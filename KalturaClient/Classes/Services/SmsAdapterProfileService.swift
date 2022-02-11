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

public final class SmsAdapterProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: SmsAdapterProfile.SmsAdapterProfileTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  Add an object  */
	public static func add(objectToAdd: SmsAdapterProfile) -> RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, AddTokenizer> = RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, AddTokenizer>(service: "smsadapterprofile", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: SmsAdapterProfile.SmsAdapterProfileTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  Update an object  */
	public static func update(id: Int64, objectToUpdate: SmsAdapterProfile) -> RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, UpdateTokenizer> = RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, UpdateTokenizer>(service: "smsadapterprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get an object  */
	public static func get(id: Int64) -> RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, GetTokenizer> = RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, GetTokenizer>(service: "smsadapterprofile", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SmsAdapterProfileFilter.SmsAdapterProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list(filter: SmsAdapterProfileFilter) -> RequestBuilder<SmsAdapterProfileListResponse, SmsAdapterProfileListResponse.SmsAdapterProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SmsAdapterProfileListResponse, SmsAdapterProfileListResponse.SmsAdapterProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<SmsAdapterProfileListResponse, SmsAdapterProfileListResponse.SmsAdapterProfileListResponseTokenizer, ListTokenizer>(service: "smsadapterprofile", action: "list")
			.setParam(key: "filter", value: filter)

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
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "smsadapterprofile", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var smsAdapterId: BaseTokenizedObject {
			get {
				return self.append("smsAdapterId") 
			}
		}
	}

	/**  Generate Sms Adapter shared secret  */
	public static func generateSharedSecret(smsAdapterId: Int) -> RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<SmsAdapterProfile, SmsAdapterProfile.SmsAdapterProfileTokenizer, GenerateSharedSecretTokenizer>(service: "smsadapterprofile", action: "generateSharedSecret")
			.setParam(key: "smsAdapterId", value: smsAdapterId)

		return request
	}
}
