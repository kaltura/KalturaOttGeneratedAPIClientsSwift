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

/**  Program-asset info  */
open class ProgramAsset: Asset {

	public class ProgramAssetTokenizer: Asset.AssetTokenizer {
		
		public var epgChannelId: BaseTokenizedObject {
			get {
				return self.append("epgChannelId") 
			}
		}
		
		public var epgId: BaseTokenizedObject {
			get {
				return self.append("epgId") 
			}
		}
		
		public var relatedMediaId: BaseTokenizedObject {
			get {
				return self.append("relatedMediaId") 
			}
		}
		
		public var crid: BaseTokenizedObject {
			get {
				return self.append("crid") 
			}
		}
		
		public var linearAssetId: BaseTokenizedObject {
			get {
				return self.append("linearAssetId") 
			}
		}
		
		public var enableCdvr: BaseTokenizedObject {
			get {
				return self.append("enableCdvr") 
			}
		}
		
		public var enableCatchUp: BaseTokenizedObject {
			get {
				return self.append("enableCatchUp") 
			}
		}
		
		public var enableStartOver: BaseTokenizedObject {
			get {
				return self.append("enableStartOver") 
			}
		}
		
		public var enableTrickPlay: BaseTokenizedObject {
			get {
				return self.append("enableTrickPlay") 
			}
		}
	}

	/**  EPG channel identifier  */
	public var epgChannelId: Int64? = nil
	/**  EPG identifier  */
	public var epgId: String? = nil
	/**  Ralated media identifier  */
	public var relatedMediaId: Int64? = nil
	/**  Unique identifier for the program  */
	public var crid: String? = nil
	/**  Id of linear media asset  */
	public var linearAssetId: Int64? = nil
	/**  Is CDVR enabled for this asset  */
	public var enableCdvr: Bool? = nil
	/**  Is catch-up enabled for this asset  */
	public var enableCatchUp: Bool? = nil
	/**  Is start over enabled for this asset  */
	public var enableStartOver: Bool? = nil
	/**  Is trick-play enabled for this asset  */
	public var enableTrickPlay: Bool? = nil


	public func setMultiRequestToken(epgChannelId: String) {
		self.dict["epgChannelId"] = epgChannelId
	}
	
	public func setMultiRequestToken(epgId: String) {
		self.dict["epgId"] = epgId
	}
	
	public func setMultiRequestToken(relatedMediaId: String) {
		self.dict["relatedMediaId"] = relatedMediaId
	}
	
	public func setMultiRequestToken(crid: String) {
		self.dict["crid"] = crid
	}
	
	public func setMultiRequestToken(linearAssetId: String) {
		self.dict["linearAssetId"] = linearAssetId
	}
	
	public func setMultiRequestToken(enableCdvr: String) {
		self.dict["enableCdvr"] = enableCdvr
	}
	
	public func setMultiRequestToken(enableCatchUp: String) {
		self.dict["enableCatchUp"] = enableCatchUp
	}
	
	public func setMultiRequestToken(enableStartOver: String) {
		self.dict["enableStartOver"] = enableStartOver
	}
	
	public func setMultiRequestToken(enableTrickPlay: String) {
		self.dict["enableTrickPlay"] = enableTrickPlay
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["epgChannelId"] != nil {
			epgChannelId = Int64("\(dict["epgChannelId"]!)")
		}
		if dict["epgId"] != nil {
			epgId = dict["epgId"] as? String
		}
		if dict["relatedMediaId"] != nil {
			relatedMediaId = Int64("\(dict["relatedMediaId"]!)")
		}
		if dict["crid"] != nil {
			crid = dict["crid"] as? String
		}
		if dict["linearAssetId"] != nil {
			linearAssetId = Int64("\(dict["linearAssetId"]!)")
		}
		if dict["enableCdvr"] != nil {
			enableCdvr = dict["enableCdvr"] as? Bool
		}
		if dict["enableCatchUp"] != nil {
			enableCatchUp = dict["enableCatchUp"] as? Bool
		}
		if dict["enableStartOver"] != nil {
			enableStartOver = dict["enableStartOver"] as? Bool
		}
		if dict["enableTrickPlay"] != nil {
			enableTrickPlay = dict["enableTrickPlay"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(relatedMediaId != nil) {
			dict["relatedMediaId"] = relatedMediaId!
		}
		if(crid != nil) {
			dict["crid"] = crid!
		}
		if(linearAssetId != nil) {
			dict["linearAssetId"] = linearAssetId!
		}
		if(enableCdvr != nil) {
			dict["enableCdvr"] = enableCdvr!
		}
		if(enableCatchUp != nil) {
			dict["enableCatchUp"] = enableCatchUp!
		}
		if(enableStartOver != nil) {
			dict["enableStartOver"] = enableStartOver!
		}
		if(enableTrickPlay != nil) {
			dict["enableTrickPlay"] = enableTrickPlay!
		}
		return dict
	}
}

