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

/**  Evaluates the total duration (in hours) the user watched content matching the
  min and max criterias.  */
open class WatchDurationCondition: BaseWatchCondition {

	public class WatchDurationConditionTokenizer: BaseWatchCondition.BaseWatchConditionTokenizer {
		
		public var minDurationHours: BaseTokenizedObject {
			get {
				return self.append("minDurationHours") 
			}
		}
		
		public var maxDurationHours: BaseTokenizedObject {
			get {
				return self.append("maxDurationHours") 
			}
		}
	}

	/**  The minimum duration in hours to be met.              Constraint: Must be less
	  than or equal to maxDurationHours.  */
	public var minDurationHours: Int? = nil
	/**  The maximum duration in hours to be met.              Constraint: Must be
	  greater than or equal to minDurationHours.  */
	public var maxDurationHours: Int? = nil


	public func setMultiRequestToken(minDurationHours: String) {
		self.dict["minDurationHours"] = minDurationHours
	}
	
	public func setMultiRequestToken(maxDurationHours: String) {
		self.dict["maxDurationHours"] = maxDurationHours
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["minDurationHours"] != nil {
			minDurationHours = dict["minDurationHours"] as? Int
		}
		if dict["maxDurationHours"] != nil {
			maxDurationHours = dict["maxDurationHours"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(minDurationHours != nil) {
			dict["minDurationHours"] = minDurationHours!
		}
		if(maxDurationHours != nil) {
			dict["maxDurationHours"] = maxDurationHours!
		}
		return dict
	}
}

