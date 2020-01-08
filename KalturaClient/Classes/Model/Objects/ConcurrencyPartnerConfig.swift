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

/**  Partner concurrency configuration  */
open class ConcurrencyPartnerConfig: PartnerConfiguration {

	public class ConcurrencyPartnerConfigTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var deviceFamilyIds: BaseTokenizedObject {
			get {
				return self.append("deviceFamilyIds") 
			}
		}
		
		public var evictionPolicy: BaseTokenizedObject {
			get {
				return self.append("evictionPolicy") 
			}
		}
	}

	/**  Comma separated list of device Family Ids order by their priority.  */
	public var deviceFamilyIds: String? = nil
	/**  Policy of eviction devices  */
	public var evictionPolicy: EvictionPolicyType? = nil


	public func setMultiRequestToken(deviceFamilyIds: String) {
		self.dict["deviceFamilyIds"] = deviceFamilyIds
	}
	
	public func setMultiRequestToken(evictionPolicy: String) {
		self.dict["evictionPolicy"] = evictionPolicy
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["deviceFamilyIds"] != nil {
			deviceFamilyIds = dict["deviceFamilyIds"] as? String
		}
		if dict["evictionPolicy"] != nil {
			evictionPolicy = EvictionPolicyType(rawValue: "\(dict["evictionPolicy"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(deviceFamilyIds != nil) {
			dict["deviceFamilyIds"] = deviceFamilyIds!
		}
		if(evictionPolicy != nil) {
			dict["evictionPolicy"] = evictionPolicy!.rawValue
		}
		return dict
	}
}

