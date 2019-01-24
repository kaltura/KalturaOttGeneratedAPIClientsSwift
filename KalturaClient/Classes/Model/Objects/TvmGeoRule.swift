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
// Copyright (C) 2006-2019  Kaltura Inc.
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
		
		public var proxyRule: BaseTokenizedObject {
			get {
				return self.append("proxyRule") 
			}
		}
		
		public var proxyLevel: BaseTokenizedObject {
			get {
				return self.append("proxyLevel") 
			}
		}
	}

	/**  Indicates if the rule is relevent ONLY for the country ids or except country ids
	  here.  */
	public var onlyOrBut: Bool? = nil
	/**  Comma separated list of country Ids.  */
	public var countryIds: String? = nil
	/**  proxyRule - what is that?  */
	public var proxyRule: Int? = nil
	/**  proxyLevel - what is that?  */
	public var proxyLevel: Int? = nil


	public func setMultiRequestToken(onlyOrBut: String) {
		self.dict["onlyOrBut"] = onlyOrBut
	}
	
	public func setMultiRequestToken(countryIds: String) {
		self.dict["countryIds"] = countryIds
	}
	
	public func setMultiRequestToken(proxyRule: String) {
		self.dict["proxyRule"] = proxyRule
	}
	
	public func setMultiRequestToken(proxyLevel: String) {
		self.dict["proxyLevel"] = proxyLevel
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["onlyOrBut"] != nil {
			onlyOrBut = dict["onlyOrBut"] as? Bool
		}
		if dict["countryIds"] != nil {
			countryIds = dict["countryIds"] as? String
		}
		if dict["proxyRule"] != nil {
			proxyRule = dict["proxyRule"] as? Int
		}
		if dict["proxyLevel"] != nil {
			proxyLevel = dict["proxyLevel"] as? Int
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
		if(proxyRule != nil) {
			dict["proxyRule"] = proxyRule!
		}
		if(proxyLevel != nil) {
			dict["proxyLevel"] = proxyLevel!
		}
		return dict
	}
}

