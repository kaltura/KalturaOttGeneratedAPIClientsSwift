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

/**  TVM geo rule  */
open class TvmGeoRule: TvmRule {

	public class TvmGeoRuleTokenizer: TvmRule.TvmRuleTokenizer {
		
		public var onlyOrBut: BaseTokenizedObject {
			get {
				return self.append("onlyOrBut") 
			}
		}
		
		public var countryIds: BaseTokenizedObject {
			get {
				return self.append("countryIds") 
			}
		}
		
		public var proxyRuleId: BaseTokenizedObject {
			get {
				return self.append("proxyRuleId") 
			}
		}
		
		public var proxyRuleName: BaseTokenizedObject {
			get {
				return self.append("proxyRuleName") 
			}
		}
		
		public var proxyLevelId: BaseTokenizedObject {
			get {
				return self.append("proxyLevelId") 
			}
		}
		
		public var proxyLevelName: BaseTokenizedObject {
			get {
				return self.append("proxyLevelName") 
			}
		}
	}

	/**  Indicates if the rule is relevent ONLY for the country ids or except country ids
	  here. - is that true?  */
	public var onlyOrBut: Bool? = nil
	/**  Comma separated list of country Ids.  */
	public var countryIds: String? = nil
	/**  proxyRuleId - what is that?  */
	public var proxyRuleId: Int? = nil
	/**  proxyRuleName - what is that?  */
	public var proxyRuleName: String? = nil
	/**  proxyLevelId - what is that?  */
	public var proxyLevelId: Int? = nil
	/**  proxyLevelName - what is that?  */
	public var proxyLevelName: String? = nil


	public func setMultiRequestToken(onlyOrBut: String) {
		self.dict["onlyOrBut"] = onlyOrBut
	}
	
	public func setMultiRequestToken(countryIds: String) {
		self.dict["countryIds"] = countryIds
	}
	
	public func setMultiRequestToken(proxyRuleId: String) {
		self.dict["proxyRuleId"] = proxyRuleId
	}
	
	public func setMultiRequestToken(proxyRuleName: String) {
		self.dict["proxyRuleName"] = proxyRuleName
	}
	
	public func setMultiRequestToken(proxyLevelId: String) {
		self.dict["proxyLevelId"] = proxyLevelId
	}
	
	public func setMultiRequestToken(proxyLevelName: String) {
		self.dict["proxyLevelName"] = proxyLevelName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["onlyOrBut"] != nil {
			onlyOrBut = dict["onlyOrBut"] as? Bool
		}
		if dict["countryIds"] != nil {
			countryIds = dict["countryIds"] as? String
		}
		if dict["proxyRuleId"] != nil {
			proxyRuleId = dict["proxyRuleId"] as? Int
		}
		if dict["proxyRuleName"] != nil {
			proxyRuleName = dict["proxyRuleName"] as? String
		}
		if dict["proxyLevelId"] != nil {
			proxyLevelId = dict["proxyLevelId"] as? Int
		}
		if dict["proxyLevelName"] != nil {
			proxyLevelName = dict["proxyLevelName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(onlyOrBut != nil) {
			dict["onlyOrBut"] = onlyOrBut!
		}
		if(countryIds != nil) {
			dict["countryIds"] = countryIds!
		}
		if(proxyRuleId != nil) {
			dict["proxyRuleId"] = proxyRuleId!
		}
		if(proxyRuleName != nil) {
			dict["proxyRuleName"] = proxyRuleName!
		}
		if(proxyLevelId != nil) {
			dict["proxyLevelId"] = proxyLevelId!
		}
		if(proxyLevelName != nil) {
			dict["proxyLevelName"] = proxyLevelName!
		}
		return dict
	}
}

