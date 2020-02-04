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

open class ImageFilter: Filter {

	public class ImageFilterTokenizer: Filter.FilterTokenizer {
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var imageObjectIdEqual: BaseTokenizedObject {
			get {
				return self.append("imageObjectIdEqual") 
			}
		}
		
		public var imageObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("imageObjectTypeEqual") 
			}
		}
		
		public var isDefaultEqual: BaseTokenizedObject {
			get {
				return self.append("isDefaultEqual") 
			}
		}
	}

	/**  IDs to filter by  */
	public var idIn: String? = nil
	/**  ID of the object the is related to, to filter by  */
	public var imageObjectIdEqual: Int64? = nil
	/**  Type of the object the image is related to, to filter by  */
	public var imageObjectTypeEqual: ImageObjectType? = nil
	/**  Filter images that are default on at least on image type or not default at any  */
	public var isDefaultEqual: Bool? = nil


	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(imageObjectIdEqual: String) {
		self.dict["imageObjectIdEqual"] = imageObjectIdEqual
	}
	
	public func setMultiRequestToken(imageObjectTypeEqual: String) {
		self.dict["imageObjectTypeEqual"] = imageObjectTypeEqual
	}
	
	public func setMultiRequestToken(isDefaultEqual: String) {
		self.dict["isDefaultEqual"] = isDefaultEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["imageObjectIdEqual"] != nil {
			imageObjectIdEqual = Int64("\(dict["imageObjectIdEqual"]!)")
		}
		if dict["imageObjectTypeEqual"] != nil {
			imageObjectTypeEqual = ImageObjectType(rawValue: "\(dict["imageObjectTypeEqual"]!)")
		}
		if dict["isDefaultEqual"] != nil {
			isDefaultEqual = dict["isDefaultEqual"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(imageObjectIdEqual != nil) {
			dict["imageObjectIdEqual"] = imageObjectIdEqual!
		}
		if(imageObjectTypeEqual != nil) {
			dict["imageObjectTypeEqual"] = imageObjectTypeEqual!.rawValue
		}
		if(isDefaultEqual != nil) {
			dict["isDefaultEqual"] = isDefaultEqual!
		}
		return dict
	}
}

