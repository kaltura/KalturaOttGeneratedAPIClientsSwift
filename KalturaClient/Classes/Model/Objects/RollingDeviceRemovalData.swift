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

open class RollingDeviceRemovalData: ObjectBase {

	public class RollingDeviceRemovalDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var rollingDeviceRemovalPolicy: BaseTokenizedObject {
			get {
				return self.append("rollingDeviceRemovalPolicy") 
			}
		}
		
		public var rollingDeviceRemovalFamilyIds: BaseTokenizedObject {
			get {
				return self.append("rollingDeviceRemovalFamilyIds") 
			}
		}
	}

	/**  Rolling Device Policy  */
	public var rollingDeviceRemovalPolicy: RollingDevicePolicy? = nil
	/**  Rolling Device Policy in a CSV style  */
	public var rollingDeviceRemovalFamilyIds: String? = nil


	public func setMultiRequestToken(rollingDeviceRemovalPolicy: String) {
		self.dict["rollingDeviceRemovalPolicy"] = rollingDeviceRemovalPolicy
	}
	
	public func setMultiRequestToken(rollingDeviceRemovalFamilyIds: String) {
		self.dict["rollingDeviceRemovalFamilyIds"] = rollingDeviceRemovalFamilyIds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["rollingDeviceRemovalPolicy"] != nil {
			rollingDeviceRemovalPolicy = RollingDevicePolicy(rawValue: "\(dict["rollingDeviceRemovalPolicy"]!)")
		}
		if dict["rollingDeviceRemovalFamilyIds"] != nil {
			rollingDeviceRemovalFamilyIds = dict["rollingDeviceRemovalFamilyIds"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(rollingDeviceRemovalPolicy != nil) {
			dict["rollingDeviceRemovalPolicy"] = rollingDeviceRemovalPolicy!.rawValue
		}
		if(rollingDeviceRemovalFamilyIds != nil) {
			dict["rollingDeviceRemovalFamilyIds"] = rollingDeviceRemovalFamilyIds!
		}
		return dict
	}
}

