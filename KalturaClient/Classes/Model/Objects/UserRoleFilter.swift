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

/**  User roles filter  */
open class UserRoleFilter: Filter {

	public class UserRoleFilterTokenizer: Filter.FilterTokenizer {
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var currentUserRoleIdsContains: BaseTokenizedObject {
			get {
				return self.append("currentUserRoleIdsContains") 
			}
		}
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
		
		public var profileEqual: BaseTokenizedObject {
			get {
				return self.append("profileEqual") 
			}
		}
	}

	/**  Comma separated roles identifiers  */
	public var idIn: String? = nil
	/**  Indicates whether the results should be filtered by userId using the current  */
	public var currentUserRoleIdsContains: Bool? = nil
	/**  User role type  */
	public var typeEqual: UserRoleType? = nil
	/**  User role profile  */
	public var profileEqual: UserRoleProfile? = nil


	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(currentUserRoleIdsContains: String) {
		self.dict["currentUserRoleIdsContains"] = currentUserRoleIdsContains
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(profileEqual: String) {
		self.dict["profileEqual"] = profileEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["currentUserRoleIdsContains"] != nil {
			currentUserRoleIdsContains = dict["currentUserRoleIdsContains"] as? Bool
		}
		if dict["typeEqual"] != nil {
			typeEqual = UserRoleType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["profileEqual"] != nil {
			profileEqual = UserRoleProfile(rawValue: "\(dict["profileEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(currentUserRoleIdsContains != nil) {
			dict["currentUserRoleIdsContains"] = currentUserRoleIdsContains!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(profileEqual != nil) {
			dict["profileEqual"] = profileEqual!.rawValue
		}
		return dict
	}
}

