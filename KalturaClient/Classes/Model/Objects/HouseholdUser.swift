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

/**  Household user  */
open class HouseholdUser: ObjectBase {

	public class HouseholdUserTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var isMaster: BaseTokenizedObject {
			get {
				return self.append("isMaster") 
			}
		}
		
		public var householdMasterUsername: BaseTokenizedObject {
			get {
				return self.append("householdMasterUsername") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
	}

	/**  The identifier of the household  */
	public var householdId: Int? = nil
	/**  The identifier of the user  */
	public var userId: String? = nil
	/**  True if the user added as master use  */
	public var isMaster: Bool? = nil
	/**  The username of the household master for adding a user in status pending for the
	  household master to approve  */
	public var householdMasterUsername: String? = nil
	/**  The status of the user in the household  */
	public var status: HouseholdUserStatus? = nil
	/**  True if the user is a default user  */
	public var isDefault: Bool? = nil


	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(isMaster: String) {
		self.dict["isMaster"] = isMaster
	}
	
	public func setMultiRequestToken(householdMasterUsername: String) {
		self.dict["householdMasterUsername"] = householdMasterUsername
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["householdId"] != nil {
			householdId = dict["householdId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["isMaster"] != nil {
			isMaster = dict["isMaster"] as? Bool
		}
		if dict["householdMasterUsername"] != nil {
			householdMasterUsername = dict["householdMasterUsername"] as? String
		}
		if dict["status"] != nil {
			status = HouseholdUserStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(householdId != nil) {
			dict["householdId"] = householdId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(isMaster != nil) {
			dict["isMaster"] = isMaster!
		}
		if(householdMasterUsername != nil) {
			dict["householdMasterUsername"] = householdMasterUsername!
		}
		return dict
	}
}

