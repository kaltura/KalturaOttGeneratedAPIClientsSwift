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

open class ConfigurationGroup: ObjectBase {

	public class ConfigurationGroupTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var tags: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("tags"))
			} 
		}
		
		public var numberOfDevices: BaseTokenizedObject {
			get {
				return self.append("numberOfDevices") 
			}
		}
		
		public var configurationIdentifiers: ArrayTokenizedObject<ConfigurationIdentifier.ConfigurationIdentifierTokenizer> {
			get {
				return ArrayTokenizedObject<ConfigurationIdentifier.ConfigurationIdentifierTokenizer>(self.append("configurationIdentifiers"))
			} 
		}
	}

	/**  Configuration group identifier  */
	public var id: String? = nil
	/**  Configuration group name  */
	public var name: String? = nil
	/**  Partner id  */
	public var partnerId: Int? = nil
	/**  Is default  */
	public var isDefault: Bool? = nil
	/**  tags  */
	public var tags: Array<StringValue>? = nil
	/**  Number of devices  */
	public var numberOfDevices: Int64? = nil
	/**  Configuration identifiers  */
	public var configurationIdentifiers: Array<ConfigurationIdentifier>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(numberOfDevices: String) {
		self.dict["numberOfDevices"] = numberOfDevices
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["tags"] != nil {
			tags = try JSONParser.parse(array: dict["tags"] as! [Any])
		}
		if dict["numberOfDevices"] != nil {
			numberOfDevices = Int64("\(dict["numberOfDevices"]!)")
		}
		if dict["configurationIdentifiers"] != nil {
			configurationIdentifiers = try JSONParser.parse(array: dict["configurationIdentifiers"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		return dict
	}
}

