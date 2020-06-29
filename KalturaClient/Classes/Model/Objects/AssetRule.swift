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

/**  Asset rule  */
open class AssetRule: AssetRuleBase {

	public class AssetRuleTokenizer: AssetRuleBase.AssetRuleBaseTokenizer {
		
		public var conditions: ArrayTokenizedObject<Condition.ConditionTokenizer> {
			get {
				return ArrayTokenizedObject<Condition.ConditionTokenizer>(self.append("conditions"))
			} 
		}
		
		public var actions: ArrayTokenizedObject<AssetRuleAction.AssetRuleActionTokenizer> {
			get {
				return ArrayTokenizedObject<AssetRuleAction.AssetRuleActionTokenizer>(self.append("actions"))
			} 
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  List of conditions for the rule  */
	public var conditions: Array<Condition>? = nil
	/**  List of actions for the rule  */
	public var actions: Array<AssetRuleAction>? = nil
	/**  List of actions for the rule  */
	public var status: AssetRuleStatus? = nil


	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["conditions"] != nil {
			conditions = try JSONParser.parse(array: dict["conditions"] as! [Any])
		}
		if dict["actions"] != nil {
			actions = try JSONParser.parse(array: dict["actions"] as! [Any])
		}
		if dict["status"] != nil {
			status = AssetRuleStatus(rawValue: "\(dict["status"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(conditions != nil) {
			dict["conditions"] = conditions!.map { value in value.toDictionary() }
		}
		if(actions != nil) {
			dict["actions"] = actions!.map { value in value.toDictionary() }
		}
		return dict
	}
}

