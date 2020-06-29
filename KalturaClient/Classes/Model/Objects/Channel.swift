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

/**  Channel details  */
open class Channel: BaseChannel {

	public class ChannelTokenizer: BaseChannel.BaseChannelTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var multilingualName: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualName"))
			} 
		}
		
		public var oldName: BaseTokenizedObject {
			get {
				return self.append("oldName") 
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var multilingualDescription: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualDescription"))
			} 
		}
		
		public var oldDescription: BaseTokenizedObject {
			get {
				return self.append("oldDescription") 
			}
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public func orderBy<T: ChannelOrder.ChannelOrderTokenizer>() -> T {
			return T(self.append("orderBy"))
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
		
		public var supportSegmentBasedOrdering: BaseTokenizedObject {
			get {
				return self.append("supportSegmentBasedOrdering") 
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

	/**  Channel name  */
	public var name: String? = nil
	/**  Channel name  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  Channel name  */
	public var oldName: String? = nil
	/**  Channel system name  */
	public var systemName: String? = nil
	/**  Cannel description  */
	public var description: String? = nil
	/**  Cannel description  */
	public var multilingualDescription: Array<TranslationToken>? = nil
	/**  Cannel description  */
	public var oldDescription: String? = nil
	/**  active status  */
	public var isActive: Bool? = nil
	/**  Channel order by  */
	public var orderBy: ChannelOrder? = nil
	/**  Specifies when was the Channel was created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the Channel last updated. Date and time represented as epoch.  */
	public var updateDate: Int64? = nil
	/**  Specifies whether the assets in this channel will be ordered based on their
	  match to the user&amp;#39;s segments (see BEO-5524)  */
	public var supportSegmentBasedOrdering: Bool? = nil
	/**  Asset user rule identifier  */
	public var assetUserRuleId: Int64? = nil
	/**  key/value map field for extra data  */
	public var metaData: Dictionary<String, StringValue>? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(oldName: String) {
		self.dict["oldName"] = oldName
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(oldDescription: String) {
		self.dict["oldDescription"] = oldDescription
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(supportSegmentBasedOrdering: String) {
		self.dict["supportSegmentBasedOrdering"] = supportSegmentBasedOrdering
	}
	
	public func setMultiRequestToken(assetUserRuleId: String) {
		self.dict["assetUserRuleId"] = assetUserRuleId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
		}
		if dict["oldName"] != nil {
			oldName = dict["oldName"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["multilingualDescription"] != nil {
			multilingualDescription = try JSONParser.parse(array: dict["multilingualDescription"] as! [Any])
		}
		if dict["oldDescription"] != nil {
			oldDescription = dict["oldDescription"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["orderBy"] != nil {
		orderBy = try JSONParser.parse(object: dict["orderBy"] as! [String: Any])		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["supportSegmentBasedOrdering"] != nil {
			supportSegmentBasedOrdering = dict["supportSegmentBasedOrdering"] as? Bool
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
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(oldName != nil) {
			dict["oldName"] = oldName!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.map { value in value.toDictionary() }
		}
		if(oldDescription != nil) {
			dict["oldDescription"] = oldDescription!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!.toDictionary()
		}
		if(supportSegmentBasedOrdering != nil) {
			dict["supportSegmentBasedOrdering"] = supportSegmentBasedOrdering!
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

