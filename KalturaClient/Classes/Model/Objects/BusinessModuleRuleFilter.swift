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

/**  Business module rule filter  */
open class BusinessModuleRuleFilter: Filter {

	public class BusinessModuleRuleFilterTokenizer: Filter.FilterTokenizer {
		
		public var businessModuleTypeApplied: BaseTokenizedObject {
			get {
				return self.append("businessModuleTypeApplied") 
			}
		}
		
		public var businessModuleIdApplied: BaseTokenizedObject {
			get {
				return self.append("businessModuleIdApplied") 
			}
		}
		
		public var segmentIdsApplied: BaseTokenizedObject {
			get {
				return self.append("segmentIdsApplied") 
			}
		}
		
		public var actionsContainType: BaseTokenizedObject {
			get {
				return self.append("actionsContainType") 
			}
		}
	}

	/**  Business module type the rules applied on  */
	public var businessModuleTypeApplied: TransactionType? = nil
	/**  Business module ID the rules applied on  */
	public var businessModuleIdApplied: Int64? = nil
	/**  Comma separated segment IDs the rules applied on  */
	public var segmentIdsApplied: String? = nil
	/**  Indicates which business module rule list to return by their action.  */
	public var actionsContainType: RuleActionType? = nil


	public func setMultiRequestToken(businessModuleTypeApplied: String) {
		self.dict["businessModuleTypeApplied"] = businessModuleTypeApplied
	}
	
	public func setMultiRequestToken(businessModuleIdApplied: String) {
		self.dict["businessModuleIdApplied"] = businessModuleIdApplied
	}
	
	public func setMultiRequestToken(segmentIdsApplied: String) {
		self.dict["segmentIdsApplied"] = segmentIdsApplied
	}
	
	public func setMultiRequestToken(actionsContainType: String) {
		self.dict["actionsContainType"] = actionsContainType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["businessModuleTypeApplied"] != nil {
			businessModuleTypeApplied = TransactionType(rawValue: "\(dict["businessModuleTypeApplied"]!)")
		}
		if dict["businessModuleIdApplied"] != nil {
			businessModuleIdApplied = Int64("\(dict["businessModuleIdApplied"]!)")
		}
		if dict["segmentIdsApplied"] != nil {
			segmentIdsApplied = dict["segmentIdsApplied"] as? String
		}
		if dict["actionsContainType"] != nil {
			actionsContainType = RuleActionType(rawValue: "\(dict["actionsContainType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(businessModuleTypeApplied != nil) {
			dict["businessModuleTypeApplied"] = businessModuleTypeApplied!.rawValue
		}
		if(businessModuleIdApplied != nil) {
			dict["businessModuleIdApplied"] = businessModuleIdApplied!
		}
		if(segmentIdsApplied != nil) {
			dict["segmentIdsApplied"] = segmentIdsApplied!
		}
		if(actionsContainType != nil) {
			dict["actionsContainType"] = actionsContainType!.rawValue
		}
		return dict
	}
}

