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

open class TriggerCampaignEvent: EventObject {

	public class TriggerCampaignEventTokenizer: EventObject.EventObjectTokenizer {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var campaignId: BaseTokenizedObject {
			get {
				return self.append("campaignId") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
	}

	/**  User Id  */
	public var userId: Int64? = nil
	/**  Campaign Id  */
	public var campaignId: Int64? = nil
	/**  Udid  */
	public var udid: String? = nil
	/**  Household Id  */
	public var householdId: Int64? = nil


	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(campaignId: String) {
		self.dict["campaignId"] = campaignId
	}
	
	public func setMultiRequestToken(udid: String) {
		self.dict["udid"] = udid
	}
	
	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = Int64("\(dict["userId"]!)")
		}
		if dict["campaignId"] != nil {
			campaignId = Int64("\(dict["campaignId"]!)")
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["householdId"] != nil {
			householdId = Int64("\(dict["householdId"]!)")
		}

	}

}
