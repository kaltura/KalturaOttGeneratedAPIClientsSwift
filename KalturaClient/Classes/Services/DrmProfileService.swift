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

public final class DrmProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func drmProfile<T: DrmProfile.DrmProfileTokenizer>() -> T {
			return T(self.append("drmProfile"))
		}
	}

	/**  Internal API !!! Insert new DrmProfile  */
	public static func add(drmProfile: DrmProfile) -> RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, AddTokenizer> = RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, AddTokenizer>(service: "drmprofile", action: "add")
			.setParam(key: "drmProfile", value: drmProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Internal API !!! Delete DrmProfile  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "drmprofile", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all DRM adapters for partner  */
	public static func list() -> RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer>(service: "drmprofile", action: "list")

		return request
	}
}
