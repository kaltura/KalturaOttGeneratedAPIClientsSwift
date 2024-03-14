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

/**  This type will be used in KalturaFilter searches to filter entities by shop  */
open class AssociatedShopEntities: ObjectBase {

	public class AssociatedShopEntitiesTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetUserRuleIdIn: BaseTokenizedObject {
			get {
				return self.append("assetUserRuleIdIn") 
			}
		}
		
		public var includeNullAssetUserRuleId: BaseTokenizedObject {
			get {
				return self.append("includeNullAssetUserRuleId") 
			}
		}
	}

	/**  comma-separated list of assetUserRuleId values. Matching entities will be
	  returned by the filter.  */
	public var assetUserRuleIdIn: String? = nil
	/**  If true, filter will return entities with null/empty assetUserRuleId value, in
	  addition to any entities whose assetUserRuleId value matches the
	  assetUserRuleIdIn parameter.              If false (or field is not specified)
	  filter will return only entities whose assetUserRuleId value matches the
	  assetUserRuleIdIn parameter.  */
	public var includeNullAssetUserRuleId: Bool? = nil


	public func setMultiRequestToken(assetUserRuleIdIn: String) {
		self.dict["assetUserRuleIdIn"] = assetUserRuleIdIn
	}
	
	public func setMultiRequestToken(includeNullAssetUserRuleId: String) {
		self.dict["includeNullAssetUserRuleId"] = includeNullAssetUserRuleId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetUserRuleIdIn"] != nil {
			assetUserRuleIdIn = dict["assetUserRuleIdIn"] as? String
		}
		if dict["includeNullAssetUserRuleId"] != nil {
			includeNullAssetUserRuleId = dict["includeNullAssetUserRuleId"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetUserRuleIdIn != nil) {
			dict["assetUserRuleIdIn"] = assetUserRuleIdIn!
		}
		if(includeNullAssetUserRuleId != nil) {
			dict["includeNullAssetUserRuleId"] = includeNullAssetUserRuleId!
		}
		return dict
	}
}

