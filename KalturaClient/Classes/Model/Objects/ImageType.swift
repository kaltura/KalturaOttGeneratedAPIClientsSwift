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

/**  Image type  */
open class ImageType: ObjectBase {

	public class ImageTypeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var ratioId: BaseTokenizedObject {
			get {
				return self.append("ratioId") 
			}
		}
		
		public var helpText: BaseTokenizedObject {
			get {
				return self.append("helpText") 
			}
		}
		
		public var defaultImageId: BaseTokenizedObject {
			get {
				return self.append("defaultImageId") 
			}
		}
	}

	/**  Image type ID  */
	public var id: Int64? = nil
	/**  Name  */
	public var name: String? = nil
	/**  System name  */
	public var systemName: String? = nil
	/**  Ration ID  */
	public var ratioId: Int64? = nil
	/**  Help text  */
	public var helpText: String? = nil
	/**  Default image ID  */
	public var defaultImageId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(ratioId: String) {
		self.dict["ratioId"] = ratioId
	}
	
	public func setMultiRequestToken(helpText: String) {
		self.dict["helpText"] = helpText
	}
	
	public func setMultiRequestToken(defaultImageId: String) {
		self.dict["defaultImageId"] = defaultImageId
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
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["ratioId"] != nil {
			ratioId = Int64("\(dict["ratioId"]!)")
		}
		if dict["helpText"] != nil {
			helpText = dict["helpText"] as? String
		}
		if dict["defaultImageId"] != nil {
			defaultImageId = Int64("\(dict["defaultImageId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(ratioId != nil) {
			dict["ratioId"] = ratioId!
		}
		if(helpText != nil) {
			dict["helpText"] = helpText!
		}
		if(defaultImageId != nil) {
			dict["defaultImageId"] = defaultImageId!
		}
		return dict
	}
}

