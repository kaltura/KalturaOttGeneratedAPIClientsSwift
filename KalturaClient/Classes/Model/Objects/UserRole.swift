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

open class UserRole: ObjectBase {

	public class UserRoleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var permissionNames: BaseTokenizedObject {
			get {
				return self.append("permissionNames") 
			}
		}
		
		public var excludedPermissionNames: BaseTokenizedObject {
			get {
				return self.append("excludedPermissionNames") 
			}
		}
	}

	/**  User role identifier  */
	public var id: Int64? = nil
	/**  User role name  */
	public var name: String? = nil
	/**  permissions associated with the user role  */
	public var permissionNames: String? = nil
	/**  permissions associated with the user role in is_exclueded = true  */
	public var excludedPermissionNames: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(permissionNames: String) {
		self.dict["permissionNames"] = permissionNames
	}
	
	public func setMultiRequestToken(excludedPermissionNames: String) {
		self.dict["excludedPermissionNames"] = excludedPermissionNames
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
		if dict["permissionNames"] != nil {
			permissionNames = dict["permissionNames"] as? String
		}
		if dict["excludedPermissionNames"] != nil {
			excludedPermissionNames = dict["excludedPermissionNames"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(permissionNames != nil) {
			dict["permissionNames"] = permissionNames!
		}
		if(excludedPermissionNames != nil) {
			dict["excludedPermissionNames"] = excludedPermissionNames!
		}
		return dict
	}
}

