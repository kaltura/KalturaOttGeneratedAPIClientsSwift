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

/**  Category details  */
open class CategoryVersion: CrudObject {

	public class CategoryVersionTokenizer: CrudObject.CrudObjectTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var treeId: BaseTokenizedObject {
			get {
				return self.append("treeId") 
			}
		}
		
		public var state: BaseTokenizedObject {
			get {
				return self.append("state") 
			}
		}
		
		public var baseVersionId: BaseTokenizedObject {
			get {
				return self.append("baseVersionId") 
			}
		}
		
		public var categoryRootId: BaseTokenizedObject {
			get {
				return self.append("categoryRootId") 
			}
		}
		
		public var defaultDate: BaseTokenizedObject {
			get {
				return self.append("defaultDate") 
			}
		}
		
		public var updaterId: BaseTokenizedObject {
			get {
				return self.append("updaterId") 
			}
		}
		
		public var comment: BaseTokenizedObject {
			get {
				return self.append("comment") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
	}

	/**  Unique identifier for the category version  */
	public var id: Int64? = nil
	/**  Category version name  */
	public var name: String? = nil
	/**  Category tree identifier  */
	public var treeId: Int64? = nil
	/**  The category version state  */
	public var state: CategoryVersionState? = nil
	/**  The version id that this version was created from  */
	public var baseVersionId: Int64? = nil
	/**  The root of category item id that was created for this version  */
	public var categoryRootId: Int64? = nil
	/**  The date that this version became default represented as epoch.  */
	public var defaultDate: Int64? = nil
	/**  Last updater user id.  */
	public var updaterId: Int64? = nil
	/**  Comment.  */
	public var comment: String? = nil
	/**  The date that this version was created represented as epoch.  */
	public var createDate: Int64? = nil
	/**  The date that this version was last updated represented as epoch.  */
	public var updateDate: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(treeId: String) {
		self.dict["treeId"] = treeId
	}
	
	public func setMultiRequestToken(state: String) {
		self.dict["state"] = state
	}
	
	public func setMultiRequestToken(baseVersionId: String) {
		self.dict["baseVersionId"] = baseVersionId
	}
	
	public func setMultiRequestToken(categoryRootId: String) {
		self.dict["categoryRootId"] = categoryRootId
	}
	
	public func setMultiRequestToken(defaultDate: String) {
		self.dict["defaultDate"] = defaultDate
	}
	
	public func setMultiRequestToken(updaterId: String) {
		self.dict["updaterId"] = updaterId
	}
	
	public func setMultiRequestToken(comment: String) {
		self.dict["comment"] = comment
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["treeId"] != nil {
			treeId = Int64("\(dict["treeId"]!)")
		}
		if dict["state"] != nil {
			state = CategoryVersionState(rawValue: "\(dict["state"]!)")
		}
		if dict["baseVersionId"] != nil {
			baseVersionId = Int64("\(dict["baseVersionId"]!)")
		}
		if dict["categoryRootId"] != nil {
			categoryRootId = Int64("\(dict["categoryRootId"]!)")
		}
		if dict["defaultDate"] != nil {
			defaultDate = Int64("\(dict["defaultDate"]!)")
		}
		if dict["updaterId"] != nil {
			updaterId = Int64("\(dict["updaterId"]!)")
		}
		if dict["comment"] != nil {
			comment = dict["comment"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(baseVersionId != nil) {
			dict["baseVersionId"] = baseVersionId!
		}
		if(comment != nil) {
			dict["comment"] = comment!
		}
		return dict
	}
}

