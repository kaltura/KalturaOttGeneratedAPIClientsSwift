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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Defines a condition which is essentially a combination of several content-based
  actions, each has their own score multiplier  */
open class ContentScoreCondition: BaseSegmentCondition {

	public class ContentScoreConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public var score: BaseTokenizedObject {
			get {
				return self.append("score") 
			}
		}
		
		public var actions: ArrayTokenizedObject<ContentActionCondition.ContentActionConditionTokenizer> {
			get {
				return ArrayTokenizedObject<ContentActionCondition.ContentActionConditionTokenizer>(self.append("actions"))
			} 
		}
	}

	/**  The minimum score to be met  */
	public var score: Int? = nil
	/**  List of the actions that consist the condition  */
	public var actions: Array<ContentActionCondition>? = nil


	public func setMultiRequestToken(score: String) {
		self.dict["score"] = score
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["score"] != nil {
			score = dict["score"] as? Int
		}
		if dict["actions"] != nil {
			actions = try JSONParser.parse(array: dict["actions"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(score != nil) {
			dict["score"] = score!
		}
		if(actions != nil) {
			dict["actions"] = actions!.map { value in value.toDictionary() }
		}
		return dict
	}
}

