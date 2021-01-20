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

open class BookmarkPlayerData: ObjectBase {

	public class BookmarkPlayerDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var averageBitrate: BaseTokenizedObject {
			get {
				return self.append("averageBitrate") 
			}
		}
		
		public var totalBitrate: BaseTokenizedObject {
			get {
				return self.append("totalBitrate") 
			}
		}
		
		public var currentBitrate: BaseTokenizedObject {
			get {
				return self.append("currentBitrate") 
			}
		}
		
		public var fileId: BaseTokenizedObject {
			get {
				return self.append("fileId") 
			}
		}
	}

	/**  Action  */
	public var action: BookmarkActionType? = nil
	/**  Average Bitrate  */
	public var averageBitrate: Int? = nil
	/**  Total Bitrate  */
	public var totalBitrate: Int? = nil
	/**  Current Bitrate  */
	public var currentBitrate: Int? = nil
	/**  Identifier of the file  */
	public var fileId: Int64? = nil


	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(averageBitrate: String) {
		self.dict["averageBitrate"] = averageBitrate
	}
	
	public func setMultiRequestToken(totalBitrate: String) {
		self.dict["totalBitrate"] = totalBitrate
	}
	
	public func setMultiRequestToken(currentBitrate: String) {
		self.dict["currentBitrate"] = currentBitrate
	}
	
	public func setMultiRequestToken(fileId: String) {
		self.dict["fileId"] = fileId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["action"] != nil {
			action = BookmarkActionType(rawValue: "\(dict["action"]!)")
		}
		if dict["averageBitrate"] != nil {
			averageBitrate = dict["averageBitrate"] as? Int
		}
		if dict["totalBitrate"] != nil {
			totalBitrate = dict["totalBitrate"] as? Int
		}
		if dict["currentBitrate"] != nil {
			currentBitrate = dict["currentBitrate"] as? Int
		}
		if dict["fileId"] != nil {
			fileId = Int64("\(dict["fileId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(averageBitrate != nil) {
			dict["averageBitrate"] = averageBitrate!
		}
		if(totalBitrate != nil) {
			dict["totalBitrate"] = totalBitrate!
		}
		if(currentBitrate != nil) {
			dict["currentBitrate"] = currentBitrate!
		}
		if(fileId != nil) {
			dict["fileId"] = fileId!
		}
		return dict
	}
}

