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
open class OTTCategory: ObjectBase {

	public class OTTCategoryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var childCategories: ArrayTokenizedObject<OTTCategory.OTTCategoryTokenizer> {
			get {
				return ArrayTokenizedObject<OTTCategory.OTTCategoryTokenizer>(self.append("childCategories"))
			} 
		}
		
		public var channels: ArrayTokenizedObject<Channel.ChannelTokenizer> {
			get {
				return ArrayTokenizedObject<Channel.ChannelTokenizer>(self.append("channels"))
			} 
		}
		
		public var images: ArrayTokenizedObject<MediaImage.MediaImageTokenizer> {
			get {
				return ArrayTokenizedObject<MediaImage.MediaImageTokenizer>(self.append("images"))
			} 
		}
	}

	/**  Unique identifier for the category  */
	public var id: Int64? = nil
	/**  Category name  */
	public var name: String? = nil
	/**  Category parent identifier  */
	public var parentCategoryId: Int64? = nil
	/**  Child categories  */
	public var childCategories: Array<OTTCategory>? = nil
	/**  Category channels  */
	public var channels: Array<Channel>? = nil
	/**  Category images  */
	public var images: Array<MediaImage>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(parentCategoryId: String) {
		self.dict["parentCategoryId"] = parentCategoryId
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
		if dict["parentCategoryId"] != nil {
			parentCategoryId = Int64("\(dict["parentCategoryId"]!)")
		}
		if dict["childCategories"] != nil {
			childCategories = try JSONParser.parse(array: dict["childCategories"] as! [Any])
		}
		if dict["channels"] != nil {
			channels = try JSONParser.parse(array: dict["channels"] as! [Any])
		}
		if dict["images"] != nil {
			images = try JSONParser.parse(array: dict["images"] as! [Any])
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
		if(childCategories != nil) {
			dict["childCategories"] = childCategories!.map { value in value.toDictionary() }
		}
		if(channels != nil) {
			dict["channels"] = channels!.map { value in value.toDictionary() }
		}
		if(images != nil) {
			dict["images"] = images!.map { value in value.toDictionary() }
		}
		return dict
	}
}

