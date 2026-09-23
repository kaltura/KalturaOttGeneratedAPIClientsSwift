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

/**  Filters user logs using the following criteria: user ID(s), message content
  (substring match), and creation date.  */
open class UserLogFilter: Filter {

	public class UserLogFilterTokenizer: Filter.FilterTokenizer {
		
		public var userIdIn: BaseTokenizedObject {
			get {
				return self.append("userIdIn") 
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
	}

	/**  A comma-separated list of up to 15 positive integer user IDs (greater than zero)
	  used to filter log entries. An empty list is not permitted;              Valid
	  IDs: Only log entries associated with valid, existing user IDs are returned;    
	            Invalid IDs: Specifying a non-existent user ID will result in no log
	  entries being returned for that specific ID;               Users: Log entries
	  associated with a deleted user will be returned unless the log entry itself has
	  also been deleted;  */
	public var userIdIn: String? = nil
	/**  The start date for filtering (Epoch format). Only logs created on or after this
	  date are returned. If omitted, no start date filter is applied.  */
	public var startDate: Int? = nil
	/**  The end date for filtering (Epoch format). Only logs created on or before this
	  date are returned. If omitted, no end date filter is applied.  */
	public var endDate: Int? = nil


	public func setMultiRequestToken(userIdIn: String) {
		self.dict["userIdIn"] = userIdIn
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["startDate"] != nil {
			startDate = dict["startDate"] as? Int
		}
		if dict["endDate"] != nil {
			endDate = dict["endDate"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		return dict
	}
}

