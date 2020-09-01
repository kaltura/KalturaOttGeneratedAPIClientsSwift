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

/**  Device family limitations details  */
open class HouseholdDeviceFamilyLimitations: DeviceFamilyBase {

	public class HouseholdDeviceFamilyLimitationsTokenizer: DeviceFamilyBase.DeviceFamilyBaseTokenizer {
		
		public var frequency: BaseTokenizedObject {
			get {
				return self.append("frequency") 
			}
		}
		
		public var deviceLimit: BaseTokenizedObject {
			get {
				return self.append("deviceLimit") 
			}
		}
		
		public var concurrentLimit: BaseTokenizedObject {
			get {
				return self.append("concurrentLimit") 
			}
		}
	}

	/**  Allowed device change frequency code  */
	public var frequency: Int? = nil
	/**  Max number of devices allowed for this family  */
	public var deviceLimit: Int? = nil
	/**  Max number of streams allowed for this family  */
	public var concurrentLimit: Int? = nil


	public func setMultiRequestToken(frequency: String) {
		self.dict["frequency"] = frequency
	}
	
	public func setMultiRequestToken(deviceLimit: String) {
		self.dict["deviceLimit"] = deviceLimit
	}
	
	public func setMultiRequestToken(concurrentLimit: String) {
		self.dict["concurrentLimit"] = concurrentLimit
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["frequency"] != nil {
			frequency = dict["frequency"] as? Int
		}
		if dict["deviceLimit"] != nil {
			deviceLimit = dict["deviceLimit"] as? Int
		}
		if dict["concurrentLimit"] != nil {
			concurrentLimit = dict["concurrentLimit"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(frequency != nil) {
			dict["frequency"] = frequency!
		}
		if(deviceLimit != nil) {
			dict["deviceLimit"] = deviceLimit!
		}
		if(concurrentLimit != nil) {
			dict["concurrentLimit"] = concurrentLimit!
		}
		return dict
	}
}

