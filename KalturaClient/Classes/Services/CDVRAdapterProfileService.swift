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

public final class CDVRAdapterProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func adapter<T: CDVRAdapterProfile.CDVRAdapterProfileTokenizer>() -> T {
			return T(self.append("adapter"))
		}
	}

	/**  Insert new C-DVR adapter for partner  */
	public static func add(adapter: CDVRAdapterProfile) -> RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, AddTokenizer> = RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, AddTokenizer>(service: "cdvradapterprofile", action: "add")
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

	/**  Delete C-DVR adapter by C-DVR adapter id  */
	public static func delete(adapterId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "cdvradapterprofile", action: "delete")
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

	/**  Generate C-DVR adapter shared secret  */
	public static func generateSharedSecret(adapterId: Int) -> RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, GenerateSharedSecretTokenizer>(service: "cdvradapterprofile", action: "generateSharedSecret")
			.setParam(key: "adapterId", value: adapterId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all C-DVR adapters for partner  */
	public static func list() -> RequestBuilder<CDVRAdapterProfileListResponse, CDVRAdapterProfileListResponse.CDVRAdapterProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CDVRAdapterProfileListResponse, CDVRAdapterProfileListResponse.CDVRAdapterProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<CDVRAdapterProfileListResponse, CDVRAdapterProfileListResponse.CDVRAdapterProfileListResponseTokenizer, ListTokenizer>(service: "cdvradapterprofile", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var adapterId: BaseTokenizedObject {
			get {
				return self.append("adapterId") 
			}
		}
		
		public func adapter<T: CDVRAdapterProfile.CDVRAdapterProfileTokenizer>() -> T {
			return T(self.append("adapter"))
		}
	}

	/**  Update C-DVR adapter details  */
	public static func update(adapterId: Int, adapter: CDVRAdapterProfile) -> RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, UpdateTokenizer> = RequestBuilder<CDVRAdapterProfile, CDVRAdapterProfile.CDVRAdapterProfileTokenizer, UpdateTokenizer>(service: "cdvradapterprofile", action: "update")
			.setParam(key: "adapterId", value: adapterId)
			.setParam(key: "adapter", value: adapter)

		return request
	}
}
