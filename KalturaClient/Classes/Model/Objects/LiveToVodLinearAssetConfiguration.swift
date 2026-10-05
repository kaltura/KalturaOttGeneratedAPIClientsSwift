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

/**  Configuration of isL2vEnabled and retentionPeriodDays per each channel,
  overriding the defaults set in the account&amp;#39;s configuration.  */
open class LiveToVodLinearAssetConfiguration: ObjectBase {

	public class LiveToVodLinearAssetConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var linearAssetId: BaseTokenizedObject {
			get {
				return self.append("linearAssetId") 
			}
		}
		
		public var isL2vEnabled: BaseTokenizedObject {
			get {
				return self.append("isL2vEnabled") 
			}
		}
		
		public var retentionPeriodDays: BaseTokenizedObject {
			get {
				return self.append("retentionPeriodDays") 
			}
		}
	}

	/**  Linear asset&amp;#39;s identifier.  */
	public var linearAssetId: Int64? = nil
	/**  Enable/disable the feature per linear channel. Considered only if the flag is
	  enabled on the account level.  */
	public var isL2vEnabled: Bool? = nil
	/**  Number of days the L2V asset is retained in the system.              Optional -
	  if configured, overriding the account level value.  */
	public var retentionPeriodDays: Int? = nil


	public func setMultiRequestToken(linearAssetId: String) {
		self.dict["linearAssetId"] = linearAssetId
	}
	
	public func setMultiRequestToken(isL2vEnabled: String) {
		self.dict["isL2vEnabled"] = isL2vEnabled
	}
	
	public func setMultiRequestToken(retentionPeriodDays: String) {
		self.dict["retentionPeriodDays"] = retentionPeriodDays
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["linearAssetId"] != nil {
			linearAssetId = Int64("\(dict["linearAssetId"]!)")
		}
		if dict["isL2vEnabled"] != nil {
			isL2vEnabled = dict["isL2vEnabled"] as? Bool
		}
		if dict["retentionPeriodDays"] != nil {
			retentionPeriodDays = dict["retentionPeriodDays"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(linearAssetId != nil) {
			dict["linearAssetId"] = linearAssetId!
		}
		if(isL2vEnabled != nil) {
			dict["isL2vEnabled"] = isL2vEnabled!
		}
		if(retentionPeriodDays != nil) {
			dict["retentionPeriodDays"] = retentionPeriodDays!
		}
		return dict
	}
}

