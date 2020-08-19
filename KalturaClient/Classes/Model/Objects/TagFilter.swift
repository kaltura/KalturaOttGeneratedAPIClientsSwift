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

open class TagFilter: Filter {

	public class TagFilterTokenizer: Filter.FilterTokenizer {
		
		public var tagEqual: BaseTokenizedObject {
			get {
				return self.append("tagEqual") 
			}
		}
		
		public var tagStartsWith: BaseTokenizedObject {
			get {
				return self.append("tagStartsWith") 
			}
		}
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
		
		public var languageEqual: BaseTokenizedObject {
			get {
				return self.append("languageEqual") 
			}
		}
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
	}

	/**  Tag to filter by  */
	public var tagEqual: String? = nil
	/**  Tag to filter by  */
	public var tagStartsWith: String? = nil
	/**  Type identifier  */
	public var typeEqual: Int? = nil
	/**  Language to filter by  */
	public var languageEqual: String? = nil
	/**  Comma separated identifiers  */
	public var idIn: String? = nil


	public func setMultiRequestToken(tagEqual: String) {
		self.dict["tagEqual"] = tagEqual
	}
	
	public func setMultiRequestToken(tagStartsWith: String) {
		self.dict["tagStartsWith"] = tagStartsWith
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(languageEqual: String) {
		self.dict["languageEqual"] = languageEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["tagEqual"] != nil {
			tagEqual = dict["tagEqual"] as? String
		}
		if dict["tagStartsWith"] != nil {
			tagStartsWith = dict["tagStartsWith"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = dict["typeEqual"] as? Int
		}
		if dict["languageEqual"] != nil {
			languageEqual = dict["languageEqual"] as? String
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(tagEqual != nil) {
			dict["tagEqual"] = tagEqual!
		}
		if(tagStartsWith != nil) {
			dict["tagStartsWith"] = tagStartsWith!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!
		}
		if(languageEqual != nil) {
			dict["languageEqual"] = languageEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		return dict
	}
}

