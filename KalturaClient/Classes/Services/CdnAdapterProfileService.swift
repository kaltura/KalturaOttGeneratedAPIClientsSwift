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

public final class CdnAdapterProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func adapter<T: CDNAdapterProfile.CDNAdapterProfileTokenizer>() -> T {
			return T(self.append("adapter"))
		}
	}

	/**  Insert new CDN adapter for partner  */
	public static func add(adapter: CDNAdapterProfile) -> RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, AddTokenizer> = RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, AddTokenizer>(service: "cdnadapterprofile", action: "add")
			.setParam(key: "adapter", value: adapter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var adapterId: BaseTokenizedObject {
			get {
				return self.append("adapterId") 
			}
		}
	}

	/**  Delete CDN adapter by CDN adapter id  */
	public static func delete(adapterId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "cdnadapterprofile", action: "delete")
			.setParam(key: "adapterId", value: adapterId)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var adapterId: BaseTokenizedObject {
			get {
				return self.append("adapterId") 
			}
		}
	}

	/**  Generate CDN adapter shared secret  */
	public static func generateSharedSecret(adapterId: Int) -> RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, GenerateSharedSecretTokenizer>(service: "cdnadapterprofile", action: "generateSharedSecret")
			.setParam(key: "adapterId", value: adapterId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all CDN adapters for partner  */
	public static func list() -> RequestBuilder<CDNAdapterProfileListResponse, CDNAdapterProfileListResponse.CDNAdapterProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CDNAdapterProfileListResponse, CDNAdapterProfileListResponse.CDNAdapterProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<CDNAdapterProfileListResponse, CDNAdapterProfileListResponse.CDNAdapterProfileListResponseTokenizer, ListTokenizer>(service: "cdnadapterprofile", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var adapterId: BaseTokenizedObject {
			get {
				return self.append("adapterId") 
			}
		}
		
		public func adapter<T: CDNAdapterProfile.CDNAdapterProfileTokenizer>() -> T {
			return T(self.append("adapter"))
		}
	}

	/**  Update CDN adapter details  */
	public static func update(adapterId: Int, adapter: CDNAdapterProfile) -> RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, UpdateTokenizer> = RequestBuilder<CDNAdapterProfile, CDNAdapterProfile.CDNAdapterProfileTokenizer, UpdateTokenizer>(service: "cdnadapterprofile", action: "update")
			.setParam(key: "adapterId", value: adapterId)
			.setParam(key: "adapter", value: adapter)

		return request
	}
}
