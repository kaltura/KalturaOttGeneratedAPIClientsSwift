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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class SeriesRecording: ObjectBase {

	/**  Kaltura unique ID representing the series recording identifier  */
	public var id: Int64? = nil
	/**  Kaltura EpgId  */
	public var epgId: Int64? = nil
	/**  Kaltura ChannelId  */
	public var channelId: Int64? = nil
	/**  Kaltura SeriesId  */
	public var seriesId: String? = nil
	/**  Kaltura SeasonNumber  */
	public var seasonNumber: Int? = nil
	/**  Recording Type: single/series/season  */
	public var type: RecordingType? = nil
	/**  Specifies when was the series recording created. Date and time represented as
	  epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the series recording last updated. Date and time represented
	  as epoch.  */
	public var updateDate: Int64? = nil
	/**  List of the season numbers to exclude.  */
	public var excludedSeasons: Array<IntegerValue>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int64
		}
		if dict["epgId"] != nil {
			epgId = dict["epgId"] as? Int64
		}
		if dict["channelId"] != nil {
			channelId = dict["channelId"] as? Int64
		}
		if dict["seriesId"] != nil {
			seriesId = dict["seriesId"] as? String
		}
		if dict["seasonNumber"] != nil {
			seasonNumber = dict["seasonNumber"] as? Int
		}
		if dict["type"] != nil {
			type = RecordingType(rawValue: "\(dict["type"]!)")
		}
		if dict["createDate"] != nil {
			createDate = dict["createDate"] as? Int64
		}
		if dict["updateDate"] != nil {
			updateDate = dict["updateDate"] as? Int64
		}
		if dict["excludedSeasons"] != nil {
			excludedSeasons = try JSONParser.parse(array: dict["excludedSeasons"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(epgId != nil) {
			dict["epgId"] = epgId!
		}
		if(channelId != nil) {
			dict["channelId"] = channelId!
		}
		if(seriesId != nil) {
			dict["seriesId"] = seriesId!
		}
		if(seasonNumber != nil) {
			dict["seasonNumber"] = seasonNumber!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		return dict
	}
}

