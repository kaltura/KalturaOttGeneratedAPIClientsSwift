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

/**  Device details  */
open class HouseholdDevice: ObjectBase {

	/**  Household identifier  */
	public var householdId: Int? = nil
	/**  Device UDID  */
	public var udid: String? = nil
	/**  Device name  */
	public var name: String? = nil
	/**  Device brand identifier  */
	public var brandId: Int? = nil
	/**  Device activation date (epoch)  */
	public var activatedOn: Int64? = nil
	/**  Device state  */
	public var status: DeviceStatus? = nil
	/**  Device family id  */
	public var deviceFamilyId: Int64? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["householdId"] != nil {
			householdId = dict["householdId"] as? Int
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["brandId"] != nil {
			brandId = dict["brandId"] as? Int
		}
		if dict["activatedOn"] != nil {
			activatedOn = dict["activatedOn"] as? Int64
		}
		if dict["status"] != nil {
			status = DeviceStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["deviceFamilyId"] != nil {
			deviceFamilyId = dict["deviceFamilyId"] as? Int64
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(householdId != nil) {
			dict["householdId"] = householdId!
		}
		if(udid != nil) {
			dict["udid"] = udid!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(brandId != nil) {
			dict["brandId"] = brandId!
		}
		if(activatedOn != nil) {
			dict["activatedOn"] = activatedOn!
		}
		return dict
	}
}

