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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Meta filter  */
open class MetaFilter: Filter {

	public class MetaFilterTokenizer: Filter.FilterTokenizer {
		
		public var fieldNameEqual: BaseTokenizedObject {
			get {
				return self.append("fieldNameEqual") 
			}
		}
		
		public var fieldNameNotEqual: BaseTokenizedObject {
			get {
				return self.append("fieldNameNotEqual") 
			}
		}
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
		
		public var assetTypeEqual: BaseTokenizedObject {
			get {
				return self.append("assetTypeEqual") 
			}
		}
	}

	/**  Meta system field name to filter by  */
	public var fieldNameEqual: MetaFieldName? = nil
	/**  Meta system field name to filter by  */
	public var fieldNameNotEqual: MetaFieldName? = nil
	/**  Meta type to filter by  */
	public var typeEqual: MetaType? = nil
	/**  Asset type to filter by  */
	public var assetTypeEqual: AssetType? = nil


	public func setMultiRequestToken(fieldNameEqual: String) {
		self.dict["fieldNameEqual"] = fieldNameEqual
	}
	
	public func setMultiRequestToken(fieldNameNotEqual: String) {
		self.dict["fieldNameNotEqual"] = fieldNameNotEqual
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(assetTypeEqual: String) {
		self.dict["assetTypeEqual"] = assetTypeEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fieldNameEqual"] != nil {
			fieldNameEqual = MetaFieldName(rawValue: "\(dict["fieldNameEqual"]!)")
		}
		if dict["fieldNameNotEqual"] != nil {
			fieldNameNotEqual = MetaFieldName(rawValue: "\(dict["fieldNameNotEqual"]!)")
		}
		if dict["typeEqual"] != nil {
			typeEqual = MetaType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["assetTypeEqual"] != nil {
			assetTypeEqual = AssetType(rawValue: "\(dict["assetTypeEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fieldNameEqual != nil) {
			dict["fieldNameEqual"] = fieldNameEqual!.rawValue
		}
		if(fieldNameNotEqual != nil) {
			dict["fieldNameNotEqual"] = fieldNameNotEqual!.rawValue
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(assetTypeEqual != nil) {
			dict["assetTypeEqual"] = assetTypeEqual!.rawValue
		}
		return dict
	}
}

