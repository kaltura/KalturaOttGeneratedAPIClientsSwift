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
open class CategoryItem: CrudObject {

	public class CategoryItemTokenizer: CrudObject.CrudObjectTokenizer {
		
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
		
		public var parentCategoryId: BaseTokenizedObject {
			get {
				return self.append("parentCategoryId") 
			}
		}
		
		public var childCategoriesIds: BaseTokenizedObject {
			get {
				return self.append("childCategoriesIds") 
			}
		}
		
		public var unifiedChannels: ArrayTokenizedObject<UnifiedChannel.UnifiedChannelTokenizer> {
			get {
				return ArrayTokenizedObject<UnifiedChannel.UnifiedChannelTokenizer>(self.append("unifiedChannels"))
			} 
		}
		
		public var dynamicData: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("dynamicData"))
			}
		}
	}

	/**  Unique identifier for the category  */
	public var id: Int64? = nil
	/**  Category name  */
	public var name: String? = nil
	/**  Category parent identifier  */
	public var parentCategoryId: Int64? = nil
	/**  Comma separated list of child categories&amp;#39; Ids.  */
	public var childCategoriesIds: String? = nil
	/**  List of unified Channels.  */
	public var unifiedChannels: Array<UnifiedChannel>? = nil
	/**  Dynamic data  */
	public var dynamicData: Dictionary<String, StringValue>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(parentCategoryId: String) {
		self.dict["parentCategoryId"] = parentCategoryId
	}
	
	public func setMultiRequestToken(childCategoriesIds: String) {
		self.dict["childCategoriesIds"] = childCategoriesIds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["parentCategoryId"] != nil {
			parentCategoryId = Int64("\(dict["parentCategoryId"]!)")
		}
		if dict["childCategoriesIds"] != nil {
			childCategoriesIds = dict["childCategoriesIds"] as? String
		}
		if dict["unifiedChannels"] != nil {
			unifiedChannels = try JSONParser.parse(array: dict["unifiedChannels"] as! [Any])
		}
		if dict["dynamicData"] != nil {
			dynamicData = try JSONParser.parse(map: dict["dynamicData"] as! [String: Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(parentCategoryId != nil) {
			dict["parentCategoryId"] = parentCategoryId!
		}
		if(unifiedChannels != nil) {
			dict["unifiedChannels"] = unifiedChannels!.map { value in value.toDictionary() }
		}
		if(dynamicData != nil) {
			dict["dynamicData"] = dynamicData!.toDictionary()
		}
		return dict
	}
}

