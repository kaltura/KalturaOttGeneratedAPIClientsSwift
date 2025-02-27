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

open class PaddedRecording: Recording {

	public class PaddedRecordingTokenizer: Recording.RecordingTokenizer {
		
		public var startPadding: BaseTokenizedObject {
			get {
				return self.append("startPadding") 
			}
		}
		
		public var endPadding: BaseTokenizedObject {
			get {
				return self.append("endPadding") 
			}
		}
		
		public var startPaddingIsPersonal: BaseTokenizedObject {
			get {
				return self.append("startPaddingIsPersonal") 
			}
		}
		
		public var endPaddingIsPersonal: BaseTokenizedObject {
			get {
				return self.append("endPaddingIsPersonal") 
			}
		}
	}

	/**  Household specific start padding of the recording  */
	public var startPadding: Int? = nil
	/**  Household specific end padding of the recording  */
	public var endPadding: Int? = nil
	/**  Indicates whether startPadding value is personal padding (counts towards HH
	  quota) or system padding (does not count towards HH quota).  */
	public var startPaddingIsPersonal: Bool? = nil
	/**  Indicates whether endPadding value is personal padding (counts towards HH quota)
	  or system padding (does not count towards HH quota).  */
	public var endPaddingIsPersonal: Bool? = nil


	public func setMultiRequestToken(startPadding: String) {
		self.dict["startPadding"] = startPadding
	}
	
	public func setMultiRequestToken(endPadding: String) {
		self.dict["endPadding"] = endPadding
	}
	
	public func setMultiRequestToken(startPaddingIsPersonal: String) {
		self.dict["startPaddingIsPersonal"] = startPaddingIsPersonal
	}
	
	public func setMultiRequestToken(endPaddingIsPersonal: String) {
		self.dict["endPaddingIsPersonal"] = endPaddingIsPersonal
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["startPadding"] != nil {
			startPadding = dict["startPadding"] as? Int
		}
		if dict["endPadding"] != nil {
			endPadding = dict["endPadding"] as? Int
		}
		if dict["startPaddingIsPersonal"] != nil {
			startPaddingIsPersonal = dict["startPaddingIsPersonal"] as? Bool
		}
		if dict["endPaddingIsPersonal"] != nil {
			endPaddingIsPersonal = dict["endPaddingIsPersonal"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(startPadding != nil) {
			dict["startPadding"] = startPadding!
		}
		if(endPadding != nil) {
			dict["endPadding"] = endPadding!
		}
		return dict
	}
}

