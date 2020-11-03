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

/**  Asset user rule filter  */
open class TvmRuleFilter: Filter {

	public class TvmRuleFilterTokenizer: Filter.FilterTokenizer {
		
		public var ruleTypeEqual: BaseTokenizedObject {
			get {
				return self.append("ruleTypeEqual") 
			}
		}
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
			}
		}
	}

	/**  Indicates which tvm rule list to return by their type.  */
	public var ruleTypeEqual: TvmRuleType? = nil
	/**  Indicates which tvm rule list to return by their name.  */
	public var nameEqual: String? = nil


	public func setMultiRequestToken(ruleTypeEqual: String) {
		self.dict["ruleTypeEqual"] = ruleTypeEqual
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ruleTypeEqual"] != nil {
			ruleTypeEqual = TvmRuleType(rawValue: "\(dict["ruleTypeEqual"]!)")
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ruleTypeEqual != nil) {
			dict["ruleTypeEqual"] = ruleTypeEqual!.rawValue
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		return dict
	}
}

