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

open class ImmediateRecording: Recording {

	public class ImmediateRecordingTokenizer: Recording.RecordingTokenizer {
		
		public var endPadding: BaseTokenizedObject {
			get {
				return self.append("endPadding") 
			}
		}
		
		public var absoluteStart: BaseTokenizedObject {
			get {
				return self.append("absoluteStart") 
			}
		}
		
		public var absoluteEnd: BaseTokenizedObject {
			get {
				return self.append("absoluteEnd") 
			}
		}
	}

	/**  Household specific end padding of the recording  */
	public var endPadding: Int? = nil
	/**  Household absolute start time of the immediate recording  */
	public var absoluteStart: Int64? = nil
	/**  Household absolute end time of the immediate recording, empty if till end of
	  program  */
	public var absoluteEnd: Int64? = nil


	public func setMultiRequestToken(endPadding: String) {
		self.dict["endPadding"] = endPadding
	}
	
	public func setMultiRequestToken(absoluteStart: String) {
		self.dict["absoluteStart"] = absoluteStart
	}
	
	public func setMultiRequestToken(absoluteEnd: String) {
		self.dict["absoluteEnd"] = absoluteEnd
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["endPadding"] != nil {
			endPadding = dict["endPadding"] as? Int
		}
		if dict["absoluteStart"] != nil {
			absoluteStart = Int64("\(dict["absoluteStart"]!)")
		}
		if dict["absoluteEnd"] != nil {
			absoluteEnd = Int64("\(dict["absoluteEnd"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(endPadding != nil) {
			dict["endPadding"] = endPadding!
		}
		return dict
	}
}

