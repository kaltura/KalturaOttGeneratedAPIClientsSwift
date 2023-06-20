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

public final class PlaybackProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func playbackProfile<T: PlaybackProfile.PlaybackProfileTokenizer>() -> T {
			return T(self.append("playbackProfile"))
		}
	}

	/**  Insert new Playback adapter for partner  */
	public static func add(playbackProfile: PlaybackProfile) -> RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, AddTokenizer> = RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, AddTokenizer>(service: "playbackprofile", action: "add")
			.setParam(key: "playbackProfile", value: playbackProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Playback adapter by Playback adapter id  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "playbackprofile", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Generate playback adapter shared secret  */
	public static func generateSharedSecret(id: Int) -> RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, GenerateSharedSecretTokenizer>(service: "playbackprofile", action: "generateSharedSecret")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PlaybackProfileFilter.PlaybackProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<PlaybackProfileListResponse, PlaybackProfileListResponse.PlaybackProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns all playback profiles for partner : id + name  */
	public static func list(filter: PlaybackProfileFilter?) -> RequestBuilder<PlaybackProfileListResponse, PlaybackProfileListResponse.PlaybackProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PlaybackProfileListResponse, PlaybackProfileListResponse.PlaybackProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<PlaybackProfileListResponse, PlaybackProfileListResponse.PlaybackProfileListResponseTokenizer, ListTokenizer>(service: "playbackprofile", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func playbackProfile<T: PlaybackProfile.PlaybackProfileTokenizer>() -> T {
			return T(self.append("playbackProfile"))
		}
	}

	/**  Update Playback adapter details  */
	public static func update(id: Int, playbackProfile: PlaybackProfile) -> RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, UpdateTokenizer> = RequestBuilder<PlaybackProfile, PlaybackProfile.PlaybackProfileTokenizer, UpdateTokenizer>(service: "playbackprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "playbackProfile", value: playbackProfile)

		return request
	}
}
