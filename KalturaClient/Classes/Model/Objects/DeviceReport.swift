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

open class DeviceReport: Report {

	/**  Partner id  */
	public var partnerId: Int? = nil
	/**  Configuration group id  */
	public var configurationGroupId: String? = nil
	/**  Device UDID  */
	public var udid: String? = nil
	/**  Push parameters  */
	public var pushParameters: PushParams? = nil
	/**  Version number  */
	public var versionNumber: String? = nil
	/**  Version platform  */
	public var versionPlatform: Platform? = nil
	/**  Version application name  */
	public var versionAppName: String? = nil
	/**  Last access IP  */
	public var lastAccessIP: String? = nil
	/**  Last access date  */
	public var lastAccessDate: Int64? = nil
	/**  User agent  */
	public var userAgent: String? = nil
	/**  Operation system  */
	public var operationSystem: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["configurationGroupId"] != nil {
			configurationGroupId = dict["configurationGroupId"] as? String
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["pushParameters"] != nil {
		pushParameters = try JSONParser.parse(object: dict["pushParameters"] as! [String: Any])		}
		if dict["versionNumber"] != nil {
			versionNumber = dict["versionNumber"] as? String
		}
		if dict["versionPlatform"] != nil {
			versionPlatform = Platform(rawValue: "\(dict["versionPlatform"]!)")
		}
		if dict["versionAppName"] != nil {
			versionAppName = dict["versionAppName"] as? String
		}
		if dict["lastAccessIP"] != nil {
			lastAccessIP = dict["lastAccessIP"] as? String
		}
		if dict["lastAccessDate"] != nil {
			lastAccessDate = Int64((dict["lastAccessDate"] as? String)!)
		}
		if dict["userAgent"] != nil {
			userAgent = dict["userAgent"] as? String
		}
		if dict["operationSystem"] != nil {
			operationSystem = dict["operationSystem"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(configurationGroupId != nil) {
			dict["configurationGroupId"] = configurationGroupId!
		}
		if(udid != nil) {
			dict["udid"] = udid!
		}
		if(pushParameters != nil) {
			dict["pushParameters"] = pushParameters!.toDictionary()
		}
		if(versionNumber != nil) {
			dict["versionNumber"] = versionNumber!
		}
		if(versionPlatform != nil) {
			dict["versionPlatform"] = versionPlatform!.rawValue
		}
		if(versionAppName != nil) {
			dict["versionAppName"] = versionAppName!
		}
		if(lastAccessIP != nil) {
			dict["lastAccessIP"] = lastAccessIP!
		}
		if(lastAccessDate != nil) {
			dict["lastAccessDate"] = lastAccessDate!
		}
		if(userAgent != nil) {
			dict["userAgent"] = userAgent!
		}
		if(operationSystem != nil) {
			dict["operationSystem"] = operationSystem!
		}
		return dict
	}
}

