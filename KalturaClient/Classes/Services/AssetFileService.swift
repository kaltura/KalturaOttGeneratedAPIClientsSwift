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

public final class AssetFileService{

	/**  get KalturaAssetFileContext  */
	public static func getContext(id: String, contextType: ContextType) -> RequestBuilder<AssetFileContext> {
		let request: RequestBuilder<AssetFileContext> = RequestBuilder<AssetFileContext>(service: "assetfile", action: "getContext")
			.setBody(key: "id", value: id)
			.setBody(key: "contextType", value: contextType.rawValue)

		return request
	}

	public static func playManifest(partnerId: Int, assetId: String, assetType: AssetType, assetFileId: Int64, contextType: PlaybackContextType) -> RequestBuilder<Void> {
		return playManifest(partnerId: partnerId, assetId: assetId, assetType: assetType, assetFileId: assetFileId, contextType: contextType, ks: nil)
	}

	/**  Redirects to play manifest  */
	public static func playManifest(partnerId: Int, assetId: String, assetType: AssetType, assetFileId: Int64, contextType: PlaybackContextType, ks: String?) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "assetfile", action: "playManifest")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "assetType", value: assetType.rawValue)
			.setBody(key: "assetFileId", value: assetFileId)
			.setBody(key: "contextType", value: contextType.rawValue)
			.setBody(key: "ks", value: ks)

		return request
	}
}
