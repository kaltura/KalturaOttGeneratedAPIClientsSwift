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

public final class AssetStructMetaService{

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AssetStructMetaFilter.AssetStructMetaFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Return a list of asset struct metas for the account with optional filter  */
	public static func list(filter: AssetStructMetaFilter) -> RequestBuilder<AssetStructMetaListResponse, AssetStructMetaListResponse.AssetStructMetaListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AssetStructMetaListResponse, AssetStructMetaListResponse.AssetStructMetaListResponseTokenizer, ListTokenizer> = RequestBuilder<AssetStructMetaListResponse, AssetStructMetaListResponse.AssetStructMetaListResponseTokenizer, ListTokenizer>(service: "assetstructmeta", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var assetStructId: BaseTokenizedObject {
			get {
				return self.append("assetStructId") 
			}
		}
		
		public var metaId: BaseTokenizedObject {
			get {
				return self.append("metaId") 
			}
		}
		
		public func assetStructMeta<T: AssetStructMeta.AssetStructMetaTokenizer>() -> T {
			return T(self.append("assetStructMeta"))
		}
	}

	/**  Update Asset struct meta  */
	public static func update(assetStructId: Int64, metaId: Int64, assetStructMeta: AssetStructMeta) -> RequestBuilder<AssetStructMeta, AssetStructMeta.AssetStructMetaTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AssetStructMeta, AssetStructMeta.AssetStructMetaTokenizer, UpdateTokenizer> = RequestBuilder<AssetStructMeta, AssetStructMeta.AssetStructMetaTokenizer, UpdateTokenizer>(service: "assetstructmeta", action: "update")
			.setParam(key: "assetStructId", value: assetStructId)
			.setParam(key: "metaId", value: metaId)
			.setParam(key: "assetStructMeta", value: assetStructMeta)

		return request
	}
}
