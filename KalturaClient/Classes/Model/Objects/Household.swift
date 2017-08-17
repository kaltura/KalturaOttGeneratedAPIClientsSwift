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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Household details  */
open class Household: ObjectBase {

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


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int64
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
			frequencyNextDeviceAction = dict["frequencyNextDeviceAction"] as? Int64
		}
		if dict["frequencyNextUserAction"] != nil {
			frequencyNextUserAction = dict["frequencyNextUserAction"] as? Int64
		}
		if dict["restriction"] != nil {
			restriction = HouseholdRestriction(rawValue: "\(dict["restriction"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
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
		return dict
	}
}

