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

open class SeriesIdArguments: ObjectBase {

	public class SeriesIdArgumentsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetTypeIdIn: BaseTokenizedObject {
			get {
				return self.append("assetTypeIdIn") 
			}
		}
		
		public var seriesId: BaseTokenizedObject {
			get {
				return self.append("seriesId") 
			}
		}
		
		public var seriesIdMetaName: BaseTokenizedObject {
			get {
				return self.append("seriesIdMetaName") 
			}
		}
		
		public var seasonNumberMetaName: BaseTokenizedObject {
			get {
				return self.append("seasonNumberMetaName") 
			}
		}
		
		public var episodeNumberMetaName: BaseTokenizedObject {
			get {
				return self.append("episodeNumberMetaName") 
			}
		}
	}

	/**  Comma separated asset type IDs  */
	public var assetTypeIdIn: String? = nil
	/**  Series ID  */
	public var seriesId: String? = nil
	/**  Series ID meta name.  */
	public var seriesIdMetaName: String? = nil
	/**  Season number meta name  */
	public var seasonNumberMetaName: String? = nil
	/**  Episode number meta name  */
	public var episodeNumberMetaName: String? = nil


	public func setMultiRequestToken(assetTypeIdIn: String) {
		self.dict["assetTypeIdIn"] = assetTypeIdIn
	}
	
	public func setMultiRequestToken(seriesId: String) {
		self.dict["seriesId"] = seriesId
	}
	
	public func setMultiRequestToken(seriesIdMetaName: String) {
		self.dict["seriesIdMetaName"] = seriesIdMetaName
	}
	
	public func setMultiRequestToken(seasonNumberMetaName: String) {
		self.dict["seasonNumberMetaName"] = seasonNumberMetaName
	}
	
	public func setMultiRequestToken(episodeNumberMetaName: String) {
		self.dict["episodeNumberMetaName"] = episodeNumberMetaName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetTypeIdIn"] != nil {
			assetTypeIdIn = dict["assetTypeIdIn"] as? String
		}
		if dict["seriesId"] != nil {
			seriesId = dict["seriesId"] as? String
		}
		if dict["seriesIdMetaName"] != nil {
			seriesIdMetaName = dict["seriesIdMetaName"] as? String
		}
		if dict["seasonNumberMetaName"] != nil {
			seasonNumberMetaName = dict["seasonNumberMetaName"] as? String
		}
		if dict["episodeNumberMetaName"] != nil {
			episodeNumberMetaName = dict["episodeNumberMetaName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetTypeIdIn != nil) {
			dict["assetTypeIdIn"] = assetTypeIdIn!
		}
		if(seriesId != nil) {
			dict["seriesId"] = seriesId!
		}
		if(seriesIdMetaName != nil) {
			dict["seriesIdMetaName"] = seriesIdMetaName!
		}
		if(seasonNumberMetaName != nil) {
			dict["seasonNumberMetaName"] = seasonNumberMetaName!
		}
		if(episodeNumberMetaName != nil) {
			dict["episodeNumberMetaName"] = episodeNumberMetaName!
		}
		return dict
	}
}

