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

open class Permission: ObjectBase {

	public class PermissionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var friendlyName: BaseTokenizedObject {
			get {
				return self.append("friendlyName") 
			}
		}
		
		public var dependsOnPermissionNames: BaseTokenizedObject {
			get {
				return self.append("dependsOnPermissionNames") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  Permission identifier  */
	public var id: Int64? = nil
	/**  Permission name  */
	public var name: String? = nil
	/**  Permission friendly name  */
	public var friendlyName: String? = nil
	/**  Comma separated permissions names from type SPECIAL_FEATURE  */
	public var dependsOnPermissionNames: String? = nil
	/**  Comma separated permissions names from type SPECIAL_FEATURE  */
	public var type: PermissionType? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(friendlyName: String) {
		self.dict["friendlyName"] = friendlyName
	}
	
	public func setMultiRequestToken(dependsOnPermissionNames: String) {
		self.dict["dependsOnPermissionNames"] = dependsOnPermissionNames
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
		if dict["friendlyName"] != nil {
			friendlyName = dict["friendlyName"] as? String
		}
		if dict["dependsOnPermissionNames"] != nil {
			dependsOnPermissionNames = dict["dependsOnPermissionNames"] as? String
		}
		if dict["type"] != nil {
			type = PermissionType(rawValue: "\(dict["type"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(friendlyName != nil) {
			dict["friendlyName"] = friendlyName!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		return dict
	}
}

