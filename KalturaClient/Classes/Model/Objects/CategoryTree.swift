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
open class CategoryTree: ObjectBase {

	public class CategoryTreeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var multilingualName: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualName"))
			} 
		}
		
		public var children: ArrayTokenizedObject<CategoryTree.CategoryTreeTokenizer> {
			get {
				return ArrayTokenizedObject<CategoryTree.CategoryTreeTokenizer>(self.append("children"))
			} 
		}
		
		public var unifiedChannels: ArrayTokenizedObject<UnifiedChannelInfo.UnifiedChannelInfoTokenizer> {
			get {
				return ArrayTokenizedObject<UnifiedChannelInfo.UnifiedChannelInfoTokenizer>(self.append("unifiedChannels"))
			} 
		}
		
		public var dynamicData: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("dynamicData"))
			}
		}
		
		public var images: ArrayTokenizedObject<Image.ImageTokenizer> {
			get {
				return ArrayTokenizedObject<Image.ImageTokenizer>(self.append("images"))
			} 
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public var startDateInSeconds: BaseTokenizedObject {
			get {
				return self.append("startDateInSeconds") 
			}
		}
		
		public var endDateInSeconds: BaseTokenizedObject {
			get {
				return self.append("endDateInSeconds") 
			}
		}
	}

	/**  Unique identifier for the category item  */
	public var id: Int64? = nil
	/**  Category name  */
	public var name: String? = nil
	/**  Category name  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  List of category tree  */
	public var children: Array<CategoryTree>? = nil
	/**  List of unified Channels.  */
	public var unifiedChannels: Array<UnifiedChannelInfo>? = nil
	/**  Dynamic data  */
	public var dynamicData: Dictionary<String, StringValue>? = nil
	/**  Category images  */
	public var images: Array<Image>? = nil
	/**  Category active status  */
	public var isActive: Bool? = nil
	/**  Start date in seconds  */
	public var startDateInSeconds: Int64? = nil
	/**  End date in seconds  */
	public var endDateInSeconds: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(startDateInSeconds: String) {
		self.dict["startDateInSeconds"] = startDateInSeconds
	}
	
	public func setMultiRequestToken(endDateInSeconds: String) {
		self.dict["endDateInSeconds"] = endDateInSeconds
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
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
		}
		if dict["children"] != nil {
			children = try JSONParser.parse(array: dict["children"] as! [Any])
		}
		if dict["unifiedChannels"] != nil {
			unifiedChannels = try JSONParser.parse(array: dict["unifiedChannels"] as! [Any])
		}
		if dict["dynamicData"] != nil {
			dynamicData = try JSONParser.parse(map: dict["dynamicData"] as! [String: Any])
		}
		if dict["images"] != nil {
			images = try JSONParser.parse(array: dict["images"] as! [Any])
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["startDateInSeconds"] != nil {
			startDateInSeconds = Int64("\(dict["startDateInSeconds"]!)")
		}
		if dict["endDateInSeconds"] != nil {
			endDateInSeconds = Int64("\(dict["endDateInSeconds"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(unifiedChannels != nil) {
			dict["unifiedChannels"] = unifiedChannels!.map { value in value.toDictionary() }
		}
		if(dynamicData != nil) {
			dict["dynamicData"] = dynamicData!.toDictionary()
		}
		if(images != nil) {
			dict["images"] = images!.map { value in value.toDictionary() }
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(startDateInSeconds != nil) {
			dict["startDateInSeconds"] = startDateInSeconds!
		}
		if(endDateInSeconds != nil) {
			dict["endDateInSeconds"] = endDateInSeconds!
		}
		return dict
	}
}

