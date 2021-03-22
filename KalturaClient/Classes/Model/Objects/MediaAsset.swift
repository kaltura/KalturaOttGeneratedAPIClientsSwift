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

/**  Media-asset info  */
open class MediaAsset: Asset {

	public class MediaAssetTokenizer: Asset.AssetTokenizer {
		
		public var externalIds: BaseTokenizedObject {
			get {
				return self.append("externalIds") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var deviceRuleId: BaseTokenizedObject {
			get {
				return self.append("deviceRuleId") 
			}
		}
		
		public var geoBlockRuleId: BaseTokenizedObject {
			get {
				return self.append("geoBlockRuleId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var inheritancePolicy: BaseTokenizedObject {
			get {
				return self.append("inheritancePolicy") 
			}
		}
	}

	/**  External identifiers  */
	public var externalIds: String? = nil
	/**  Entry Identifier  */
	public var entryId: String? = nil
	/**  Device rule identifier  */
	public var deviceRuleId: Int? = nil
	/**  Geo block rule identifier  */
	public var geoBlockRuleId: Int? = nil
	/**  The media asset status  */
	public var status: Bool? = nil
	/**  The media asset inheritance policy  */
	public var inheritancePolicy: AssetInheritancePolicy? = nil


	public func setMultiRequestToken(externalIds: String) {
		self.dict["externalIds"] = externalIds
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(deviceRuleId: String) {
		self.dict["deviceRuleId"] = deviceRuleId
	}
	
	public func setMultiRequestToken(geoBlockRuleId: String) {
		self.dict["geoBlockRuleId"] = geoBlockRuleId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(inheritancePolicy: String) {
		self.dict["inheritancePolicy"] = inheritancePolicy
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["externalIds"] != nil {
			externalIds = dict["externalIds"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["deviceRuleId"] != nil {
			deviceRuleId = dict["deviceRuleId"] as? Int
		}
		if dict["geoBlockRuleId"] != nil {
			geoBlockRuleId = dict["geoBlockRuleId"] as? Int
		}
		if dict["status"] != nil {
			status = dict["status"] as? Bool
		}
		if dict["inheritancePolicy"] != nil {
			inheritancePolicy = AssetInheritancePolicy(rawValue: "\(dict["inheritancePolicy"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalIds != nil) {
			dict["externalIds"] = externalIds!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(deviceRuleId != nil) {
			dict["deviceRuleId"] = deviceRuleId!
		}
		if(geoBlockRuleId != nil) {
			dict["geoBlockRuleId"] = geoBlockRuleId!
		}
		if(status != nil) {
			dict["status"] = status!
		}
		if(inheritancePolicy != nil) {
			dict["inheritancePolicy"] = inheritancePolicy!.rawValue
		}
		return dict
	}
}

