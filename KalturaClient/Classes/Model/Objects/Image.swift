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

open class Image: ObjectBase {

	public class ImageTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var imageTypeId: BaseTokenizedObject {
			get {
				return self.append("imageTypeId") 
			}
		}
		
		public var imageObjectId: BaseTokenizedObject {
			get {
				return self.append("imageObjectId") 
			}
		}
		
		public var imageObjectType: BaseTokenizedObject {
			get {
				return self.append("imageObjectType") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var contentId: BaseTokenizedObject {
			get {
				return self.append("contentId") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
	}

	/**  Image ID  */
	public var id: Int64? = nil
	/**  Image version  */
	public var version: String? = nil
	/**  Image type ID  */
	public var imageTypeId: Int64? = nil
	/**  ID of the object the image is related to  */
	public var imageObjectId: Int64? = nil
	/**  Type of the object the image is related to  */
	public var imageObjectType: ImageObjectType? = nil
	/**  Image content status  */
	public var status: ImageStatus? = nil
	/**  Image URL  */
	public var url: String? = nil
	/**  Image content ID  */
	public var contentId: String? = nil
	/**  Specifies if the image is default for atleast one image type.  */
	public var isDefault: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(imageTypeId: String) {
		self.dict["imageTypeId"] = imageTypeId
	}
	
	public func setMultiRequestToken(imageObjectId: String) {
		self.dict["imageObjectId"] = imageObjectId
	}
	
	public func setMultiRequestToken(imageObjectType: String) {
		self.dict["imageObjectType"] = imageObjectType
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(contentId: String) {
		self.dict["contentId"] = contentId
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["imageTypeId"] != nil {
			imageTypeId = Int64("\(dict["imageTypeId"]!)")
		}
		if dict["imageObjectId"] != nil {
			imageObjectId = Int64("\(dict["imageObjectId"]!)")
		}
		if dict["imageObjectType"] != nil {
			imageObjectType = ImageObjectType(rawValue: "\(dict["imageObjectType"]!)")
		}
		if dict["status"] != nil {
			status = ImageStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["contentId"] != nil {
			contentId = dict["contentId"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(imageTypeId != nil) {
			dict["imageTypeId"] = imageTypeId!
		}
		if(imageObjectId != nil) {
			dict["imageObjectId"] = imageObjectId!
		}
		if(imageObjectType != nil) {
			dict["imageObjectType"] = imageObjectType!.rawValue
		}
		return dict
	}
}

