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
// Copyright (C) 2006-2019  Kaltura Inc.
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

public final class AssetStructService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func assetStruct<T: AssetStruct.AssetStructTokenizer>() -> T {
			return T(self.append("assetStruct"))
		}
	}

	/**  Add a new assetStruct  */
	public static func add(assetStruct: AssetStruct) -> RequestBuilder<AssetStruct, AssetStruct.AssetStructTokenizer, AddTokenizer> {
		let request: RequestBuilder<AssetStruct, AssetStruct.AssetStructTokenizer, AddTokenizer> = RequestBuilder<AssetStruct, AssetStruct.AssetStructTokenizer, AddTokenizer>(service: "assetstruct", action: "add")
			.setParam(key: "assetStruct", value: assetStruct)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing assetStruct  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "assetstruct", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AssetStructFilter.AssetStructFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<AssetStructListResponse, AssetStructListResponse.AssetStructListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Return a list of asset structs for the account with optional filter  */
	public static func list(filter: AssetStructFilter?) -> RequestBuilder<AssetStructListResponse, AssetStructListResponse.AssetStructListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AssetStructListResponse, AssetStructListResponse.AssetStructListResponseTokenizer, ListTokenizer> = RequestBuilder<AssetStructListResponse, AssetStructListResponse.AssetStructListResponseTokenizer, ListTokenizer>(service: "assetstruct", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func assetStruct<T: AssetStruct.AssetStructTokenizer>() -> T {
			return T(self.append("assetStruct"))
		}
	}

	/**  Update an existing assetStruct  */
	public static func update(id: Int64, assetStruct: AssetStruct) -> RequestBuilder<AssetStruct, AssetStruct.AssetStructTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AssetStruct, AssetStruct.AssetStructTokenizer, UpdateTokenizer> = RequestBuilder<AssetStruct, AssetStruct.AssetStructTokenizer, UpdateTokenizer>(service: "assetstruct", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "assetStruct", value: assetStruct)

		return request
	}
}
