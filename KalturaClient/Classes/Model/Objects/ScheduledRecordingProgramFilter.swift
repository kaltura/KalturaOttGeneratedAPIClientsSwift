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

open class ScheduledRecordingProgramFilter: AssetFilter {

	/**  The type of recordings to return  */
	public var recordingTypeEqual: ScheduledRecordingAssetType? = nil
	/**  Channels to filter by  */
	public var channelsIn: String? = nil
	/**  start date  */
	public var startDateGreaterThanOrNull: Int64? = nil
	/**  end date  */
	public var endDateLessThanOrNull: Int64? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["recordingTypeEqual"] != nil {
			recordingTypeEqual = ScheduledRecordingAssetType(rawValue: "\(dict["recordingTypeEqual"]!)")
		}
		if dict["channelsIn"] != nil {
			channelsIn = dict["channelsIn"] as? String
		}
		if dict["startDateGreaterThanOrNull"] != nil {
			startDateGreaterThanOrNull = Int64((dict["startDateGreaterThanOrNull"] as? String)!)
		}
		if dict["endDateLessThanOrNull"] != nil {
			endDateLessThanOrNull = Int64((dict["endDateLessThanOrNull"] as? String)!)
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(recordingTypeEqual != nil) {
			dict["recordingTypeEqual"] = recordingTypeEqual!.rawValue
		}
		if(channelsIn != nil) {
			dict["channelsIn"] = channelsIn!
		}
		if(startDateGreaterThanOrNull != nil) {
			dict["startDateGreaterThanOrNull"] = startDateGreaterThanOrNull!
		}
		if(endDateLessThanOrNull != nil) {
			dict["endDateLessThanOrNull"] = endDateLessThanOrNull!
		}
		return dict
	}
}

