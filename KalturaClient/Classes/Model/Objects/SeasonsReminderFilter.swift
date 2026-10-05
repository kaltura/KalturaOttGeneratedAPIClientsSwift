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

open class SeasonsReminderFilter: ReminderFilter {

	public class SeasonsReminderFilterTokenizer: ReminderFilter.ReminderFilterTokenizer {
		
		public var seriesIdEqual: BaseTokenizedObject {
			get {
				return self.append("seriesIdEqual") 
			}
		}
		
		public var seasonNumberIn: BaseTokenizedObject {
			get {
				return self.append("seasonNumberIn") 
			}
		}
		
		public var epgChannelIdEqual: BaseTokenizedObject {
			get {
				return self.append("epgChannelIdEqual") 
			}
		}
	}

	/**  Series ID  */
	public var seriesIdEqual: String? = nil
	/**  Comma separated season numbers  */
	public var seasonNumberIn: String? = nil
	/**  EPG channel ID  */
	public var epgChannelIdEqual: Int64? = nil


	public func setMultiRequestToken(seriesIdEqual: String) {
		self.dict["seriesIdEqual"] = seriesIdEqual
	}
	
	public func setMultiRequestToken(seasonNumberIn: String) {
		self.dict["seasonNumberIn"] = seasonNumberIn
	}
	
	public func setMultiRequestToken(epgChannelIdEqual: String) {
		self.dict["epgChannelIdEqual"] = epgChannelIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["seriesIdEqual"] != nil {
			seriesIdEqual = dict["seriesIdEqual"] as? String
		}
		if dict["seasonNumberIn"] != nil {
			seasonNumberIn = dict["seasonNumberIn"] as? String
		}
		if dict["epgChannelIdEqual"] != nil {
			epgChannelIdEqual = Int64("\(dict["epgChannelIdEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(seriesIdEqual != nil) {
			dict["seriesIdEqual"] = seriesIdEqual!
		}
		if(seasonNumberIn != nil) {
			dict["seasonNumberIn"] = seasonNumberIn!
		}
		if(epgChannelIdEqual != nil) {
			dict["epgChannelIdEqual"] = epgChannelIdEqual!
		}
		return dict
	}
}

