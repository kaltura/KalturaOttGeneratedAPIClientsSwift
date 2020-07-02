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

/**  Household details  */
open class Household: ObjectBase {

	public class HouseholdTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var householdLimitationsId: BaseTokenizedObject {
			get {
				return self.append("householdLimitationsId") 
			}
		}
		
		public var devicesLimit: BaseTokenizedObject {
			get {
				return self.append("devicesLimit") 
			}
		}
		
		public var usersLimit: BaseTokenizedObject {
			get {
				return self.append("usersLimit") 
			}
		}
		
		public var concurrentLimit: BaseTokenizedObject {
			get {
				return self.append("concurrentLimit") 
			}
		}
		
		public var regionId: BaseTokenizedObject {
			get {
				return self.append("regionId") 
			}
		}
		
		public var state: BaseTokenizedObject {
			get {
				return self.append("state") 
			}
		}
		
		public var isFrequencyEnabled: BaseTokenizedObject {
			get {
				return self.append("isFrequencyEnabled") 
			}
		}
		
		public var frequencyNextDeviceAction: BaseTokenizedObject {
			get {
				return self.append("frequencyNextDeviceAction") 
			}
		}
		
		public var frequencyNextUserAction: BaseTokenizedObject {
			get {
				return self.append("frequencyNextUserAction") 
			}
		}
		
		public var restriction: BaseTokenizedObject {
			get {
				return self.append("restriction") 
			}
		}
		
		public var roleId: BaseTokenizedObject {
			get {
				return self.append("roleId") 
			}
		}
	}

	/**  Household identifier  */
	public var id: Int64? = nil
	/**  Household name  */
	public var name: String? = nil
	/**  Household description  */
	public var description: String? = nil
	/**  Household external identifier  */
	public var externalId: String? = nil
	/**  Household limitation module identifier  */
	public var householdLimitationsId: Int? = nil
	/**  The max number of the devices that can be added to the household  */
	public var devicesLimit: Int? = nil
	/**  The max number of the users that can be added to the household  */
	public var usersLimit: Int? = nil
	/**  The max number of concurrent streams in the household  */
	public var concurrentLimit: Int? = nil
	/**  The households region identifier  */
	public var regionId: Int? = nil
	/**  Household state  */
	public var state: HouseholdState? = nil
	/**  Is household frequency enabled  */
	public var isFrequencyEnabled: Bool? = nil
	/**  The next time a device is allowed to be removed from the household (epoch)  */
	public var frequencyNextDeviceAction: Int64? = nil
	/**  The next time a user is allowed to be removed from the household (epoch)  */
	public var frequencyNextUserAction: Int64? = nil
	/**  Household restriction  */
	public var restriction: HouseholdRestriction? = nil
	/**  suspended roleId  */
	public var roleId: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(householdLimitationsId: String) {
		self.dict["householdLimitationsId"] = householdLimitationsId
	}
	
	public func setMultiRequestToken(devicesLimit: String) {
		self.dict["devicesLimit"] = devicesLimit
	}
	
	public func setMultiRequestToken(usersLimit: String) {
		self.dict["usersLimit"] = usersLimit
	}
	
	public func setMultiRequestToken(concurrentLimit: String) {
		self.dict["concurrentLimit"] = concurrentLimit
	}
	
	public func setMultiRequestToken(regionId: String) {
		self.dict["regionId"] = regionId
	}
	
	public func setMultiRequestToken(state: String) {
		self.dict["state"] = state
	}
	
	public func setMultiRequestToken(isFrequencyEnabled: String) {
		self.dict["isFrequencyEnabled"] = isFrequencyEnabled
	}
	
	public func setMultiRequestToken(frequencyNextDeviceAction: String) {
		self.dict["frequencyNextDeviceAction"] = frequencyNextDeviceAction
	}
	
	public func setMultiRequestToken(frequencyNextUserAction: String) {
		self.dict["frequencyNextUserAction"] = frequencyNextUserAction
	}
	
	public func setMultiRequestToken(restriction: String) {
		self.dict["restriction"] = restriction
	}
	
	public func setMultiRequestToken(roleId: String) {
		self.dict["roleId"] = roleId
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
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["householdLimitationsId"] != nil {
			householdLimitationsId = dict["householdLimitationsId"] as? Int
		}
		if dict["devicesLimit"] != nil {
			devicesLimit = dict["devicesLimit"] as? Int
		}
		if dict["usersLimit"] != nil {
			usersLimit = dict["usersLimit"] as? Int
		}
		if dict["concurrentLimit"] != nil {
			concurrentLimit = dict["concurrentLimit"] as? Int
		}
		if dict["regionId"] != nil {
			regionId = dict["regionId"] as? Int
		}
		if dict["state"] != nil {
			state = HouseholdState(rawValue: "\(dict["state"]!)")
		}
		if dict["isFrequencyEnabled"] != nil {
			isFrequencyEnabled = dict["isFrequencyEnabled"] as? Bool
		}
		if dict["frequencyNextDeviceAction"] != nil {
			frequencyNextDeviceAction = Int64("\(dict["frequencyNextDeviceAction"]!)")
		}
		if dict["frequencyNextUserAction"] != nil {
			frequencyNextUserAction = Int64("\(dict["frequencyNextUserAction"]!)")
		}
		if dict["restriction"] != nil {
			restriction = HouseholdRestriction(rawValue: "\(dict["restriction"]!)")
		}
		if dict["roleId"] != nil {
			roleId = dict["roleId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(regionId != nil) {
			dict["regionId"] = regionId!
		}
		return dict
	}
}

