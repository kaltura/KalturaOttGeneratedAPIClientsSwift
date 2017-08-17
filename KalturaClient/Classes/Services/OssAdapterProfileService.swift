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

	/**  Insert new OSS adapter for partner  */
	public static func add(ossAdapter: OSSAdapterProfile) -> RequestBuilder<OSSAdapterProfile> {
		let request: RequestBuilder<OSSAdapterProfile> = RequestBuilder<OSSAdapterProfile>(service: "ossadapterprofile", action: "add")
			.setBody(key: "ossAdapter", value: ossAdapter)

		return request
	}

	/**  Delete OSS adapter by OSS adapter id  */
	public static func delete(ossAdapterId: Int) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "ossadapterprofile", action: "delete")
			.setBody(key: "ossAdapterId", value: ossAdapterId)

		return request
	}

	/**  Generate oss adapter shared secret  */
	public static func generateSharedSecret(ossAdapterId: Int) -> RequestBuilder<OSSAdapterProfile> {
		let request: RequestBuilder<OSSAdapterProfile> = RequestBuilder<OSSAdapterProfile>(service: "ossadapterprofile", action: "generateSharedSecret")
			.setBody(key: "ossAdapterId", value: ossAdapterId)

		return request
	}

	/**  Returns all OSS adapters for partner : id + name  */
	public static func get(id: Int) -> RequestBuilder<OSSAdapterProfile> {
		let request: RequestBuilder<OSSAdapterProfile> = RequestBuilder<OSSAdapterProfile>(service: "ossadapterprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Returns all OSS adapters for partner : id + name  */
	public static func list() -> RequestBuilder<OSSAdapterProfileListResponse> {
		let request: RequestBuilder<OSSAdapterProfileListResponse> = RequestBuilder<OSSAdapterProfileListResponse>(service: "ossadapterprofile", action: "list")

		return request
	}

	/**  Update OSS adapter details  */
	public static func update(ossAdapterId: Int, ossAdapter: OSSAdapterProfile) -> RequestBuilder<OSSAdapterProfile> {
		let request: RequestBuilder<OSSAdapterProfile> = RequestBuilder<OSSAdapterProfile>(service: "ossadapterprofile", action: "update")
			.setBody(key: "ossAdapterId", value: ossAdapterId)
			.setBody(key: "ossAdapter", value: ossAdapter)

		return request
	}
}
