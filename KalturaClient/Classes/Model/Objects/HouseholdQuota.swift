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

open class HouseholdQuota: ObjectBase {

	public class HouseholdQuotaTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var totalQuota: BaseTokenizedObject {
			get {
				return self.append("totalQuota") 
			}
		}
		
		public var availableQuota: BaseTokenizedObject {
			get {
				return self.append("availableQuota") 
			}
		}
	}

	/**  Household identifier  */
	public var householdId: Int64? = nil
	/**  Total quota that is allocated to the household  */
	public var totalQuota: Int? = nil
	/**  Available quota that household has remaining  */
	public var availableQuota: Int? = nil


	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(totalQuota: String) {
		self.dict["totalQuota"] = totalQuota
	}
	
	public func setMultiRequestToken(availableQuota: String) {
		self.dict["availableQuota"] = availableQuota
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["householdId"] != nil {
			householdId = Int64("\(dict["householdId"]!)")
		}
		if dict["totalQuota"] != nil {
			totalQuota = dict["totalQuota"] as? Int
		}
		if dict["availableQuota"] != nil {
			availableQuota = dict["availableQuota"] as? Int
		}

	}

}

