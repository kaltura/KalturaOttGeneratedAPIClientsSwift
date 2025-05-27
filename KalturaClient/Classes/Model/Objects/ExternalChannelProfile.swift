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

/**  OSS Adapter  */
open class ExternalChannelProfile: ObjectBase {

	public class ExternalChannelProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public var externalIdentifier: BaseTokenizedObject {
			get {
				return self.append("externalIdentifier") 
			}
		}
		
		public var filterExpression: BaseTokenizedObject {
			get {
				return self.append("filterExpression") 
			}
		}
		
		public var recommendationEngineId: BaseTokenizedObject {
			get {
				return self.append("recommendationEngineId") 
			}
		}
		
		public var enrichments: ArrayTokenizedObject<ChannelEnrichmentHolder.ChannelEnrichmentHolderTokenizer> {
			get {
				return ArrayTokenizedObject<ChannelEnrichmentHolder.ChannelEnrichmentHolderTokenizer>(self.append("enrichments"))
			} 
		}
		
		public var assetUserRuleId: BaseTokenizedObject {
			get {
				return self.append("assetUserRuleId") 
			}
		}
		
		public var metaData: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("metaData"))
			}
		}
	}

	/**  External channel id  */
	public var id: Int? = nil
	/**  External channel name  */
	public var name: String? = nil
	/**  External channel active status  */
	public var isActive: Bool? = nil
	/**  External channel external identifier  */
	public var externalIdentifier: String? = nil
	/**  Filter expression  */
	public var filterExpression: String? = nil
	/**  Recommendation engine id  */
	public var recommendationEngineId: Int? = nil
	/**  Enrichments  */
	public var enrichments: Array<ChannelEnrichmentHolder>? = nil
	/**  Asset user rule identifier  */
	public var assetUserRuleId: Int64? = nil
	/**  key/value map field for extra data  */
	public var metaData: Dictionary<String, StringValue>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(externalIdentifier: String) {
		self.dict["externalIdentifier"] = externalIdentifier
	}
	
	public func setMultiRequestToken(filterExpression: String) {
		self.dict["filterExpression"] = filterExpression
	}
	
	public func setMultiRequestToken(recommendationEngineId: String) {
		self.dict["recommendationEngineId"] = recommendationEngineId
	}
	
	public func setMultiRequestToken(assetUserRuleId: String) {
		self.dict["assetUserRuleId"] = assetUserRuleId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["externalIdentifier"] != nil {
			externalIdentifier = dict["externalIdentifier"] as? String
		}
		if dict["filterExpression"] != nil {
			filterExpression = dict["filterExpression"] as? String
		}
		if dict["recommendationEngineId"] != nil {
			recommendationEngineId = dict["recommendationEngineId"] as? Int
		}
		if dict["enrichments"] != nil {
			enrichments = try JSONParser.parse(array: dict["enrichments"] as! [Any])
		}
		if dict["assetUserRuleId"] != nil {
			assetUserRuleId = Int64("\(dict["assetUserRuleId"]!)")
		}
		if dict["metaData"] != nil {
			metaData = try JSONParser.parse(map: dict["metaData"] as! [String: Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(externalIdentifier != nil) {
			dict["externalIdentifier"] = externalIdentifier!
		}
		if(filterExpression != nil) {
			dict["filterExpression"] = filterExpression!
		}
		if(recommendationEngineId != nil) {
			dict["recommendationEngineId"] = recommendationEngineId!
		}
		if(enrichments != nil) {
			dict["enrichments"] = enrichments!.map { value in value.toDictionary() }
		}
		if(assetUserRuleId != nil) {
			dict["assetUserRuleId"] = assetUserRuleId!
		}
		if(metaData != nil) {
			dict["metaData"] = metaData!.toDictionary()
		}
		return dict
	}
}

