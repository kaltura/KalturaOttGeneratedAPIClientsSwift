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

/**  Defines a condition which is essentially a combination of several content-based
  actions, each has their own score multiplier  */
open class ContentScoreCondition: BaseSegmentCondition {

	public class ContentScoreConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public var minScore: BaseTokenizedObject {
			get {
				return self.append("minScore") 
			}
		}
		
		public var maxScore: BaseTokenizedObject {
			get {
				return self.append("maxScore") 
			}
		}
		
		public var days: BaseTokenizedObject {
			get {
				return self.append("days") 
			}
		}
		
		public var field: BaseTokenizedObject {
			get {
				return self.append("field") 
			}
		}
		
		public var values: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("values"))
			} 
		}
		
		public var actions: ArrayTokenizedObject<ContentActionCondition.ContentActionConditionTokenizer> {
			get {
				return ArrayTokenizedObject<ContentActionCondition.ContentActionConditionTokenizer>(self.append("actions"))
			} 
		}
	}

	/**  The minimum score to be met  */
	public var minScore: Int? = nil
	/**  The maximum score to be met  */
	public var maxScore: Int? = nil
	/**  How many days back should the actions be considered  */
	public var days: Int? = nil
	/**  If condition should be applied on specific field (and not the one of the segment
	  value)  */
	public var field: String? = nil
	/**  If condition should be applied on specific field (and not the one of the segment
	  value) -               list of values to be considered together  */
	public var values: Array<StringValue>? = nil
	/**  List of the actions that consist the condition  */
	public var actions: Array<ContentActionCondition>? = nil


	public func setMultiRequestToken(minScore: String) {
		self.dict["minScore"] = minScore
	}
	
	public func setMultiRequestToken(maxScore: String) {
		self.dict["maxScore"] = maxScore
	}
	
	public func setMultiRequestToken(days: String) {
		self.dict["days"] = days
	}
	
	public func setMultiRequestToken(field: String) {
		self.dict["field"] = field
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["minScore"] != nil {
			minScore = dict["minScore"] as? Int
		}
		if dict["maxScore"] != nil {
			maxScore = dict["maxScore"] as? Int
		}
		if dict["days"] != nil {
			days = dict["days"] as? Int
		}
		if dict["field"] != nil {
			field = dict["field"] as? String
		}
		if dict["values"] != nil {
			values = try JSONParser.parse(array: dict["values"] as! [Any])
		}
		if dict["actions"] != nil {
			actions = try JSONParser.parse(array: dict["actions"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(minScore != nil) {
			dict["minScore"] = minScore!
		}
		if(maxScore != nil) {
			dict["maxScore"] = maxScore!
		}
		if(days != nil) {
			dict["days"] = days!
		}
		if(field != nil) {
			dict["field"] = field!
		}
		if(values != nil) {
			dict["values"] = values!.map { value in value.toDictionary() }
		}
		if(actions != nil) {
			dict["actions"] = actions!.map { value in value.toDictionary() }
		}
		return dict
	}
}

