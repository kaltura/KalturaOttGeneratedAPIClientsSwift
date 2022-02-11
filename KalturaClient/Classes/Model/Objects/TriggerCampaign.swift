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

/**  Campaign  */
open class TriggerCampaign: Campaign {

	public class TriggerCampaignTokenizer: Campaign.CampaignTokenizer {
		
		public var service: BaseTokenizedObject {
			get {
				return self.append("service") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var triggerConditions: ArrayTokenizedObject<Condition.ConditionTokenizer> {
			get {
				return ArrayTokenizedObject<Condition.ConditionTokenizer>(self.append("triggerConditions"))
			} 
		}
	}

	/**  service  */
	public var service: ApiService? = nil
	/**  action  */
	public var action: ApiAction? = nil
	/**  List of conditions for the trigger (conditions on the object)  */
	public var triggerConditions: Array<Condition>? = nil


	public func setMultiRequestToken(service: String) {
		self.dict["service"] = service
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["service"] != nil {
			service = ApiService(rawValue: "\(dict["service"]!)")
		}
		if dict["action"] != nil {
			action = ApiAction(rawValue: "\(dict["action"]!)")
		}
		if dict["triggerConditions"] != nil {
			triggerConditions = try JSONParser.parse(array: dict["triggerConditions"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(service != nil) {
			dict["service"] = service!.rawValue
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(triggerConditions != nil) {
			dict["triggerConditions"] = triggerConditions!.map { value in value.toDictionary() }
		}
		return dict
	}
}

