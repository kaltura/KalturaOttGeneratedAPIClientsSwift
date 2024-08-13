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

open class VodIngestAssetResultFilter: Filter {

	public class VodIngestAssetResultFilterTokenizer: Filter.FilterTokenizer {
		
		public var fileNameContains: BaseTokenizedObject {
			get {
				return self.append("fileNameContains") 
			}
		}
		
		public var assetNameContains: BaseTokenizedObject {
			get {
				return self.append("assetNameContains") 
			}
		}
		
		public var ingestStatusIn: BaseTokenizedObject {
			get {
				return self.append("ingestStatusIn") 
			}
		}
		
		public var ingestDateGreaterThan: BaseTokenizedObject {
			get {
				return self.append("ingestDateGreaterThan") 
			}
		}
		
		public var ingestDateSmallerThan: BaseTokenizedObject {
			get {
				return self.append("ingestDateSmallerThan") 
			}
		}
		
		public var vodTypeSystemNameIn: BaseTokenizedObject {
			get {
				return self.append("vodTypeSystemNameIn") 
			}
		}
		
		public var shopAssetUserRuleIdIn: BaseTokenizedObject {
			get {
				return self.append("shopAssetUserRuleIdIn") 
			}
		}
	}

	/**  Filter KalturaVodIngestAssetResult elements based on the ingest XML file name or
	  partial name.  */
	public var fileNameContains: String? = nil
	/**  Filter KalturaVodIngestAssetResult elements based on the asset name or partial
	  name.  */
	public var assetNameContains: String? = nil
	/**  Comma separated values, representing multiple selection of ingest status state
	  (\&amp;quot;SUCCESS\&amp;quot;,\&amp;quot;FAIL\&amp;quot;,\&amp;quot;SUCCESS_WARNING\&amp;quot;EXTERNAL_FAIL\&amp;quot;).  */
	public var ingestStatusIn: String? = nil
	/**  Filter assets ingested after the greater than value. Date and time represented
	  as epoch.  */
	public var ingestDateGreaterThan: Int64? = nil
	/**  Filter assets ingested before the smaller than value. Date and time represented
	  as epoch.  */
	public var ingestDateSmallerThan: Int64? = nil
	/**  Comma separated asset types, representing multiple selection of VOD asset types
	  (e.g.
	  \&amp;quot;MOVIE\&amp;quot;,\&amp;quot;SERIES\&amp;quot;,\&amp;quot;SEASON\&amp;quot;,\&amp;quot;EPISODE\&amp;quot;...).  */
	public var vodTypeSystemNameIn: String? = nil
	/**  Comma separated Ids, pointing to AssetUserRules which hold the shop markers
	  (shop provider values)  */
	public var shopAssetUserRuleIdIn: String? = nil


	public func setMultiRequestToken(fileNameContains: String) {
		self.dict["fileNameContains"] = fileNameContains
	}
	
	public func setMultiRequestToken(assetNameContains: String) {
		self.dict["assetNameContains"] = assetNameContains
	}
	
	public func setMultiRequestToken(ingestStatusIn: String) {
		self.dict["ingestStatusIn"] = ingestStatusIn
	}
	
	public func setMultiRequestToken(ingestDateGreaterThan: String) {
		self.dict["ingestDateGreaterThan"] = ingestDateGreaterThan
	}
	
	public func setMultiRequestToken(ingestDateSmallerThan: String) {
		self.dict["ingestDateSmallerThan"] = ingestDateSmallerThan
	}
	
	public func setMultiRequestToken(vodTypeSystemNameIn: String) {
		self.dict["vodTypeSystemNameIn"] = vodTypeSystemNameIn
	}
	
	public func setMultiRequestToken(shopAssetUserRuleIdIn: String) {
		self.dict["shopAssetUserRuleIdIn"] = shopAssetUserRuleIdIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fileNameContains"] != nil {
			fileNameContains = dict["fileNameContains"] as? String
		}
		if dict["assetNameContains"] != nil {
			assetNameContains = dict["assetNameContains"] as? String
		}
		if dict["ingestStatusIn"] != nil {
			ingestStatusIn = dict["ingestStatusIn"] as? String
		}
		if dict["ingestDateGreaterThan"] != nil {
			ingestDateGreaterThan = Int64("\(dict["ingestDateGreaterThan"]!)")
		}
		if dict["ingestDateSmallerThan"] != nil {
			ingestDateSmallerThan = Int64("\(dict["ingestDateSmallerThan"]!)")
		}
		if dict["vodTypeSystemNameIn"] != nil {
			vodTypeSystemNameIn = dict["vodTypeSystemNameIn"] as? String
		}
		if dict["shopAssetUserRuleIdIn"] != nil {
			shopAssetUserRuleIdIn = dict["shopAssetUserRuleIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileNameContains != nil) {
			dict["fileNameContains"] = fileNameContains!
		}
		if(assetNameContains != nil) {
			dict["assetNameContains"] = assetNameContains!
		}
		if(ingestStatusIn != nil) {
			dict["ingestStatusIn"] = ingestStatusIn!
		}
		if(ingestDateGreaterThan != nil) {
			dict["ingestDateGreaterThan"] = ingestDateGreaterThan!
		}
		if(ingestDateSmallerThan != nil) {
			dict["ingestDateSmallerThan"] = ingestDateSmallerThan!
		}
		if(vodTypeSystemNameIn != nil) {
			dict["vodTypeSystemNameIn"] = vodTypeSystemNameIn!
		}
		if(shopAssetUserRuleIdIn != nil) {
			dict["shopAssetUserRuleIdIn"] = shopAssetUserRuleIdIn!
		}
		return dict
	}
}

