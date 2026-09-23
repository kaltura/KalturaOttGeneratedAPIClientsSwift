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

open class IngestEpgDetailsAggregation: ObjectBase {

	public class IngestEpgDetailsAggregationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var linearChannels: ArrayTokenizedObject<ChannelAggregatedIngestInfo.ChannelAggregatedIngestInfoTokenizer> {
			get {
				return ArrayTokenizedObject<ChannelAggregatedIngestInfo.ChannelAggregatedIngestInfoTokenizer>(self.append("linearChannels"))
			} 
		}
		
		public var dates: ArrayTokenizedObject<DateAggregatedIngestInfo.DateAggregatedIngestInfoTokenizer> {
			get {
				return ArrayTokenizedObject<DateAggregatedIngestInfo.DateAggregatedIngestInfoTokenizer>(self.append("dates"))
			} 
		}
		
		public func all<T: AggregatedIngestInfo.AggregatedIngestInfoTokenizer>() -> T {
			return T(self.append("all"))
		}
	}

	/**  Array of aggregated information per channel that included in the ingest job in
	  question  */
	public var linearChannels: Array<ChannelAggregatedIngestInfo>? = nil
	/**  Array of aggregated information per date that included in the ingest job in
	  question  */
	public var dates: Array<DateAggregatedIngestInfo>? = nil
	/**  All aggregated counters  */
	public var all: AggregatedIngestInfo? = nil


	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["linearChannels"] != nil {
			linearChannels = try JSONParser.parse(array: dict["linearChannels"] as! [Any])
		}
		if dict["dates"] != nil {
			dates = try JSONParser.parse(array: dict["dates"] as! [Any])
		}
		if dict["all"] != nil {
		all = try JSONParser.parse(object: dict["all"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(linearChannels != nil) {
			dict["linearChannels"] = linearChannels!.map { value in value.toDictionary() }
		}
		if(dates != nil) {
			dict["dates"] = dates!.map { value in value.toDictionary() }
		}
		if(all != nil) {
			dict["all"] = all!.toDictionary()
		}
		return dict
	}
}

