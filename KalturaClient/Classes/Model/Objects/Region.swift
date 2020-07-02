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

open class Region: ObjectBase {

	public class RegionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var linearChannels: ArrayTokenizedObject<RegionalChannel.RegionalChannelTokenizer> {
			get {
				return ArrayTokenizedObject<RegionalChannel.RegionalChannelTokenizer>(self.append("linearChannels"))
			} 
		}
		
		public var parentId: BaseTokenizedObject {
			get {
				return self.append("parentId") 
			}
		}
	}

	/**  Region identifier  */
	public var id: Int? = nil
	/**  Region name  */
	public var name: String? = nil
	/**  Region external identifier  */
	public var externalId: String? = nil
	/**  Indicates whether this is the default region for the partner  */
	public var isDefault: Bool? = nil
	/**  List of associated linear channels  */
	public var linearChannels: Array<RegionalChannel>? = nil
	/**  Parent region ID  */
	public var parentId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(parentId: String) {
		self.dict["parentId"] = parentId
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
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["linearChannels"] != nil {
			linearChannels = try JSONParser.parse(array: dict["linearChannels"] as! [Any])
		}
		if dict["parentId"] != nil {
			parentId = Int64("\(dict["parentId"]!)")
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
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(linearChannels != nil) {
			dict["linearChannels"] = linearChannels!.map { value in value.toDictionary() }
		}
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		return dict
	}
}

