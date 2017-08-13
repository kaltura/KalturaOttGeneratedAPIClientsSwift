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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class ExternalChannelProfileService{

	/**  Insert new External channel for partner  */
	public static func add(externalChannel: ExternalChannelProfile) -> RequestBuilder<ExternalChannelProfile> {
		let request: RequestBuilder<ExternalChannelProfile> = RequestBuilder<ExternalChannelProfile>(service: "externalchannelprofile", action: "add")
			.setBody(key: "externalChannel", value: externalChannel)

		return request
	}

	/**  Delete External channel by External channel id  */
	public static func delete(externalChannelId: Int) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "externalchannelprofile", action: "delete")
			.setBody(key: "externalChannelId", value: externalChannelId)

		return request
	}

	/**  Returns all External channels for partner  */
	public static func list() -> RequestBuilder<ExternalChannelProfileListResponse> {
		let request: RequestBuilder<ExternalChannelProfileListResponse> = RequestBuilder<ExternalChannelProfileListResponse>(service: "externalchannelprofile", action: "list")

		return request
	}

	/**  Update External channel details  */
	public static func update(externalChannelId: Int, externalChannel: ExternalChannelProfile) -> RequestBuilder<ExternalChannelProfile> {
		let request: RequestBuilder<ExternalChannelProfile> = RequestBuilder<ExternalChannelProfile>(service: "externalchannelprofile", action: "update")
			.setBody(key: "externalChannelId", value: externalChannelId)
			.setBody(key: "externalChannel", value: externalChannel)

		return request
	}
}
