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

public final class AssetService{

	public class CountTokenizer: ClientTokenizer  {
		
		public var filter: SearchAssetFilter.SearchAssetFilterTokenizer {
			get {
				return SearchAssetFilter.SearchAssetFilterTokenizer(self.append("filter")) 
			}
		}
	}

	public static func count() -> RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer> {
		return count(filter: nil)
	}

	/**  Returns a group-by result for media or EPG according to given filter. Lists
	  values of each field and their respective count.  */
	public static func count(filter: SearchAssetFilter?) -> RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer> {
		let request: RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer> = RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer>(service: "asset", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var assetReferenceType: BaseTokenizedObject {
			get {
				return self.append("assetReferenceType") 
			}
		}
	}

	/**  Returns media or EPG asset by media / EPG internal or external identifier  */
	public static func get(id: String, assetReferenceType: AssetReferenceType) -> RequestBuilder<Asset, Asset.AssetTokenizer, GetTokenizer> {
		let request: RequestBuilder<Asset, Asset.AssetTokenizer, GetTokenizer> = RequestBuilder<Asset, Asset.AssetTokenizer, GetTokenizer>(service: "asset", action: "get")
			.setBody(key: "id", value: id)
			.setBody(key: "assetReferenceType", value: assetReferenceType.rawValue)

		return request
	}

	public class GetPlaybackContextTokenizer: ClientTokenizer  {
		
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
		
		public var contextDataParams: PlaybackContextOptions.PlaybackContextOptionsTokenizer {
			get {
				return PlaybackContextOptions.PlaybackContextOptionsTokenizer(self.append("contextDataParams")) 
			}
		}
	}

	/**  This action delivers all data relevant for player  */
	public static func getPlaybackContext(assetId: String, assetType: AssetType, contextDataParams: PlaybackContextOptions) -> RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer> {
		let request: RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer> = RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer>(service: "asset", action: "getPlaybackContext")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "assetType", value: assetType.rawValue)
			.setBody(key: "contextDataParams", value: contextDataParams)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: AssetFilter.AssetFilterTokenizer {
			get {
				return AssetFilter.AssetFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<AssetListResponse, AssetListResponse.AssetListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<AssetListResponse, AssetListResponse.AssetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Returns media or EPG assets. Filters by media identifiers or by EPG internal or
	  external identifier.  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<AssetListResponse, AssetListResponse.AssetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AssetListResponse, AssetListResponse.AssetListResponseTokenizer, ListTokenizer> = RequestBuilder<AssetListResponse, AssetListResponse.AssetListResponseTokenizer, ListTokenizer>(service: "asset", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
