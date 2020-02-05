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

public final class AssetService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func asset<T: Asset.AssetTokenizer>() -> T {
			return T(self.append("asset"))
		}
	}

	/**  Add a new asset.              For metas of type bool-&amp;gt; use
	  kalturaBoolValue, type number-&amp;gt; KalturaDoubleValue, type date -&amp;gt;
	  KalturaLongValue, type string -&amp;gt; KalturaStringValue  */
	public static func add(asset: Asset) -> RequestBuilder<Asset, Asset.AssetTokenizer, AddTokenizer> {
		let request: RequestBuilder<Asset, Asset.AssetTokenizer, AddTokenizer> = RequestBuilder<Asset, Asset.AssetTokenizer, AddTokenizer>(service: "asset", action: "add")
			.setParam(key: "asset", value: asset)

		return request
	}

	public class AddFromBulkUploadTokenizer: ClientTokenizer  {
		
		public func bulkUploadJobData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadJobData"))
		}
		
		public func bulkUploadAssetData<T: BulkUploadAssetData.BulkUploadAssetDataTokenizer>() -> T {
			return T(self.append("bulkUploadAssetData"))
		}
	}

	/**  Add new bulk upload batch job Conversion profile id can be specified in the API.  */
	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadJobData: BulkUploadJobData, bulkUploadAssetData: BulkUploadAssetData) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer>(service: "asset", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setParam(key: "bulkUploadJobData", value: bulkUploadJobData)
			.setParam(key: "bulkUploadAssetData", value: bulkUploadAssetData)

		return request
	}

	public class CountTokenizer: ClientTokenizer  {
		
		public func filter<T: SearchAssetFilter.SearchAssetFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func count() -> RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer> {
		return count(filter: nil)
	}

	/**  Returns a group-by result for media or EPG according to given filter. Lists
	  values of each field and their respective count.  */
	public static func count(filter: SearchAssetFilter?) -> RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer> {
		let request: RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer> = RequestBuilder<AssetCount, AssetCount.AssetCountTokenizer, CountTokenizer>(service: "asset", action: "count")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
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

	/**  Delete an existing asset  */
	public static func delete(id: Int64, assetReferenceType: AssetReferenceType) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "asset", action: "delete")
			.setParam(key: "id", value: id)
			.setParam(key: "assetReferenceType", value: assetReferenceType.rawValue)

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
			.setParam(key: "id", value: id)
			.setParam(key: "assetReferenceType", value: assetReferenceType.rawValue)

		return request
	}

	public class GetAdsContextTokenizer: ClientTokenizer  {
		
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
		
		public func contextDataParams<T: PlaybackContextOptions.PlaybackContextOptionsTokenizer>() -> T {
			return T(self.append("contextDataParams"))
		}
	}

	/**  Returns the data for ads control  */
	public static func getAdsContext(assetId: String, assetType: AssetType, contextDataParams: PlaybackContextOptions) -> RequestBuilder<AdsContext, AdsContext.AdsContextTokenizer, GetAdsContextTokenizer> {
		let request: RequestBuilder<AdsContext, AdsContext.AdsContextTokenizer, GetAdsContextTokenizer> = RequestBuilder<AdsContext, AdsContext.AdsContextTokenizer, GetAdsContextTokenizer>(service: "asset", action: "getAdsContext")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "assetType", value: assetType.rawValue)
			.setParam(key: "contextDataParams", value: contextDataParams)

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
		
		public func contextDataParams<T: PlaybackContextOptions.PlaybackContextOptionsTokenizer>() -> T {
			return T(self.append("contextDataParams"))
		}
		
		public var sourceType: BaseTokenizedObject {
			get {
				return self.append("sourceType") 
			}
		}
	}

	public static func getPlaybackContext(assetId: String, assetType: AssetType, contextDataParams: PlaybackContextOptions) -> RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer> {
		return getPlaybackContext(assetId: assetId, assetType: assetType, contextDataParams: contextDataParams, sourceType: nil)
	}

	/**  This action delivers all data relevant for player  */
	public static func getPlaybackContext(assetId: String, assetType: AssetType, contextDataParams: PlaybackContextOptions, sourceType: String?) -> RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer> {
		let request: RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer> = RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer>(service: "asset", action: "getPlaybackContext")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "assetType", value: assetType.rawValue)
			.setParam(key: "contextDataParams", value: contextDataParams)
			.setParam(key: "sourceType", value: sourceType)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AssetFilter.AssetFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
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
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RemoveMetasAndTagsTokenizer: ClientTokenizer  {
		
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
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
	}

	/**  remove metas and tags from asset  */
	public static func removeMetasAndTags(id: Int64, assetReferenceType: AssetReferenceType, idIn: String) -> RequestBuilder<Bool, BaseTokenizedObject, RemoveMetasAndTagsTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, RemoveMetasAndTagsTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, RemoveMetasAndTagsTokenizer>(service: "asset", action: "removeMetasAndTags")
			.setParam(key: "id", value: id)
			.setParam(key: "assetReferenceType", value: assetReferenceType.rawValue)
			.setParam(key: "idIn", value: idIn)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func asset<T: Asset.AssetTokenizer>() -> T {
			return T(self.append("asset"))
		}
	}

	/**  update an existing asset.              For metas of type bool-&amp;gt; use
	  kalturaBoolValue, type number-&amp;gt; KalturaDoubleValue, type date -&amp;gt;
	  KalturaLongValue, type string -&amp;gt; KalturaStringValue  */
	public static func update(id: Int64, asset: Asset) -> RequestBuilder<Asset, Asset.AssetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Asset, Asset.AssetTokenizer, UpdateTokenizer> = RequestBuilder<Asset, Asset.AssetTokenizer, UpdateTokenizer>(service: "asset", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "asset", value: asset)

		return request
	}
}
