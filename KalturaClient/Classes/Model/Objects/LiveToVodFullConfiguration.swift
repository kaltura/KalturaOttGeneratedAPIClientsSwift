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

open class LiveToVodFullConfiguration: ObjectBase {

	public class LiveToVodFullConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var metadataClassifier: BaseTokenizedObject {
			get {
				return self.append("metadataClassifier") 
			}
		}
		
		public var linearAssets: ArrayTokenizedObject<LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer> {
			get {
				return ArrayTokenizedObject<LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer>(self.append("linearAssets"))
			} 
		}
	}

	/**  Enable/disable the feature globally. If disabled, then all linear assets are not
	  enabled.  */
	public var isL2vEnabled: Bool? = nil
	/**  Number of days the L2V asset is retained in the system.  */
	public var retentionPeriodDays: Int? = nil
	/**  The name (label) of the metadata field marking the program asset to be
	  duplicated as a L2V asset.  */
	public var metadataClassifier: String? = nil
	/**  Configuring isL2vEnabled/retentionPeriodDays per each channel, overriding the
	  defaults set in the global isL2vEnabled and retentionPeriodDays parameters.  */
	public var linearAssets: Array<LiveToVodLinearAssetConfiguration>? = nil


	public func setMultiRequestToken(isL2vEnabled: String) {
		self.dict["isL2vEnabled"] = isL2vEnabled
	}
	
	public func setMultiRequestToken(retentionPeriodDays: String) {
		self.dict["retentionPeriodDays"] = retentionPeriodDays
	}
	
	public func setMultiRequestToken(metadataClassifier: String) {
		self.dict["metadataClassifier"] = metadataClassifier
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isL2vEnabled"] != nil {
			isL2vEnabled = dict["isL2vEnabled"] as? Bool
		}
		if dict["retentionPeriodDays"] != nil {
			retentionPeriodDays = dict["retentionPeriodDays"] as? Int
		}
		if dict["metadataClassifier"] != nil {
			metadataClassifier = dict["metadataClassifier"] as? String
		}
		if dict["linearAssets"] != nil {
			linearAssets = try JSONParser.parse(array: dict["linearAssets"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isL2vEnabled != nil) {
			dict["isL2vEnabled"] = isL2vEnabled!
		}
		if(retentionPeriodDays != nil) {
			dict["retentionPeriodDays"] = retentionPeriodDays!
		}
		if(metadataClassifier != nil) {
			dict["metadataClassifier"] = metadataClassifier!
		}
		if(linearAssets != nil) {
			dict["linearAssets"] = linearAssets!.map { value in value.toDictionary() }
		}
		return dict
	}
}

