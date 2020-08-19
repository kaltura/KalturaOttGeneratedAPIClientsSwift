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

/**  Image details  */
open class MediaImage: ObjectBase {

	public class MediaImageTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var ratio: BaseTokenizedObject {
			get {
				return self.append("ratio") 
			}
		}
		
		public var width: BaseTokenizedObject {
			get {
				return self.append("width") 
			}
		}
		
		public var height: BaseTokenizedObject {
			get {
				return self.append("height") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
	}

	/**  Image aspect ratio  */
	public var ratio: String? = nil
	/**  Image width  */
	public var width: Int? = nil
	/**  Image height  */
	public var height: Int? = nil
	/**  Image URL  */
	public var url: String? = nil
	/**  Image Version  */
	public var version: Int? = nil
	/**  Image ID  */
	public var id: String? = nil
	/**  Determined whether image was taken from default configuration or not  */
	public var isDefault: Bool? = nil


	public func setMultiRequestToken(ratio: String) {
		self.dict["ratio"] = ratio
	}
	
	public func setMultiRequestToken(width: String) {
		self.dict["width"] = width
	}
	
	public func setMultiRequestToken(height: String) {
		self.dict["height"] = height
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ratio"] != nil {
			ratio = dict["ratio"] as? String
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ratio != nil) {
			dict["ratio"] = ratio!
		}
		if(width != nil) {
			dict["width"] = width!
		}
		if(height != nil) {
			dict["height"] = height!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(version != nil) {
			dict["version"] = version!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		return dict
	}
}

