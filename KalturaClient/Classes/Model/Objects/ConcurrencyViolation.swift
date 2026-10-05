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

open class ConcurrencyViolation: EventObject {

	public class ConcurrencyViolationTokenizer: EventObject.EventObjectTokenizer {
		
		public var timestamp: BaseTokenizedObject {
			get {
				return self.append("timestamp") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var violationRule: BaseTokenizedObject {
			get {
				return self.append("violationRule") 
			}
		}
		
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
	}

	/**  Timestamp  */
	public var timestamp: Int64? = nil
	/**  UDID  */
	public var udid: String? = nil
	/**  Asset Id  */
	public var assetId: String? = nil
	/**  Violation Rule  */
	public var violationRule: String? = nil
	/**  Household Id  */
	public var householdId: String? = nil
	/**  User Id  */
	public var userId: String? = nil


	public func setMultiRequestToken(timestamp: String) {
		self.dict["timestamp"] = timestamp
	}
	
	public func setMultiRequestToken(udid: String) {
		self.dict["udid"] = udid
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(violationRule: String) {
		self.dict["violationRule"] = violationRule
	}
	
	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["timestamp"] != nil {
			timestamp = Int64("\(dict["timestamp"]!)")
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["violationRule"] != nil {
			violationRule = dict["violationRule"] as? String
		}
		if dict["householdId"] != nil {
			householdId = dict["householdId"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(timestamp != nil) {
			dict["timestamp"] = timestamp!
		}
		if(udid != nil) {
			dict["udid"] = udid!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(violationRule != nil) {
			dict["violationRule"] = violationRule!
		}
		if(householdId != nil) {
			dict["householdId"] = householdId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		return dict
	}
}

