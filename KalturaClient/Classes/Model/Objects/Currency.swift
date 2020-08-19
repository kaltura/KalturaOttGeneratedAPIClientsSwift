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

/**  Currency details  */
open class Currency: ObjectBase {

	public class CurrencyTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var code: BaseTokenizedObject {
			get {
				return self.append("code") 
			}
		}
		
		public var sign: BaseTokenizedObject {
			get {
				return self.append("sign") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
	}

	/**  Identifier  */
	public var id: Int? = nil
	/**  Currency name  */
	public var name: String? = nil
	/**  Currency code  */
	public var code: String? = nil
	/**  Currency Sign  */
	public var sign: String? = nil
	/**  Is the default Currency of the account  */
	public var isDefault: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(code: String) {
		self.dict["code"] = code
	}
	
	public func setMultiRequestToken(sign: String) {
		self.dict["sign"] = sign
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["code"] != nil {
			code = dict["code"] as? String
		}
		if dict["sign"] != nil {
			sign = dict["sign"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(code != nil) {
			dict["code"] = code!
		}
		if(sign != nil) {
			dict["sign"] = sign!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		return dict
	}
}

