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

/**  Permissions filter  */
open class PermissionFilter: Filter {

	public class PermissionFilterTokenizer: Filter.FilterTokenizer {
		
		public var currentUserPermissionsContains: BaseTokenizedObject {
			get {
				return self.append("currentUserPermissionsContains") 
			}
		}
		
		public var roleIdIn: BaseTokenizedObject {
			get {
				return self.append("roleIdIn") 
			}
		}
	}

	/**  Indicates whether the results should be filtered by userId using the current  */
	public var currentUserPermissionsContains: Bool? = nil
	/**  Return permissions by role ID  */
	public var roleIdIn: Int64? = nil


	public func setMultiRequestToken(currentUserPermissionsContains: String) {
		self.dict["currentUserPermissionsContains"] = currentUserPermissionsContains
	}
	
	public func setMultiRequestToken(roleIdIn: String) {
		self.dict["roleIdIn"] = roleIdIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["currentUserPermissionsContains"] != nil {
			currentUserPermissionsContains = dict["currentUserPermissionsContains"] as? Bool
		}
		if dict["roleIdIn"] != nil {
			roleIdIn = Int64("\(dict["roleIdIn"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(currentUserPermissionsContains != nil) {
			dict["currentUserPermissionsContains"] = currentUserPermissionsContains!
		}
		if(roleIdIn != nil) {
			dict["roleIdIn"] = roleIdIn!
		}
		return dict
	}
}

