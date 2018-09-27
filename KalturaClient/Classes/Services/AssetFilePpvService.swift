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
// Copyright (C) 2006-2018  Kaltura Inc.
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

public final class AssetFilePpvService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func assetFilePpv<T: AssetFilePpv.AssetFilePpvTokenizer>() -> T {
			return T(self.append("assetFilePpv"))
		}
	}

	/**  Add asset file ppv  */
	public static func add(assetFilePpv: AssetFilePpv) -> RequestBuilder<AssetFilePpv, AssetFilePpv.AssetFilePpvTokenizer, AddTokenizer> {
		let request: RequestBuilder<AssetFilePpv, AssetFilePpv.AssetFilePpvTokenizer, AddTokenizer> = RequestBuilder<AssetFilePpv, AssetFilePpv.AssetFilePpvTokenizer, AddTokenizer>(service: "assetfileppv", action: "add")
			.setParam(key: "assetFilePpv", value: assetFilePpv)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var assetFileId: BaseTokenizedObject {
			get {
				return self.append("assetFileId") 
			}
		}
		
		public var ppvModuleId: BaseTokenizedObject {
			get {
				return self.append("ppvModuleId") 
			}
		}
	}

	/**  Delete asset file ppv  */
	public static func delete(assetFileId: Int64, ppvModuleId: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "assetfileppv", action: "delete")
			.setParam(key: "assetFileId", value: assetFileId)
			.setParam(key: "ppvModuleId", value: ppvModuleId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AssetFilePpvFilter.AssetFilePpvFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Return a list of asset files ppvs for the account with optional filter  */
	public static func list(filter: AssetFilePpvFilter) -> RequestBuilder<AssetFilePpvListResponse, AssetFilePpvListResponse.AssetFilePpvListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AssetFilePpvListResponse, AssetFilePpvListResponse.AssetFilePpvListResponseTokenizer, ListTokenizer> = RequestBuilder<AssetFilePpvListResponse, AssetFilePpvListResponse.AssetFilePpvListResponseTokenizer, ListTokenizer>(service: "assetfileppv", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var assetFileId: BaseTokenizedObject {
			get {
				return self.append("assetFileId") 
			}
		}
		
		public var ppvModuleId: BaseTokenizedObject {
			get {
				return self.append("ppvModuleId") 
			}
		}
		
		public func assetFilePpv<T: AssetFilePpv.AssetFilePpvTokenizer>() -> T {
			return T(self.append("assetFilePpv"))
		}
	}

	/**  Update assetFilePpv  */
	public static func update(assetFileId: Int64, ppvModuleId: Int64, assetFilePpv: AssetFilePpv) -> RequestBuilder<AssetFilePpv, AssetFilePpv.AssetFilePpvTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AssetFilePpv, AssetFilePpv.AssetFilePpvTokenizer, UpdateTokenizer> = RequestBuilder<AssetFilePpv, AssetFilePpv.AssetFilePpvTokenizer, UpdateTokenizer>(service: "assetfileppv", action: "update")
			.setParam(key: "assetFileId", value: assetFileId)
			.setParam(key: "ppvModuleId", value: ppvModuleId)
			.setParam(key: "assetFilePpv", value: assetFilePpv)

		return request
	}
}
