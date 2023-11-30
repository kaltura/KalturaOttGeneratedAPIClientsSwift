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

/**  FilterFile By AudioCodec  */
open class FilterFileByAudioCodecAction: FilterAction {

	public class FilterFileByAudioCodecActionTokenizer: FilterAction.FilterActionTokenizer {
		
		public var audioCodecIn: BaseTokenizedObject {
			get {
				return self.append("audioCodecIn") 
			}
		}
	}

	/**  List of comma separated audioCodecs  */
	public var audioCodecIn: String? = nil


	public func setMultiRequestToken(audioCodecIn: String) {
		self.dict["audioCodecIn"] = audioCodecIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["audioCodecIn"] != nil {
			audioCodecIn = dict["audioCodecIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(audioCodecIn != nil) {
			dict["audioCodecIn"] = audioCodecIn!
		}
		return dict
	}
}

