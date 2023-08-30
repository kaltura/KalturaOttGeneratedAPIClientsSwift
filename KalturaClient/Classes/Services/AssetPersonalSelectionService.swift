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

public final class AssetPersonalSelectionService{

	public class DeleteTokenizer: ClientTokenizer  {
		
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
		
		public var slotNumber: BaseTokenizedObject {
			get {
				return self.append("slotNumber") 
			}
		}
	}

	/**  Remove asset selection in slot  */
	public static func delete(assetId: Int64, assetType: AssetType, slotNumber: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "assetpersonalselection", action: "delete")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "assetType", value: assetType.rawValue)
			.setParam(key: "slotNumber", value: slotNumber)

		return request
	}

	public class DeleteAllTokenizer: ClientTokenizer  {
		
		public var slotNumber: BaseTokenizedObject {
			get {
				return self.append("slotNumber") 
			}
		}
	}

	/**  Remove asset selection in slot  */
	public static func deleteAll(slotNumber: Int) -> NullRequestBuilder<DeleteAllTokenizer> {
		let request: NullRequestBuilder<DeleteAllTokenizer> = NullRequestBuilder<DeleteAllTokenizer>(service: "assetpersonalselection", action: "deleteAll")
			.setParam(key: "slotNumber", value: slotNumber)

		return request
	}

	public class UpsertTokenizer: ClientTokenizer  {
		
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
		
		public var slotNumber: BaseTokenizedObject {
			get {
				return self.append("slotNumber") 
			}
		}
	}

	/**  Add or update asset selection in slot  */
	public static func upsert(assetId: Int64, assetType: AssetType, slotNumber: Int) -> RequestBuilder<AssetPersonalSelection, AssetPersonalSelection.AssetPersonalSelectionTokenizer, UpsertTokenizer> {
		let request: RequestBuilder<AssetPersonalSelection, AssetPersonalSelection.AssetPersonalSelectionTokenizer, UpsertTokenizer> = RequestBuilder<AssetPersonalSelection, AssetPersonalSelection.AssetPersonalSelectionTokenizer, UpsertTokenizer>(service: "assetpersonalselection", action: "upsert")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "assetType", value: assetType.rawValue)
			.setParam(key: "slotNumber", value: slotNumber)

		return request
	}
}
