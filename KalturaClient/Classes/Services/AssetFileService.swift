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

public final class AssetFileService{

	public class GetContextTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var contextType: BaseTokenizedObject {
			get {
				return self.append("contextType") 
			}
		}
	}

	/**  get KalturaAssetFileContext  */
	public static func getContext(id: String, contextType: ContextType) -> RequestBuilder<AssetFileContext, AssetFileContext.AssetFileContextTokenizer, GetContextTokenizer> {
		let request: RequestBuilder<AssetFileContext, AssetFileContext.AssetFileContextTokenizer, GetContextTokenizer> = RequestBuilder<AssetFileContext, AssetFileContext.AssetFileContextTokenizer, GetContextTokenizer>(service: "assetfile", action: "getContext")
			.setParam(key: "id", value: id)
			.setParam(key: "contextType", value: contextType.rawValue)

		return request
	}

	public class PlayManifestTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var assetType: BaseTokenizedObject {
			get {
				return self.append("assetType") 
			}
		}
		
		public var assetFileId: BaseTokenizedObject {
			get {
				return self.append("assetFileId") 
			}
		}
		
		public var contextType: BaseTokenizedObject {
			get {
				return self.append("contextType") 
			}
		}
		
		public override var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public var tokenizedUrl: BaseTokenizedObject {
			get {
				return self.append("tokenizedUrl") 
			}
		}
	}

	public static func playManifest(partnerId: Int, assetId: String, assetType: AssetType, assetFileId: Int64, contextType: PlaybackContextType) -> RequestBuilder<AssetFile, AssetFile.AssetFileTokenizer, PlayManifestTokenizer> {
		return playManifest(partnerId: partnerId, assetId: assetId, assetType: assetType, assetFileId: assetFileId, contextType: contextType, ks: nil)
	}

	public static func playManifest(partnerId: Int, assetId: String, assetType: AssetType, assetFileId: Int64, contextType: PlaybackContextType, ks: String?) -> RequestBuilder<AssetFile, AssetFile.AssetFileTokenizer, PlayManifestTokenizer> {
		return playManifest(partnerId: partnerId, assetId: assetId, assetType: assetType, assetFileId: assetFileId, contextType: contextType, ks: ks, tokenizedUrl: nil)
	}

	/**  Redirects to play manifest  */
	public static func playManifest(partnerId: Int, assetId: String, assetType: AssetType, assetFileId: Int64, contextType: PlaybackContextType, ks: String?, tokenizedUrl: String?) -> RequestBuilder<AssetFile, AssetFile.AssetFileTokenizer, PlayManifestTokenizer> {
		let request: RequestBuilder<AssetFile, AssetFile.AssetFileTokenizer, PlayManifestTokenizer> = RequestBuilder<AssetFile, AssetFile.AssetFileTokenizer, PlayManifestTokenizer>(service: "assetfile", action: "playManifest")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "assetType", value: assetType.rawValue)
			.setParam(key: "assetFileId", value: assetFileId)
			.setParam(key: "contextType", value: contextType.rawValue)
			.setParam(key: "ks", value: ks)
			.setParam(key: "tokenizedUrl", value: tokenizedUrl)

		return request
	}
}
