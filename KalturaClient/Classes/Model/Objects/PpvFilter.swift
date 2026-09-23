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

/**  Filtering Asset Struct Metas  */
open class PpvFilter: Filter {

	public class PpvFilterTokenizer: Filter.FilterTokenizer {
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var couponGroupIdEqual: BaseTokenizedObject {
			get {
				return self.append("couponGroupIdEqual") 
			}
		}
		
		public var alsoInactive: BaseTokenizedObject {
			get {
				return self.append("alsoInactive") 
			}
		}
		
		public var nameContains: BaseTokenizedObject {
			get {
				return self.append("nameContains") 
			}
		}
		
		public var assetUserRuleIdIn: BaseTokenizedObject {
			get {
				return self.append("assetUserRuleIdIn") 
			}
		}
	}

	/**  Comma separated identifiers  */
	public var idIn: String? = nil
	/**  couponGroupIdEqual  */
	public var couponGroupIdEqual: Int? = nil
	/**  return also inactive  */
	public var alsoInactive: Bool? = nil
	/**  A string that is included in the ppv name  */
	public var nameContains: String? = nil
	/**  comma-separated list of KalturaPpv.assetUserRuleId values.  Matching KalturaPpv
	  objects will be returned by the filter.  */
	public var assetUserRuleIdIn: String? = nil


	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(couponGroupIdEqual: String) {
		self.dict["couponGroupIdEqual"] = couponGroupIdEqual
	}
	
	public func setMultiRequestToken(alsoInactive: String) {
		self.dict["alsoInactive"] = alsoInactive
	}
	
	public func setMultiRequestToken(nameContains: String) {
		self.dict["nameContains"] = nameContains
	}
	
	public func setMultiRequestToken(assetUserRuleIdIn: String) {
		self.dict["assetUserRuleIdIn"] = assetUserRuleIdIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["couponGroupIdEqual"] != nil {
			couponGroupIdEqual = dict["couponGroupIdEqual"] as? Int
		}
		if dict["alsoInactive"] != nil {
			alsoInactive = dict["alsoInactive"] as? Bool
		}
		if dict["nameContains"] != nil {
			nameContains = dict["nameContains"] as? String
		}
		if dict["assetUserRuleIdIn"] != nil {
			assetUserRuleIdIn = dict["assetUserRuleIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(couponGroupIdEqual != nil) {
			dict["couponGroupIdEqual"] = couponGroupIdEqual!
		}
		if(alsoInactive != nil) {
			dict["alsoInactive"] = alsoInactive!
		}
		if(nameContains != nil) {
			dict["nameContains"] = nameContains!
		}
		if(assetUserRuleIdIn != nil) {
			dict["assetUserRuleIdIn"] = assetUserRuleIdIn!
		}
		return dict
	}
}

