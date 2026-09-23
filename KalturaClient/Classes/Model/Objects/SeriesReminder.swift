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

open class SeriesReminder: Reminder {

	public class SeriesReminderTokenizer: Reminder.ReminderTokenizer {
		
		public var seriesId: BaseTokenizedObject {
			get {
				return self.append("seriesId") 
			}
		}
		
		public var seasonNumber: BaseTokenizedObject {
			get {
				return self.append("seasonNumber") 
			}
		}
		
		public var epgChannelId: BaseTokenizedObject {
			get {
				return self.append("epgChannelId") 
			}
		}
	}

	/**  Series identifier  */
	public var seriesId: String? = nil
	/**  Season number  */
	public var seasonNumber: Int64? = nil
	/**  EPG channel identifier  */
	public var epgChannelId: Int64? = nil


	public func setMultiRequestToken(seriesId: String) {
		self.dict["seriesId"] = seriesId
	}
	
	public func setMultiRequestToken(seasonNumber: String) {
		self.dict["seasonNumber"] = seasonNumber
	}
	
	public func setMultiRequestToken(epgChannelId: String) {
		self.dict["epgChannelId"] = epgChannelId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["seriesId"] != nil {
			seriesId = dict["seriesId"] as? String
		}
		if dict["seasonNumber"] != nil {
			seasonNumber = Int64("\(dict["seasonNumber"]!)")
		}
		if dict["epgChannelId"] != nil {
			epgChannelId = Int64("\(dict["epgChannelId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(seriesId != nil) {
			dict["seriesId"] = seriesId!
		}
		if(seasonNumber != nil) {
			dict["seasonNumber"] = seasonNumber!
		}
		if(epgChannelId != nil) {
			dict["epgChannelId"] = epgChannelId!
		}
		return dict
	}
}

