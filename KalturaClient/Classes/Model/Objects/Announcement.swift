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

open class Announcement: ObjectBase {

	public class AnnouncementTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var enabled: BaseTokenizedObject {
			get {
				return self.append("enabled") 
			}
		}
		
		public var startTime: BaseTokenizedObject {
			get {
				return self.append("startTime") 
			}
		}
		
		public var timezone: BaseTokenizedObject {
			get {
				return self.append("timezone") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var recipients: BaseTokenizedObject {
			get {
				return self.append("recipients") 
			}
		}
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var imageUrl: BaseTokenizedObject {
			get {
				return self.append("imageUrl") 
			}
		}
		
		public var includeMail: BaseTokenizedObject {
			get {
				return self.append("includeMail") 
			}
		}
		
		public var mailTemplate: BaseTokenizedObject {
			get {
				return self.append("mailTemplate") 
			}
		}
		
		public var mailSubject: BaseTokenizedObject {
			get {
				return self.append("mailSubject") 
			}
		}
		
		public var includeSms: BaseTokenizedObject {
			get {
				return self.append("includeSms") 
			}
		}
	}

	/**  Announcement name  */
	public var name: String? = nil
	/**  Announcement message  */
	public var message: String? = nil
	/**  Announcement enabled  */
	public var enabled: Bool? = nil
	/**  Announcement start time  */
	public var startTime: Int64? = nil
	/**  Announcement time zone  */
	public var timezone: String? = nil
	/**  Announcement status: NotSent=0/Sending=1/Sent=2/Aborted=3  */
	public var status: AnnouncementStatus? = nil
	/**  Announcement recipients: All=0/LoggedIn=1/Guests=2/Other=3  */
	public var recipients: AnnouncementRecipientsType? = nil
	/**  Announcement id  */
	public var id: Int? = nil
	/**  Announcement image URL, relevant for system announcements  */
	public var imageUrl: String? = nil
	/**  Include Mail  */
	public var includeMail: Bool? = nil
	/**  Mail Template  */
	public var mailTemplate: String? = nil
	/**  Mail Subject  */
	public var mailSubject: String? = nil
	/**  Include SMS  */
	public var includeSms: Bool? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(enabled: String) {
		self.dict["enabled"] = enabled
	}
	
	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(timezone: String) {
		self.dict["timezone"] = timezone
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(recipients: String) {
		self.dict["recipients"] = recipients
	}
	
	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(imageUrl: String) {
		self.dict["imageUrl"] = imageUrl
	}
	
	public func setMultiRequestToken(includeMail: String) {
		self.dict["includeMail"] = includeMail
	}
	
	public func setMultiRequestToken(mailTemplate: String) {
		self.dict["mailTemplate"] = mailTemplate
	}
	
	public func setMultiRequestToken(mailSubject: String) {
		self.dict["mailSubject"] = mailSubject
	}
	
	public func setMultiRequestToken(includeSms: String) {
		self.dict["includeSms"] = includeSms
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["enabled"] != nil {
			enabled = dict["enabled"] as? Bool
		}
		if dict["startTime"] != nil {
			startTime = Int64("\(dict["startTime"]!)")
		}
		if dict["timezone"] != nil {
			timezone = dict["timezone"] as? String
		}
		if dict["status"] != nil {
			status = AnnouncementStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["recipients"] != nil {
			recipients = AnnouncementRecipientsType(rawValue: "\(dict["recipients"]!)")
		}
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["imageUrl"] != nil {
			imageUrl = dict["imageUrl"] as? String
		}
		if dict["includeMail"] != nil {
			includeMail = dict["includeMail"] as? Bool
		}
		if dict["mailTemplate"] != nil {
			mailTemplate = dict["mailTemplate"] as? String
		}
		if dict["mailSubject"] != nil {
			mailSubject = dict["mailSubject"] as? String
		}
		if dict["includeSms"] != nil {
			includeSms = dict["includeSms"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(message != nil) {
			dict["message"] = message!
		}
		if(enabled != nil) {
			dict["enabled"] = enabled!
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(timezone != nil) {
			dict["timezone"] = timezone!
		}
		if(recipients != nil) {
			dict["recipients"] = recipients!.rawValue
		}
		if(imageUrl != nil) {
			dict["imageUrl"] = imageUrl!
		}
		if(includeMail != nil) {
			dict["includeMail"] = includeMail!
		}
		if(mailTemplate != nil) {
			dict["mailTemplate"] = mailTemplate!
		}
		if(mailSubject != nil) {
			dict["mailSubject"] = mailSubject!
		}
		if(includeSms != nil) {
			dict["includeSms"] = includeSms!
		}
		return dict
	}
}

