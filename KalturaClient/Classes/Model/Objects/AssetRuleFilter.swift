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

/**  Asset rule filter  */
open class AssetRuleFilter: Filter {

	public class AssetRuleFilterTokenizer: Filter.FilterTokenizer {
		
		public var conditionsContainType: BaseTokenizedObject {
			get {
				return self.append("conditionsContainType") 
			}
		}
		
		public func assetApplied<T: SlimAsset.SlimAssetTokenizer>() -> T {
			return T(self.append("assetApplied"))
		}
		
		public var actionsContainType: BaseTokenizedObject {
			get {
				return self.append("actionsContainType") 
			}
		}
		
		public var assetRuleIdEqual: BaseTokenizedObject {
			get {
				return self.append("assetRuleIdEqual") 
			}
		}
	}

	/**  Indicates which asset rule list to return by it KalturaRuleConditionType.       
	        Default value: KalturaRuleConditionType.COUNTRY  */
	public var conditionsContainType: RuleConditionType? = nil
	/**  Indicates if to return an asset rule list that related to specific asset  */
	public var assetApplied: SlimAsset? = nil
	/**  Indicates which asset rule list to return by this KalturaRuleActionType.  */
	public var actionsContainType: RuleActionType? = nil
	/**  Asset rule id  */
	public var assetRuleIdEqual: Int64? = nil


	public func setMultiRequestToken(conditionsContainType: String) {
		self.dict["conditionsContainType"] = conditionsContainType
	}
	
	public func setMultiRequestToken(actionsContainType: String) {
		self.dict["actionsContainType"] = actionsContainType
	}
	
	public func setMultiRequestToken(assetRuleIdEqual: String) {
		self.dict["assetRuleIdEqual"] = assetRuleIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["conditionsContainType"] != nil {
			conditionsContainType = RuleConditionType(rawValue: "\(dict["conditionsContainType"]!)")
		}
		if dict["assetApplied"] != nil {
		assetApplied = try JSONParser.parse(object: dict["assetApplied"] as! [String: Any])		}
		if dict["actionsContainType"] != nil {
			actionsContainType = RuleActionType(rawValue: "\(dict["actionsContainType"]!)")
		}
		if dict["assetRuleIdEqual"] != nil {
			assetRuleIdEqual = Int64("\(dict["assetRuleIdEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(conditionsContainType != nil) {
			dict["conditionsContainType"] = conditionsContainType!.rawValue
		}
		if(assetApplied != nil) {
			dict["assetApplied"] = assetApplied!.toDictionary()
		}
		if(actionsContainType != nil) {
			dict["actionsContainType"] = actionsContainType!.rawValue
		}
		if(assetRuleIdEqual != nil) {
			dict["assetRuleIdEqual"] = assetRuleIdEqual!
		}
		return dict
	}
}

