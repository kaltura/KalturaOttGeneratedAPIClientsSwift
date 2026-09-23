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

/**  Geo Block Rule  */
open class GeoBlockRule: ObjectBase {

	public class GeoBlockRuleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
		
		public var countryIds: BaseTokenizedObject {
			get {
				return self.append("countryIds") 
			}
		}
		
		public var mode: BaseTokenizedObject {
			get {
				return self.append("mode") 
			}
		}
		
		public var isProxyRuleEnabled: BaseTokenizedObject {
			get {
				return self.append("isProxyRuleEnabled") 
			}
		}
		
		public var proxyRuleLevel: BaseTokenizedObject {
			get {
				return self.append("proxyRuleLevel") 
			}
		}
	}

	/**  Geo Block Rule id  */
	public var id: Int64? = nil
	/**  Name  */
	public var name: String? = nil
	/**  Create Date Epoch time in seconds  */
	public var createDate: Int64? = nil
	/**  Update Date Epoch time in seconds  */
	public var updateDate: Int64? = nil
	/**  comma separated string representing list of countries that the rule shall apply
	  to  */
	public var countryIds: String? = nil
	/**  mode - Defines the geo-blocking strategy based on user location.             
	  AllowOnlySelected - Implements a restrictive whitelist approach where content is
	  only accessible from explicitly selected countries. All other countries are
	  blocked by default.              BlockOnlySelected - Implements a permissive
	  blacklist approach where content is accessible from all countries except those
	  explicitly selected for blocking.  */
	public var mode: GeoBlockMode? = nil
	/**  Should geo block rule check proxy as well  */
	public var isProxyRuleEnabled: Bool? = nil
	/**  Level of proxy rule check - medium or high  */
	public var proxyRuleLevel: ProxyRuleLevel? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(countryIds: String) {
		self.dict["countryIds"] = countryIds
	}
	
	public func setMultiRequestToken(mode: String) {
		self.dict["mode"] = mode
	}
	
	public func setMultiRequestToken(isProxyRuleEnabled: String) {
		self.dict["isProxyRuleEnabled"] = isProxyRuleEnabled
	}
	
	public func setMultiRequestToken(proxyRuleLevel: String) {
		self.dict["proxyRuleLevel"] = proxyRuleLevel
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["countryIds"] != nil {
			countryIds = dict["countryIds"] as? String
		}
		if dict["mode"] != nil {
			mode = GeoBlockMode(rawValue: "\(dict["mode"]!)")
		}
		if dict["isProxyRuleEnabled"] != nil {
			isProxyRuleEnabled = dict["isProxyRuleEnabled"] as? Bool
		}
		if dict["proxyRuleLevel"] != nil {
			proxyRuleLevel = ProxyRuleLevel(rawValue: "\(dict["proxyRuleLevel"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(countryIds != nil) {
			dict["countryIds"] = countryIds!
		}
		if(mode != nil) {
			dict["mode"] = mode!.rawValue
		}
		if(isProxyRuleEnabled != nil) {
			dict["isProxyRuleEnabled"] = isProxyRuleEnabled!
		}
		if(proxyRuleLevel != nil) {
			dict["proxyRuleLevel"] = proxyRuleLevel!.rawValue
		}
		return dict
	}
}

