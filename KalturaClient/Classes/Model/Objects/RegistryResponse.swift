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

open class RegistryResponse: ObjectBase {

	public class RegistryResponseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var announcementId: BaseTokenizedObject {
			get {
				return self.append("announcementId") 
			}
		}
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	/**  Announcement Id  */
	public var announcementId: Int64? = nil
	/**  Key  */
	public var key: String? = nil
	/**  URL  */
	public var url: String? = nil


	public func setMultiRequestToken(announcementId: String) {
		self.dict["announcementId"] = announcementId
	}
	
	public func setMultiRequestToken(key: String) {
		self.dict["key"] = key
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["announcementId"] != nil {
			announcementId = Int64("\(dict["announcementId"]!)")
		}
		if dict["key"] != nil {
			key = dict["key"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(announcementId != nil) {
			dict["announcementId"] = announcementId!
		}
		if(key != nil) {
			dict["key"] = key!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		return dict
	}
}

