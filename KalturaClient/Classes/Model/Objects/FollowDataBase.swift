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

open class FollowDataBase: ObjectBase {

	public class FollowDataBaseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var announcementId: BaseTokenizedObject {
			get {
				return self.append("announcementId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var timestamp: BaseTokenizedObject {
			get {
				return self.append("timestamp") 
			}
		}
		
		public var followPhrase: BaseTokenizedObject {
			get {
				return self.append("followPhrase") 
			}
		}
	}

	/**  Announcement Id  */
	public var announcementId: Int64? = nil
	/**  Status  */
	public var status: Int? = nil
	/**  Title  */
	public var title: String? = nil
	/**  Timestamp  */
	public var timestamp: Int64? = nil
	/**  Follow Phrase  */
	public var followPhrase: String? = nil


	public func setMultiRequestToken(announcementId: String) {
		self.dict["announcementId"] = announcementId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(timestamp: String) {
		self.dict["timestamp"] = timestamp
	}
	
	public func setMultiRequestToken(followPhrase: String) {
		self.dict["followPhrase"] = followPhrase
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["announcementId"] != nil {
			announcementId = Int64("\(dict["announcementId"]!)")
		}
		if dict["status"] != nil {
			status = dict["status"] as? Int
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["timestamp"] != nil {
			timestamp = Int64("\(dict["timestamp"]!)")
		}
		if dict["followPhrase"] != nil {
			followPhrase = dict["followPhrase"] as? String
		}

	}

}

