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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Parental rule  */
open class ParentalRule: ObjectBase {

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


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int64
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

	}

	public override func toDictionary() -> [String: Any] {
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
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(origin != nil) {
			dict["origin"] = origin!.rawValue
		}
		return dict
	}
}

