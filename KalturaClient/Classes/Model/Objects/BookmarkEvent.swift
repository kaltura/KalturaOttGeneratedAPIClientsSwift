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

open class BookmarkEvent: EventObject {

	public class BookmarkEventTokenizer: EventObject.EventObjectTokenizer {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var fileId: BaseTokenizedObject {
			get {
				return self.append("fileId") 
			}
		}
		
		public var position: BaseTokenizedObject {
			get {
				return self.append("position") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var productType: BaseTokenizedObject {
			get {
				return self.append("productType") 
			}
		}
		
		public var productId: BaseTokenizedObject {
			get {
				return self.append("productId") 
			}
		}
	}

	/**  User Id  */
	public var userId: Int64? = nil
	/**  Household Id  */
	public var householdId: Int64? = nil
	/**  Asset Id  */
	public var assetId: Int64? = nil
	/**  File Id  */
	public var fileId: Int64? = nil
	/**  position  */
	public var position: Int? = nil
	/**  Bookmark Action Type  */
	public var action: BookmarkActionType? = nil
	/**  Product Type  */
	public var productType: TransactionType? = nil
	/**  Product Id  */
	public var productId: Int? = nil


	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(fileId: String) {
		self.dict["fileId"] = fileId
	}
	
	public func setMultiRequestToken(position: String) {
		self.dict["position"] = position
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(productType: String) {
		self.dict["productType"] = productType
	}
	
	public func setMultiRequestToken(productId: String) {
		self.dict["productId"] = productId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = Int64("\(dict["userId"]!)")
		}
		if dict["householdId"] != nil {
			householdId = Int64("\(dict["householdId"]!)")
		}
		if dict["assetId"] != nil {
			assetId = Int64("\(dict["assetId"]!)")
		}
		if dict["fileId"] != nil {
			fileId = Int64("\(dict["fileId"]!)")
		}
		if dict["position"] != nil {
			position = dict["position"] as? Int
		}
		if dict["action"] != nil {
			action = BookmarkActionType(rawValue: "\(dict["action"]!)")
		}
		if dict["productType"] != nil {
			productType = TransactionType(rawValue: "\(dict["productType"]!)")
		}
		if dict["productId"] != nil {
			productId = dict["productId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(householdId != nil) {
			dict["householdId"] = householdId!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(fileId != nil) {
			dict["fileId"] = fileId!
		}
		if(position != nil) {
			dict["position"] = position!
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(productType != nil) {
			dict["productType"] = productType!.rawValue
		}
		if(productId != nil) {
			dict["productId"] = productId!
		}
		return dict
	}
}

