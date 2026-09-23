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

/**  A class representing the properties of an uploaded subtitles file.  */
open class Subtitles: ObjectBase {

	public class SubtitlesTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
		
		public var detectedType: BaseTokenizedObject {
			get {
				return self.append("detectedType") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
	}

	/**  Unique identifier for the subtitles file.  */
	public var id: Int64? = nil
	/**  Specifies when the file was uploaded, expressed in Epoch timestamp.  */
	public var createDate: Int64? = nil
	/**  Name of the uploaded subtitles text file.  */
	public var fileName: String? = nil
	/**  The content type included in the subtitles file, as auto-detected by the
	  subtitles service. Can be of SRT, WebVTT or free text without cues.  */
	public var detectedType: SubtitlesType? = nil
	/**  The language used for the subtitles.  */
	public var language: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(fileName: String) {
		self.dict["fileName"] = fileName
	}
	
	public func setMultiRequestToken(detectedType: String) {
		self.dict["detectedType"] = detectedType
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["detectedType"] != nil {
			detectedType = SubtitlesType(rawValue: "\(dict["detectedType"]!)")
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(detectedType != nil) {
			dict["detectedType"] = detectedType!.rawValue
		}
		if(language != nil) {
			dict["language"] = language!
		}
		return dict
	}
}

