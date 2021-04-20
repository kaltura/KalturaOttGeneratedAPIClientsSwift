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

open class EpgNotificationSettings: ObjectBase {

	public class EpgNotificationSettingsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var enabled: BaseTokenizedObject {
			get {
				return self.append("enabled") 
			}
		}
		
		public var deviceFamilyIds: BaseTokenizedObject {
			get {
				return self.append("deviceFamilyIds") 
			}
		}
		
		public var liveAssetIds: BaseTokenizedObject {
			get {
				return self.append("liveAssetIds") 
			}
		}
		
		public var backwardTimeRange: BaseTokenizedObject {
			get {
				return self.append("backwardTimeRange") 
			}
		}
		
		public var forwardTimeRange: BaseTokenizedObject {
			get {
				return self.append("forwardTimeRange") 
			}
		}
	}

	/**  EPG notification capability is enabled for the account  */
	public var enabled: Bool? = nil
	/**  Specify which devices should receive notifications  */
	public var deviceFamilyIds: String? = nil
	/**  Specify which live assets should fire notifications  */
	public var liveAssetIds: String? = nil
	/**  The backward range (in hours), in which, EPG updates triggers a notification,   
	            every program that is updated and it’s starts time falls within this
	  range shall trigger a notification  */
	public var backwardTimeRange: Int? = nil
	/**  The forward range (in hours), in which, EPG updates triggers a notification,    
	           every program that is updated and it’s starts time falls within this
	  range shall trigger a notification  */
	public var forwardTimeRange: Int? = nil


	public func setMultiRequestToken(enabled: String) {
		self.dict["enabled"] = enabled
	}
	
	public func setMultiRequestToken(deviceFamilyIds: String) {
		self.dict["deviceFamilyIds"] = deviceFamilyIds
	}
	
	public func setMultiRequestToken(liveAssetIds: String) {
		self.dict["liveAssetIds"] = liveAssetIds
	}
	
	public func setMultiRequestToken(backwardTimeRange: String) {
		self.dict["backwardTimeRange"] = backwardTimeRange
	}
	
	public func setMultiRequestToken(forwardTimeRange: String) {
		self.dict["forwardTimeRange"] = forwardTimeRange
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["enabled"] != nil {
			enabled = dict["enabled"] as? Bool
		}
		if dict["deviceFamilyIds"] != nil {
			deviceFamilyIds = dict["deviceFamilyIds"] as? String
		}
		if dict["liveAssetIds"] != nil {
			liveAssetIds = dict["liveAssetIds"] as? String
		}
		if dict["backwardTimeRange"] != nil {
			backwardTimeRange = dict["backwardTimeRange"] as? Int
		}
		if dict["forwardTimeRange"] != nil {
			forwardTimeRange = dict["forwardTimeRange"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(enabled != nil) {
			dict["enabled"] = enabled!
		}
		if(deviceFamilyIds != nil) {
			dict["deviceFamilyIds"] = deviceFamilyIds!
		}
		if(liveAssetIds != nil) {
			dict["liveAssetIds"] = liveAssetIds!
		}
		if(backwardTimeRange != nil) {
			dict["backwardTimeRange"] = backwardTimeRange!
		}
		if(forwardTimeRange != nil) {
			dict["forwardTimeRange"] = forwardTimeRange!
		}
		return dict
	}
}

