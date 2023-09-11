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

open class SeriesReminderFilter: ReminderFilter {

	public class SeriesReminderFilterTokenizer: ReminderFilter.ReminderFilterTokenizer {
		
		public var seriesIdIn: BaseTokenizedObject {
			get {
				return self.append("seriesIdIn") 
			}
		}
		
		public var epgChannelIdEqual: BaseTokenizedObject {
			get {
				return self.append("epgChannelIdEqual") 
			}
		}
	}

	/**  Comma separated series IDs  */
	public var seriesIdIn: String? = nil
	/**  EPG channel ID  */
	public var epgChannelIdEqual: Int64? = nil


	public func setMultiRequestToken(seriesIdIn: String) {
		self.dict["seriesIdIn"] = seriesIdIn
	}
	
	public func setMultiRequestToken(epgChannelIdEqual: String) {
		self.dict["epgChannelIdEqual"] = epgChannelIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["seriesIdIn"] != nil {
			seriesIdIn = dict["seriesIdIn"] as? String
		}
		if dict["epgChannelIdEqual"] != nil {
			epgChannelIdEqual = Int64("\(dict["epgChannelIdEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(seriesIdIn != nil) {
			dict["seriesIdIn"] = seriesIdIn!
		}
		if(epgChannelIdEqual != nil) {
			dict["epgChannelIdEqual"] = epgChannelIdEqual!
		}
		return dict
	}
}

