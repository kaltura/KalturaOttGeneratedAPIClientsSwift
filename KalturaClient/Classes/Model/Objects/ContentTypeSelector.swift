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

/**  Defines the scope of content types to consider for the watch condition.         
      Default Behavior: If the object is empty or no properties are sent, ALL
  content types (Recordings, Programs, and all Media Types) are counted.  */
open class ContentTypeSelector: ObjectBase {

	public class ContentTypeSelectorTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var includeRecordings: BaseTokenizedObject {
			get {
				return self.append("includeRecordings") 
			}
		}
		
		public var includePrograms: BaseTokenizedObject {
			get {
				return self.append("includePrograms") 
			}
		}
		
		public var mediaTypeIdIn: BaseTokenizedObject {
			get {
				return self.append("mediaTypeIdIn") 
			}
		}
	}

	/**  Determines if Recording assets are counted.              Omitted or true:
	  Recordings are included.              false: Recordings are excluded.  */
	public var includeRecordings: Bool? = nil
	/**  Determines if EPG Program assets (Live, Catch-up, Start-over) are counted.      
	         Omitted or true: Programs are included.              false: Programs are
	  excluded.  */
	public var includePrograms: Bool? = nil
	/**  Filter for specific playable media types (e.g., Movie, Episode).             
	  Omitted: ALL playable media types are included.              Provided (List of
	  IDs): ONLY the media types matching the listed IDs are included.             
	  Provided (Empty String): NO media types are included.              Constraint:
	  IDs must correspond to valid playable media types. Providing an invalid ID will
	  result in an error.  */
	public var mediaTypeIdIn: String? = nil


	public func setMultiRequestToken(includeRecordings: String) {
		self.dict["includeRecordings"] = includeRecordings
	}
	
	public func setMultiRequestToken(includePrograms: String) {
		self.dict["includePrograms"] = includePrograms
	}
	
	public func setMultiRequestToken(mediaTypeIdIn: String) {
		self.dict["mediaTypeIdIn"] = mediaTypeIdIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["includeRecordings"] != nil {
			includeRecordings = dict["includeRecordings"] as? Bool
		}
		if dict["includePrograms"] != nil {
			includePrograms = dict["includePrograms"] as? Bool
		}
		if dict["mediaTypeIdIn"] != nil {
			mediaTypeIdIn = dict["mediaTypeIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(includeRecordings != nil) {
			dict["includeRecordings"] = includeRecordings!
		}
		if(includePrograms != nil) {
			dict["includePrograms"] = includePrograms!
		}
		if(mediaTypeIdIn != nil) {
			dict["mediaTypeIdIn"] = mediaTypeIdIn!
		}
		return dict
	}
}

