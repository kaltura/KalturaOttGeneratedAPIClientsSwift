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

/**  Meta filter  */
open class MetaFilter: Filter {

	public class MetaFilterTokenizer: Filter.FilterTokenizer {
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var assetStructIdEqual: BaseTokenizedObject {
			get {
				return self.append("assetStructIdEqual") 
			}
		}
		
		public var dataTypeEqual: BaseTokenizedObject {
			get {
				return self.append("dataTypeEqual") 
			}
		}
		
		public var multipleValueEqual: BaseTokenizedObject {
			get {
				return self.append("multipleValueEqual") 
			}
		}
	}

	/**  Comma separated identifiers  */
	public var idIn: String? = nil
	/**  Filter Metas that are contained in a specific asset struct  */
	public var assetStructIdEqual: Int64? = nil
	/**  Meta data type to filter by  */
	public var dataTypeEqual: MetaDataType? = nil
	/**  Filter metas by multipleValueEqual value  */
	public var multipleValueEqual: Bool? = nil


	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(assetStructIdEqual: String) {
		self.dict["assetStructIdEqual"] = assetStructIdEqual
	}
	
	public func setMultiRequestToken(dataTypeEqual: String) {
		self.dict["dataTypeEqual"] = dataTypeEqual
	}
	
	public func setMultiRequestToken(multipleValueEqual: String) {
		self.dict["multipleValueEqual"] = multipleValueEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["assetStructIdEqual"] != nil {
			assetStructIdEqual = Int64("\(dict["assetStructIdEqual"]!)")
		}
		if dict["dataTypeEqual"] != nil {
			dataTypeEqual = MetaDataType(rawValue: "\(dict["dataTypeEqual"]!)")
		}
		if dict["multipleValueEqual"] != nil {
			multipleValueEqual = dict["multipleValueEqual"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(assetStructIdEqual != nil) {
			dict["assetStructIdEqual"] = assetStructIdEqual!
		}
		if(dataTypeEqual != nil) {
			dict["dataTypeEqual"] = dataTypeEqual!.rawValue
		}
		if(multipleValueEqual != nil) {
			dict["multipleValueEqual"] = multipleValueEqual!
		}
		return dict
	}
}

