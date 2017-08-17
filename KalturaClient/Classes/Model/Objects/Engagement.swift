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

/**  Engagement  */
open class Engagement: ObjectBase {

	/**  Engagement id  */
	public var id: Int? = nil
	/**  Total number of recipients  */
	public var totalNumberOfRecipients: Int? = nil
	/**  Engagement type  */
	public var type: EngagementType? = nil
	/**  Engagement adapter id  */
	public var adapterId: Int? = nil
	/**  Engagement adapter dynamic data  */
	public var adapterDynamicData: String? = nil
	/**  Interval (seconds)  */
	public var intervalSeconds: Int? = nil
	/**  Manual User list  */
	public var userList: String? = nil
	/**  Send time (seconds)  */
	public var sendTimeInSeconds: Int64? = nil
	/**  Coupon GroupId  */
	public var couponGroupId: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["totalNumberOfRecipients"] != nil {
			totalNumberOfRecipients = dict["totalNumberOfRecipients"] as? Int
		}
		if dict["type"] != nil {
			type = EngagementType(rawValue: "\(dict["type"]!)")
		}
		if dict["adapterId"] != nil {
			adapterId = dict["adapterId"] as? Int
		}
		if dict["adapterDynamicData"] != nil {
			adapterDynamicData = dict["adapterDynamicData"] as? String
		}
		if dict["intervalSeconds"] != nil {
			intervalSeconds = dict["intervalSeconds"] as? Int
		}
		if dict["userList"] != nil {
			userList = dict["userList"] as? String
		}
		if dict["sendTimeInSeconds"] != nil {
			sendTimeInSeconds = dict["sendTimeInSeconds"] as? Int64
		}
		if dict["couponGroupId"] != nil {
			couponGroupId = dict["couponGroupId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(adapterId != nil) {
			dict["adapterId"] = adapterId!
		}
		if(adapterDynamicData != nil) {
			dict["adapterDynamicData"] = adapterDynamicData!
		}
		if(intervalSeconds != nil) {
			dict["intervalSeconds"] = intervalSeconds!
		}
		if(userList != nil) {
			dict["userList"] = userList!
		}
		if(sendTimeInSeconds != nil) {
			dict["sendTimeInSeconds"] = sendTimeInSeconds!
		}
		if(couponGroupId != nil) {
			dict["couponGroupId"] = couponGroupId!
		}
		return dict
	}
}

