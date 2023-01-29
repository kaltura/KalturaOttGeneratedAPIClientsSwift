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

/**  Asset Condition  */
open class ConcurrencyCondition: AssetCondition {

	public class ConcurrencyConditionTokenizer: AssetCondition.AssetConditionTokenizer {
		
		public var limit: BaseTokenizedObject {
			get {
				return self.append("limit") 
			}
		}
		
		public var concurrencyLimitationType: BaseTokenizedObject {
			get {
				return self.append("concurrencyLimitationType") 
			}
		}
	}

	/**  Concurrency limitation  */
	public var limit: Int? = nil
	/**  Concurrency limitation type  */
	public var concurrencyLimitationType: ConcurrencyLimitationType? = nil


	public func setMultiRequestToken(limit: String) {
		self.dict["limit"] = limit
	}
	
	public func setMultiRequestToken(concurrencyLimitationType: String) {
		self.dict["concurrencyLimitationType"] = concurrencyLimitationType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["limit"] != nil {
			limit = dict["limit"] as? Int
		}
		if dict["concurrencyLimitationType"] != nil {
			concurrencyLimitationType = ConcurrencyLimitationType(rawValue: "\(dict["concurrencyLimitationType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(limit != nil) {
			dict["limit"] = limit!
		}
		if(concurrencyLimitationType != nil) {
			dict["concurrencyLimitationType"] = concurrencyLimitationType!.rawValue
		}
		return dict
	}
}

