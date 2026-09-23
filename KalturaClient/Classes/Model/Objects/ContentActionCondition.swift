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

/**  Segmentation condition regarding content actions  */
open class ContentActionCondition: ObjectBase {

	public class ContentActionConditionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var length: BaseTokenizedObject {
			get {
				return self.append("length") 
			}
		}
		
		public var lengthType: BaseTokenizedObject {
			get {
				return self.append("lengthType") 
			}
		}
		
		public var multiplier: BaseTokenizedObject {
			get {
				return self.append("multiplier") 
			}
		}
	}

	/**  The relevant action to be examined  */
	public var action: ContentAction? = nil
	/**  Optional - if action required specific length to be considered (in percentage or
	  minutes)  */
	public var length: Int? = nil
	/**  Optional - if action required specific length to be considered (in percentage or
	  minutes)  */
	public var lengthType: ContentActionConditionLengthType? = nil
	/**  Score multiplier - how much is a single action worth when considering the action  */
	public var multiplier: Int? = nil


	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(length: String) {
		self.dict["length"] = length
	}
	
	public func setMultiRequestToken(lengthType: String) {
		self.dict["lengthType"] = lengthType
	}
	
	public func setMultiRequestToken(multiplier: String) {
		self.dict["multiplier"] = multiplier
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["action"] != nil {
			action = ContentAction(rawValue: "\(dict["action"]!)")
		}
		if dict["length"] != nil {
			length = dict["length"] as? Int
		}
		if dict["lengthType"] != nil {
			lengthType = ContentActionConditionLengthType(rawValue: "\(dict["lengthType"]!)")
		}
		if dict["multiplier"] != nil {
			multiplier = dict["multiplier"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(length != nil) {
			dict["length"] = length!
		}
		if(lengthType != nil) {
			dict["lengthType"] = lengthType!.rawValue
		}
		if(multiplier != nil) {
			dict["multiplier"] = multiplier!
		}
		return dict
	}
}

