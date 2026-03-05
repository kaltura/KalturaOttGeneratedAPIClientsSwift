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

open class LabelFilter: Filter {

	public class LabelFilterTokenizer: Filter.FilterTokenizer {
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var labelEqual: BaseTokenizedObject {
			get {
				return self.append("labelEqual") 
			}
		}
		
		public var labelStartsWith: BaseTokenizedObject {
			get {
				return self.append("labelStartsWith") 
			}
		}
		
		public var entityAttributeEqual: BaseTokenizedObject {
			get {
				return self.append("entityAttributeEqual") 
			}
		}
	}

	/**  Comma-separated identifiers of labels  */
	public var idIn: String? = nil
	/**  Filter the label with this value  */
	public var labelEqual: String? = nil
	/**  Filter labels which start with this value  */
	public var labelStartsWith: String? = nil
	/**  Type of entity that labels are associated with  */
	public var entityAttributeEqual: EntityAttribute? = nil


	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(labelEqual: String) {
		self.dict["labelEqual"] = labelEqual
	}
	
	public func setMultiRequestToken(labelStartsWith: String) {
		self.dict["labelStartsWith"] = labelStartsWith
	}
	
	public func setMultiRequestToken(entityAttributeEqual: String) {
		self.dict["entityAttributeEqual"] = entityAttributeEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["labelEqual"] != nil {
			labelEqual = dict["labelEqual"] as? String
		}
		if dict["labelStartsWith"] != nil {
			labelStartsWith = dict["labelStartsWith"] as? String
		}
		if dict["entityAttributeEqual"] != nil {
			entityAttributeEqual = EntityAttribute(rawValue: "\(dict["entityAttributeEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(labelEqual != nil) {
			dict["labelEqual"] = labelEqual!
		}
		if(labelStartsWith != nil) {
			dict["labelStartsWith"] = labelStartsWith!
		}
		if(entityAttributeEqual != nil) {
			dict["entityAttributeEqual"] = entityAttributeEqual!.rawValue
		}
		return dict
	}
}

