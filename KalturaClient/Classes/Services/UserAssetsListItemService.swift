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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class UserAssetsListItemService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func userAssetsListItem<T: UserAssetsListItem.UserAssetsListItemTokenizer>() -> T {
			return T(self.append("userAssetsListItem"))
		}
	}

	/**  Adds a new item to user’s private asset list  */
	public static func add(userAssetsListItem: UserAssetsListItem) -> RequestBuilder<UserAssetsListItem, UserAssetsListItem.UserAssetsListItemTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserAssetsListItem, UserAssetsListItem.UserAssetsListItemTokenizer, AddTokenizer> = RequestBuilder<UserAssetsListItem, UserAssetsListItem.UserAssetsListItemTokenizer, AddTokenizer>(service: "userassetslistitem", action: "add")
			.setParam(key: "userAssetsListItem", value: userAssetsListItem)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var listType: BaseTokenizedObject {
			get {
				return self.append("listType") 
			}
		}
	}

	/**  Deletes an item from user’s private asset list  */
	public static func delete(assetId: String, listType: UserAssetsListType) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "userassetslistitem", action: "delete")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "listType", value: listType.rawValue)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var listType: BaseTokenizedObject {
			get {
				return self.append("listType") 
			}
		}
		
		public var itemType: BaseTokenizedObject {
			get {
				return self.append("itemType") 
			}
		}
	}

	/**  Get an item from user’s private asset list  */
	public static func get(assetId: String, listType: UserAssetsListType, itemType: UserAssetsListItemType) -> RequestBuilder<UserAssetsListItem, UserAssetsListItem.UserAssetsListItemTokenizer, GetTokenizer> {
		let request: RequestBuilder<UserAssetsListItem, UserAssetsListItem.UserAssetsListItemTokenizer, GetTokenizer> = RequestBuilder<UserAssetsListItem, UserAssetsListItem.UserAssetsListItemTokenizer, GetTokenizer>(service: "userassetslistitem", action: "get")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "listType", value: listType.rawValue)
			.setParam(key: "itemType", value: itemType.rawValue)

		return request
	}
}
