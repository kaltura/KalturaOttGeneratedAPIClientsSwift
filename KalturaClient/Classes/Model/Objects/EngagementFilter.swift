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

open class EngagementFilter: Filter {

	public class EngagementFilterTokenizer: Filter.FilterTokenizer {
		
		public var typeIn: BaseTokenizedObject {
			get {
				return self.append("typeIn") 
			}
		}
		
		public var sendTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("sendTimeGreaterThanOrEqual") 
			}
		}
	}

	/**  List of inbox message types to search within.  */
	public var typeIn: String? = nil
	/**  SendTime GreaterThanOrEqual  */
	public var sendTimeGreaterThanOrEqual: Int64? = nil


	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(sendTimeGreaterThanOrEqual: String) {
		self.dict["sendTimeGreaterThanOrEqual"] = sendTimeGreaterThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["sendTimeGreaterThanOrEqual"] != nil {
			sendTimeGreaterThanOrEqual = Int64("\(dict["sendTimeGreaterThanOrEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(sendTimeGreaterThanOrEqual != nil) {
			dict["sendTimeGreaterThanOrEqual"] = sendTimeGreaterThanOrEqual!
		}
		return dict
	}
}

