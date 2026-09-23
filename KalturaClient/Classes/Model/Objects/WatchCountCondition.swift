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

/**  Evaluates the number of times the user watched content matching the min and max
  criterias.  */
open class WatchCountCondition: BaseWatchCondition {

	public class WatchCountConditionTokenizer: BaseWatchCondition.BaseWatchConditionTokenizer {
		
		public var minCount: BaseTokenizedObject {
			get {
				return self.append("minCount") 
			}
		}
		
		public var maxCount: BaseTokenizedObject {
			get {
				return self.append("maxCount") 
			}
		}
	}

	/**  The minimum count to be met.              Constraint: Must be less than or equal
	  to maxCount.  */
	public var minCount: Int? = nil
	/**  The maximum count to be met.              Constraint: Must be greater than or
	  equal to minCount.  */
	public var maxCount: Int? = nil


	public func setMultiRequestToken(minCount: String) {
		self.dict["minCount"] = minCount
	}
	
	public func setMultiRequestToken(maxCount: String) {
		self.dict["maxCount"] = maxCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["minCount"] != nil {
			minCount = dict["minCount"] as? Int
		}
		if dict["maxCount"] != nil {
			maxCount = dict["maxCount"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(minCount != nil) {
			dict["minCount"] = minCount!
		}
		if(maxCount != nil) {
			dict["maxCount"] = maxCount!
		}
		return dict
	}
}

