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

open class Ratio: ObjectBase {

	public class RatioTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var height: BaseTokenizedObject {
			get {
				return self.append("height") 
			}
		}
		
		public var width: BaseTokenizedObject {
			get {
				return self.append("width") 
			}
		}
		
		public var precisionPrecentage: BaseTokenizedObject {
			get {
				return self.append("precisionPrecentage") 
			}
		}
	}

	/**  ID  */
	public var id: Int64? = nil
	/**  Name  */
	public var name: String? = nil
	/**  Height  */
	public var height: Int? = nil
	/**  Width  */
	public var width: Int? = nil
	/**  Accepted error margin precentage of an image uploaded for this ratio            
	   0 - no validation, everything accepted  */
	public var precisionPrecentage: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(height: String) {
		self.dict["height"] = height
	}
	
	public func setMultiRequestToken(width: String) {
		self.dict["width"] = width
	}
	
	public func setMultiRequestToken(precisionPrecentage: String) {
		self.dict["precisionPrecentage"] = precisionPrecentage
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
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["precisionPrecentage"] != nil {
			precisionPrecentage = dict["precisionPrecentage"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(height != nil) {
			dict["height"] = height!
		}
		if(width != nil) {
			dict["width"] = width!
		}
		if(precisionPrecentage != nil) {
			dict["precisionPrecentage"] = precisionPrecentage!
		}
		return dict
	}
}

