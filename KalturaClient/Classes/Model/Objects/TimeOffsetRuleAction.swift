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

/**  Time offset action  */
open class TimeOffsetRuleAction: AssetRuleAction {

	public class TimeOffsetRuleActionTokenizer: AssetRuleAction.AssetRuleActionTokenizer {
		
		public var offset: BaseTokenizedObject {
			get {
				return self.append("offset") 
			}
		}
		
		public var timeZone: BaseTokenizedObject {
			get {
				return self.append("timeZone") 
			}
		}
	}

	/**  Offset in seconds  */
	public var offset: Int? = nil
	/**  Indicates whether to add time zone offset to the time  */
	public var timeZone: Bool? = nil


	public func setMultiRequestToken(offset: String) {
		self.dict["offset"] = offset
	}
	
	public func setMultiRequestToken(timeZone: String) {
		self.dict["timeZone"] = timeZone
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["offset"] != nil {
			offset = dict["offset"] as? Int
		}
		if dict["timeZone"] != nil {
			timeZone = dict["timeZone"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(offset != nil) {
			dict["offset"] = offset!
		}
		if(timeZone != nil) {
			dict["timeZone"] = timeZone!
		}
		return dict
	}
}

