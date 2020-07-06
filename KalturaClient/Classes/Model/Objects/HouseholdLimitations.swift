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

/**  Household limitations details  */
open class HouseholdLimitations: ObjectBase {

	public class HouseholdLimitationsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var concurrentLimit: BaseTokenizedObject {
			get {
				return self.append("concurrentLimit") 
			}
		}
		
		public var deviceLimit: BaseTokenizedObject {
			get {
				return self.append("deviceLimit") 
			}
		}
		
		public var deviceFrequency: BaseTokenizedObject {
			get {
				return self.append("deviceFrequency") 
			}
		}
		
		public var deviceFrequencyDescription: BaseTokenizedObject {
			get {
				return self.append("deviceFrequencyDescription") 
			}
		}
		
		public var userFrequency: BaseTokenizedObject {
			get {
				return self.append("userFrequency") 
			}
		}
		
		public var userFrequencyDescription: BaseTokenizedObject {
			get {
				return self.append("userFrequencyDescription") 
			}
		}
		
		public var npvrQuotaInSeconds: BaseTokenizedObject {
			get {
				return self.append("npvrQuotaInSeconds") 
			}
		}
		
		public var usersLimit: BaseTokenizedObject {
			get {
				return self.append("usersLimit") 
			}
		}
		
		public var deviceFamiliesLimitations: ArrayTokenizedObject<HouseholdDeviceFamilyLimitations.HouseholdDeviceFamilyLimitationsTokenizer> {
			get {
				return ArrayTokenizedObject<HouseholdDeviceFamilyLimitations.HouseholdDeviceFamilyLimitationsTokenizer>(self.append("deviceFamiliesLimitations"))
			} 
		}
	}

	/**  Household limitation module identifier  */
	public var id: Int? = nil
	/**  Household limitation module name  */
	public var name: String? = nil
	/**  Max number of streams allowed for the household  */
	public var concurrentLimit: Int? = nil
	/**  Max number of devices allowed for the household  */
	public var deviceLimit: Int? = nil
	/**  Allowed device change frequency code  */
	public var deviceFrequency: Int? = nil
	/**  Allowed device change frequency description  */
	public var deviceFrequencyDescription: String? = nil
	/**  Allowed user change frequency code  */
	public var userFrequency: Int? = nil
	/**  Allowed user change frequency description  */
	public var userFrequencyDescription: String? = nil
	/**  Allowed NPVR Quota in Seconds  */
	public var npvrQuotaInSeconds: Int? = nil
	/**  Max number of users allowed for the household  */
	public var usersLimit: Int? = nil
	/**  Device families limitations  */
	public var deviceFamiliesLimitations: Array<HouseholdDeviceFamilyLimitations>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(concurrentLimit: String) {
		self.dict["concurrentLimit"] = concurrentLimit
	}
	
	public func setMultiRequestToken(deviceLimit: String) {
		self.dict["deviceLimit"] = deviceLimit
	}
	
	public func setMultiRequestToken(deviceFrequency: String) {
		self.dict["deviceFrequency"] = deviceFrequency
	}
	
	public func setMultiRequestToken(deviceFrequencyDescription: String) {
		self.dict["deviceFrequencyDescription"] = deviceFrequencyDescription
	}
	
	public func setMultiRequestToken(userFrequency: String) {
		self.dict["userFrequency"] = userFrequency
	}
	
	public func setMultiRequestToken(userFrequencyDescription: String) {
		self.dict["userFrequencyDescription"] = userFrequencyDescription
	}
	
	public func setMultiRequestToken(npvrQuotaInSeconds: String) {
		self.dict["npvrQuotaInSeconds"] = npvrQuotaInSeconds
	}
	
	public func setMultiRequestToken(usersLimit: String) {
		self.dict["usersLimit"] = usersLimit
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["concurrentLimit"] != nil {
			concurrentLimit = dict["concurrentLimit"] as? Int
		}
		if dict["deviceLimit"] != nil {
			deviceLimit = dict["deviceLimit"] as? Int
		}
		if dict["deviceFrequency"] != nil {
			deviceFrequency = dict["deviceFrequency"] as? Int
		}
		if dict["deviceFrequencyDescription"] != nil {
			deviceFrequencyDescription = dict["deviceFrequencyDescription"] as? String
		}
		if dict["userFrequency"] != nil {
			userFrequency = dict["userFrequency"] as? Int
		}
		if dict["userFrequencyDescription"] != nil {
			userFrequencyDescription = dict["userFrequencyDescription"] as? String
		}
		if dict["npvrQuotaInSeconds"] != nil {
			npvrQuotaInSeconds = dict["npvrQuotaInSeconds"] as? Int
		}
		if dict["usersLimit"] != nil {
			usersLimit = dict["usersLimit"] as? Int
		}
		if dict["deviceFamiliesLimitations"] != nil {
			deviceFamiliesLimitations = try JSONParser.parse(array: dict["deviceFamiliesLimitations"] as! [Any])
		}

	}

}

