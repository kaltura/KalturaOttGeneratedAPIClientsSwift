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

public final class ExternalChannelProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func externalChannel<T: ExternalChannelProfile.ExternalChannelProfileTokenizer>() -> T {
			return T(self.append("externalChannel"))
		}
	}

	/**  Insert new External channel for partner  */
	public static func add(externalChannel: ExternalChannelProfile) -> RequestBuilder<ExternalChannelProfile, ExternalChannelProfile.ExternalChannelProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<ExternalChannelProfile, ExternalChannelProfile.ExternalChannelProfileTokenizer, AddTokenizer> = RequestBuilder<ExternalChannelProfile, ExternalChannelProfile.ExternalChannelProfileTokenizer, AddTokenizer>(service: "externalchannelprofile", action: "add")
			.setParam(key: "externalChannel", value: externalChannel)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var externalChannelId: BaseTokenizedObject {
			get {
				return self.append("externalChannelId") 
			}
		}
	}

	/**  Delete External channel by External channel id  */
	public static func delete(externalChannelId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "externalchannelprofile", action: "delete")
			.setParam(key: "externalChannelId", value: externalChannelId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all External channels for partner  */
	public static func list() -> RequestBuilder<ExternalChannelProfileListResponse, ExternalChannelProfileListResponse.ExternalChannelProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ExternalChannelProfileListResponse, ExternalChannelProfileListResponse.ExternalChannelProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<ExternalChannelProfileListResponse, ExternalChannelProfileListResponse.ExternalChannelProfileListResponseTokenizer, ListTokenizer>(service: "externalchannelprofile", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var externalChannelId: BaseTokenizedObject {
			get {
				return self.append("externalChannelId") 
			}
		}
		
		public func externalChannel<T: ExternalChannelProfile.ExternalChannelProfileTokenizer>() -> T {
			return T(self.append("externalChannel"))
		}
	}

	/**  Update External channel details  */
	public static func update(externalChannelId: Int, externalChannel: ExternalChannelProfile) -> RequestBuilder<ExternalChannelProfile, ExternalChannelProfile.ExternalChannelProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ExternalChannelProfile, ExternalChannelProfile.ExternalChannelProfileTokenizer, UpdateTokenizer> = RequestBuilder<ExternalChannelProfile, ExternalChannelProfile.ExternalChannelProfileTokenizer, UpdateTokenizer>(service: "externalchannelprofile", action: "update")
			.setParam(key: "externalChannelId", value: externalChannelId)
			.setParam(key: "externalChannel", value: externalChannel)

		return request
	}
}
