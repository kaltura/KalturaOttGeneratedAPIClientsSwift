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

/**  Recording-asset info  */
open class RecordingAsset: ProgramAsset {

	public class RecordingAssetTokenizer: ProgramAsset.ProgramAssetTokenizer {
		
		public var recordingId: BaseTokenizedObject {
			get {
				return self.append("recordingId") 
			}
		}
		
		public var recordingType: BaseTokenizedObject {
			get {
				return self.append("recordingType") 
			}
		}
	}

	/**  Recording identifier  */
	public var recordingId: String? = nil
	/**  Recording Type: single/season/series  */
	public var recordingType: RecordingType? = nil


	public func setMultiRequestToken(recordingId: String) {
		self.dict["recordingId"] = recordingId
	}
	
	public func setMultiRequestToken(recordingType: String) {
		self.dict["recordingType"] = recordingType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["recordingId"] != nil {
			recordingId = dict["recordingId"] as? String
		}
		if dict["recordingType"] != nil {
			recordingType = RecordingType(rawValue: "\(dict["recordingType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(recordingId != nil) {
			dict["recordingId"] = recordingId!
		}
		if(recordingType != nil) {
			dict["recordingType"] = recordingType!.rawValue
		}
		return dict
	}
}

