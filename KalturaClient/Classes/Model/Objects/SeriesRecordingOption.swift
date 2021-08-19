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

open class SeriesRecordingOption: ObjectBase {

	public class SeriesRecordingOptionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var minSeasonNumber: BaseTokenizedObject {
			get {
				return self.append("minSeasonNumber") 
			}
		}
		
		public var minEpisodeNumber: BaseTokenizedObject {
			get {
				return self.append("minEpisodeNumber") 
			}
		}
	}

	/**  min Season Number  */
	public var minSeasonNumber: Int? = nil
	/**  min Season Number  */
	public var minEpisodeNumber: Int? = nil


	public func setMultiRequestToken(minSeasonNumber: String) {
		self.dict["minSeasonNumber"] = minSeasonNumber
	}
	
	public func setMultiRequestToken(minEpisodeNumber: String) {
		self.dict["minEpisodeNumber"] = minEpisodeNumber
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["minSeasonNumber"] != nil {
			minSeasonNumber = dict["minSeasonNumber"] as? Int
		}
		if dict["minEpisodeNumber"] != nil {
			minEpisodeNumber = dict["minEpisodeNumber"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(minSeasonNumber != nil) {
			dict["minSeasonNumber"] = minSeasonNumber!
		}
		if(minEpisodeNumber != nil) {
			dict["minEpisodeNumber"] = minEpisodeNumber!
		}
		return dict
	}
}

