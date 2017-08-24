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

public final class OssAdapterProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var ossAdapter: OSSAdapterProfile.OSSAdapterProfileTokenizer {
			get {
				return OSSAdapterProfile.OSSAdapterProfileTokenizer(self.append("ossAdapter")) 
			}
		}
	}

	/**  Insert new OSS adapter for partner  */
	public static func add(ossAdapter: OSSAdapterProfile) -> RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, AddTokenizer> = RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, AddTokenizer>(service: "ossadapterprofile", action: "add")
			.setBody(key: "ossAdapter", value: ossAdapter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var ossAdapterId: BaseTokenizedObject {
			get {
				return self.append("ossAdapterId") 
			}
		}
	}

	/**  Delete OSS adapter by OSS adapter id  */
	public static func delete(ossAdapterId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "ossadapterprofile", action: "delete")
			.setBody(key: "ossAdapterId", value: ossAdapterId)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var ossAdapterId: BaseTokenizedObject {
			get {
				return self.append("ossAdapterId") 
			}
		}
	}

	/**  Generate oss adapter shared secret  */
	public static func generateSharedSecret(ossAdapterId: Int) -> RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, GenerateSharedSecretTokenizer>(service: "ossadapterprofile", action: "generateSharedSecret")
			.setBody(key: "ossAdapterId", value: ossAdapterId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Returns all OSS adapters for partner : id + name  */
	public static func get(id: Int) -> RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, GetTokenizer> = RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, GetTokenizer>(service: "ossadapterprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all OSS adapters for partner : id + name  */
	public static func list() -> RequestBuilder<OSSAdapterProfileListResponse, OSSAdapterProfileListResponse.OSSAdapterProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<OSSAdapterProfileListResponse, OSSAdapterProfileListResponse.OSSAdapterProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<OSSAdapterProfileListResponse, OSSAdapterProfileListResponse.OSSAdapterProfileListResponseTokenizer, ListTokenizer>(service: "ossadapterprofile", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var ossAdapterId: BaseTokenizedObject {
			get {
				return self.append("ossAdapterId") 
			}
		}
		
		public var ossAdapter: OSSAdapterProfile.OSSAdapterProfileTokenizer {
			get {
				return OSSAdapterProfile.OSSAdapterProfileTokenizer(self.append("ossAdapter")) 
			}
		}
	}

	/**  Update OSS adapter details  */
	public static func update(ossAdapterId: Int, ossAdapter: OSSAdapterProfile) -> RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, UpdateTokenizer> = RequestBuilder<OSSAdapterProfile, OSSAdapterProfile.OSSAdapterProfileTokenizer, UpdateTokenizer>(service: "ossadapterprofile", action: "update")
			.setBody(key: "ossAdapterId", value: ossAdapterId)
			.setBody(key: "ossAdapter", value: ossAdapter)

		return request
	}
}
