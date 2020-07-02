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

/**  Partner billing configuration  */
open class BillingPartnerConfig: PartnerConfiguration {

	public class BillingPartnerConfigTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  configuration value  */
	public var value: String? = nil
	/**  partner configuration type  */
	public var type: PartnerConfigurationType? = nil


	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["value"] != nil {
			value = dict["value"] as? String
		}
		if dict["type"] != nil {
			type = PartnerConfigurationType(rawValue: "\(dict["type"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(value != nil) {
			dict["value"] = value!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		return dict
	}
}

