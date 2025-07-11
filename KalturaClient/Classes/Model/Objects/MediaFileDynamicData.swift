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

open class MediaFileDynamicData: ObjectBase {

	public class MediaFileDynamicDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var mediaFileTypeId: BaseTokenizedObject {
			get {
				return self.append("mediaFileTypeId") 
			}
		}
		
		public var mediaFileTypeKeyName: BaseTokenizedObject {
			get {
				return self.append("mediaFileTypeKeyName") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
	}

	/**  An integer representing the identifier of the value.  */
	public var id: Int64? = nil
	/**  An integer representing the the mediaFileType holding the keys for which the
	  values should be stored.  */
	public var mediaFileTypeId: Int64? = nil
	/**  A string representing the key name within the mediaFileType that identifies the
	  list corresponding              to that key name.  */
	public var mediaFileTypeKeyName: String? = nil
	/**  Dynamic data value  */
	public var value: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(mediaFileTypeId: String) {
		self.dict["mediaFileTypeId"] = mediaFileTypeId
	}
	
	public func setMultiRequestToken(mediaFileTypeKeyName: String) {
		self.dict["mediaFileTypeKeyName"] = mediaFileTypeKeyName
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["mediaFileTypeId"] != nil {
			mediaFileTypeId = Int64("\(dict["mediaFileTypeId"]!)")
		}
		if dict["mediaFileTypeKeyName"] != nil {
			mediaFileTypeKeyName = dict["mediaFileTypeKeyName"] as? String
		}
		if dict["value"] != nil {
			value = dict["value"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(mediaFileTypeId != nil) {
			dict["mediaFileTypeId"] = mediaFileTypeId!
		}
		if(mediaFileTypeKeyName != nil) {
			dict["mediaFileTypeKeyName"] = mediaFileTypeKeyName!
		}
		if(value != nil) {
			dict["value"] = value!
		}
		return dict
	}
}

