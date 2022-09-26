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

/**  Device brand details  */
open class DeviceBrand: ObjectBase {

	public class DeviceBrandTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var deviceFamilyid: BaseTokenizedObject {
			get {
				return self.append("deviceFamilyid") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  Device brand identifier  */
	public var id: Int64? = nil
	/**  Device brand name  */
	public var name: String? = nil
	/**  Device family identifier  */
	public var deviceFamilyid: Int64? = nil
	/**  Type of device family.               if this device family belongs only to this
	  group,               otherwise.  */
	public var type: DeviceBrandType? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(deviceFamilyid: String) {
		self.dict["deviceFamilyid"] = deviceFamilyid
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
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
		if dict["deviceFamilyid"] != nil {
			deviceFamilyid = Int64("\(dict["deviceFamilyid"]!)")
		}
		if dict["type"] != nil {
			type = DeviceBrandType(rawValue: "\(dict["type"]!)")
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
		if(deviceFamilyid != nil) {
			dict["deviceFamilyid"] = deviceFamilyid!
		}
		return dict
	}
}

