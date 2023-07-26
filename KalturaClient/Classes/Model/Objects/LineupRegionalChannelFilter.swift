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

open class LineupRegionalChannelFilter: Filter {

	public class LineupRegionalChannelFilterTokenizer: Filter.FilterTokenizer {
		
		public var regionIdEqual: BaseTokenizedObject {
			get {
				return self.append("regionIdEqual") 
			}
		}
		
		public var parentRegionIncluded: BaseTokenizedObject {
			get {
				return self.append("parentRegionIncluded") 
			}
		}
		
		public var kSql: BaseTokenizedObject {
			get {
				return self.append("kSql") 
			}
		}
		
		public var lcnGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("lcnGreaterThanOrEqual") 
			}
		}
		
		public var lcnLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("lcnLessThanOrEqual") 
			}
		}
	}

	/**  Region ID filter  */
	public var regionIdEqual: Int64? = nil
	/**  Should include lineup from parent region into response  */
	public var parentRegionIncluded: Bool? = nil
	/**  A valid KSQL statement - Only linear channels that satisfies the KSQL statement
	  will be included in the results  */
	public var kSql: String? = nil
	/**  Filter only LCNs that greater or equals to the provided number  */
	public var lcnGreaterThanOrEqual: Int? = nil
	/**  Filter only LCNs that less or equals to the provided number  */
	public var lcnLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(regionIdEqual: String) {
		self.dict["regionIdEqual"] = regionIdEqual
	}
	
	public func setMultiRequestToken(parentRegionIncluded: String) {
		self.dict["parentRegionIncluded"] = parentRegionIncluded
	}
	
	public func setMultiRequestToken(kSql: String) {
		self.dict["kSql"] = kSql
	}
	
	public func setMultiRequestToken(lcnGreaterThanOrEqual: String) {
		self.dict["lcnGreaterThanOrEqual"] = lcnGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(lcnLessThanOrEqual: String) {
		self.dict["lcnLessThanOrEqual"] = lcnLessThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["regionIdEqual"] != nil {
			regionIdEqual = Int64("\(dict["regionIdEqual"]!)")
		}
		if dict["parentRegionIncluded"] != nil {
			parentRegionIncluded = dict["parentRegionIncluded"] as? Bool
		}
		if dict["kSql"] != nil {
			kSql = dict["kSql"] as? String
		}
		if dict["lcnGreaterThanOrEqual"] != nil {
			lcnGreaterThanOrEqual = dict["lcnGreaterThanOrEqual"] as? Int
		}
		if dict["lcnLessThanOrEqual"] != nil {
			lcnLessThanOrEqual = dict["lcnLessThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(regionIdEqual != nil) {
			dict["regionIdEqual"] = regionIdEqual!
		}
		if(parentRegionIncluded != nil) {
			dict["parentRegionIncluded"] = parentRegionIncluded!
		}
		if(kSql != nil) {
			dict["kSql"] = kSql!
		}
		if(lcnGreaterThanOrEqual != nil) {
			dict["lcnGreaterThanOrEqual"] = lcnGreaterThanOrEqual!
		}
		if(lcnLessThanOrEqual != nil) {
			dict["lcnLessThanOrEqual"] = lcnLessThanOrEqual!
		}
		return dict
	}
}

