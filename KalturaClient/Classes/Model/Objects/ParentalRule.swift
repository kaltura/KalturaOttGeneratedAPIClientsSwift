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

/**  Parental rule  */
open class ParentalRule: ObjectBase {

	public class ParentalRuleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var order: BaseTokenizedObject {
			get {
				return self.append("order") 
			}
		}
		
		public var mediaTag: BaseTokenizedObject {
			get {
				return self.append("mediaTag") 
			}
		}
		
		public var epgTag: BaseTokenizedObject {
			get {
				return self.append("epgTag") 
			}
		}
		
		public var blockAnonymousAccess: BaseTokenizedObject {
			get {
				return self.append("blockAnonymousAccess") 
			}
		}
		
		public var ruleType: BaseTokenizedObject {
			get {
				return self.append("ruleType") 
			}
		}
		
		public var mediaTagValues: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("mediaTagValues"))
			} 
		}
		
		public var epgTagValues: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("epgTagValues"))
			} 
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var origin: BaseTokenizedObject {
			get {
				return self.append("origin") 
			}
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
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
	}

	/**  Unique parental rule identifier  */
	public var id: Int64? = nil
	/**  Rule display name  */
	public var name: String? = nil
	/**  Explanatory description  */
	public var description: String? = nil
	/**  Rule order within the full list of rules  */
	public var order: Int? = nil
	/**  Media asset tag ID to in which to look for corresponding trigger values  */
	public var mediaTag: Int? = nil
	/**  EPG asset tag ID to in which to look for corresponding trigger values  */
	public var epgTag: Int? = nil
	/**  Content that correspond to this rule is not available for guests  */
	public var blockAnonymousAccess: Bool? = nil
	/**  Rule type – Movies, TV series or both  */
	public var ruleType: ParentalRuleType? = nil
	/**  Media tag values that trigger rule  */
	public var mediaTagValues: Array<StringValue>? = nil
	/**  EPG tag values that trigger rule  */
	public var epgTagValues: Array<StringValue>? = nil
	/**  Is the rule the default rule of the account  */
	public var isDefault: Bool? = nil
	/**  Where was this rule defined account, household or user  */
	public var origin: RuleLevel? = nil
	/**  active status  */
	public var isActive: Bool? = nil
	/**  Specifies when was the parental rule created. Date and time represented as
	  epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the parental rule last updated. Date and time represented as
	  epoch.  */
	public var updateDate: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(order: String) {
		self.dict["order"] = order
	}
	
	public func setMultiRequestToken(mediaTag: String) {
		self.dict["mediaTag"] = mediaTag
	}
	
	public func setMultiRequestToken(epgTag: String) {
		self.dict["epgTag"] = epgTag
	}
	
	public func setMultiRequestToken(blockAnonymousAccess: String) {
		self.dict["blockAnonymousAccess"] = blockAnonymousAccess
	}
	
	public func setMultiRequestToken(ruleType: String) {
		self.dict["ruleType"] = ruleType
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(origin: String) {
		self.dict["origin"] = origin
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
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["order"] != nil {
			order = dict["order"] as? Int
		}
		if dict["mediaTag"] != nil {
			mediaTag = dict["mediaTag"] as? Int
		}
		if dict["epgTag"] != nil {
			epgTag = dict["epgTag"] as? Int
		}
		if dict["blockAnonymousAccess"] != nil {
			blockAnonymousAccess = dict["blockAnonymousAccess"] as? Bool
		}
		if dict["ruleType"] != nil {
			ruleType = ParentalRuleType(rawValue: "\(dict["ruleType"]!)")
		}
		if dict["mediaTagValues"] != nil {
			mediaTagValues = try JSONParser.parse(array: dict["mediaTagValues"] as! [Any])
		}
		if dict["epgTagValues"] != nil {
			epgTagValues = try JSONParser.parse(array: dict["epgTagValues"] as! [Any])
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["origin"] != nil {
			origin = RuleLevel(rawValue: "\(dict["origin"]!)")
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(order != nil) {
			dict["order"] = order!
		}
		if(mediaTag != nil) {
			dict["mediaTag"] = mediaTag!
		}
		if(epgTag != nil) {
			dict["epgTag"] = epgTag!
		}
		if(blockAnonymousAccess != nil) {
			dict["blockAnonymousAccess"] = blockAnonymousAccess!
		}
		if(ruleType != nil) {
			dict["ruleType"] = ruleType!.rawValue
		}
		if(mediaTagValues != nil) {
			dict["mediaTagValues"] = mediaTagValues!.map { value in value.toDictionary() }
		}
		if(epgTagValues != nil) {
			dict["epgTagValues"] = epgTagValues!.map { value in value.toDictionary() }
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		return dict
	}
}

