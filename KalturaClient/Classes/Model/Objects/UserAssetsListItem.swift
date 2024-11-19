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

/**  An item of user asset list  */
open class UserAssetsListItem: ObjectBase {

	public class UserAssetsListItemTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var orderIndex: BaseTokenizedObject {
			get {
				return self.append("orderIndex") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var listType: BaseTokenizedObject {
			get {
				return self.append("listType") 
			}
		}
	}

	/**  Asset identifier  */
	public var id: String? = nil
	/**  The order index of the asset in the list  */
	public var orderIndex: Int? = nil
	/**  The type of the asset  */
	public var type: UserAssetsListItemType? = nil
	/**  The identifier of the user who added the item to the list  */
	public var userId: String? = nil
	/**  The type of the list, all is not supported  */
	public var listType: UserAssetsListType? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(orderIndex: String) {
		self.dict["orderIndex"] = orderIndex
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(listType: String) {
		self.dict["listType"] = listType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["orderIndex"] != nil {
			orderIndex = dict["orderIndex"] as? Int
		}
		if dict["type"] != nil {
			type = UserAssetsListItemType(rawValue: "\(dict["type"]!)")
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["listType"] != nil {
			listType = UserAssetsListType(rawValue: "\(dict["listType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(orderIndex != nil) {
			dict["orderIndex"] = orderIndex!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(listType != nil) {
			dict["listType"] = listType!.rawValue
		}
		return dict
	}
}

