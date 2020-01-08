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

open class NotificationsPartnerSettings: ObjectBase {

	public class NotificationsPartnerSettingsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var pushNotificationEnabled: BaseTokenizedObject {
			get {
				return self.append("pushNotificationEnabled") 
			}
		}
		
		public var pushSystemAnnouncementsEnabled: BaseTokenizedObject {
			get {
				return self.append("pushSystemAnnouncementsEnabled") 
			}
		}
		
		public var pushStartHour: BaseTokenizedObject {
			get {
				return self.append("pushStartHour") 
			}
		}
		
		public var pushEndHour: BaseTokenizedObject {
			get {
				return self.append("pushEndHour") 
			}
		}
		
		public var inboxEnabled: BaseTokenizedObject {
			get {
				return self.append("inboxEnabled") 
			}
		}
		
		public var messageTTLDays: BaseTokenizedObject {
			get {
				return self.append("messageTTLDays") 
			}
		}
		
		public var automaticIssueFollowNotification: BaseTokenizedObject {
			get {
				return self.append("automaticIssueFollowNotification") 
			}
		}
		
		public var topicExpirationDurationDays: BaseTokenizedObject {
			get {
				return self.append("topicExpirationDurationDays") 
			}
		}
		
		public var reminderEnabled: BaseTokenizedObject {
			get {
				return self.append("reminderEnabled") 
			}
		}
		
		public var reminderOffsetSec: BaseTokenizedObject {
			get {
				return self.append("reminderOffsetSec") 
			}
		}
		
		public var pushAdapterUrl: BaseTokenizedObject {
			get {
				return self.append("pushAdapterUrl") 
			}
		}
		
		public var churnMailTemplateName: BaseTokenizedObject {
			get {
				return self.append("churnMailTemplateName") 
			}
		}
		
		public var churnMailSubject: BaseTokenizedObject {
			get {
				return self.append("churnMailSubject") 
			}
		}
		
		public var senderEmail: BaseTokenizedObject {
			get {
				return self.append("senderEmail") 
			}
		}
		
		public var mailSenderName: BaseTokenizedObject {
			get {
				return self.append("mailSenderName") 
			}
		}
		
		public var mailNotificationAdapterId: BaseTokenizedObject {
			get {
				return self.append("mailNotificationAdapterId") 
			}
		}
		
		public var smsEnabled: BaseTokenizedObject {
			get {
				return self.append("smsEnabled") 
			}
		}
	}

	/**  Push notification capability is enabled for the account  */
	public var pushNotificationEnabled: Bool? = nil
	/**  System announcement capability is enabled for the account  */
	public var pushSystemAnnouncementsEnabled: Bool? = nil
	/**  Window start time (UTC) for send automated push messages  */
	public var pushStartHour: Int? = nil
	/**  Window end time (UTC) for send automated push messages  */
	public var pushEndHour: Int? = nil
	/**  Inbox enabled  */
	public var inboxEnabled: Bool? = nil
	/**  Message TTL in days  */
	public var messageTTLDays: Int? = nil
	/**  Automatic issue follow notification  */
	public var automaticIssueFollowNotification: Bool? = nil
	/**  Topic expiration duration in days  */
	public var topicExpirationDurationDays: Int? = nil
	/**  Reminder enabled  */
	public var reminderEnabled: Bool? = nil
	/**  Offset time (UTC) in seconds for send reminder  */
	public var reminderOffsetSec: Int? = nil
	/**  Push adapter URL  */
	public var pushAdapterUrl: String? = nil
	/**  Churn mail template name  */
	public var churnMailTemplateName: String? = nil
	/**  Churn mail subject  */
	public var churnMailSubject: String? = nil
	/**  Sender email  */
	public var senderEmail: String? = nil
	/**  Mail sender name  */
	public var mailSenderName: String? = nil
	/**  Mail notification adapter identifier  */
	public var mailNotificationAdapterId: Int64? = nil
	/**  SMS capability is enabled for the account  */
	public var smsEnabled: Bool? = nil


	public func setMultiRequestToken(pushNotificationEnabled: String) {
		self.dict["pushNotificationEnabled"] = pushNotificationEnabled
	}
	
	public func setMultiRequestToken(pushSystemAnnouncementsEnabled: String) {
		self.dict["pushSystemAnnouncementsEnabled"] = pushSystemAnnouncementsEnabled
	}
	
	public func setMultiRequestToken(pushStartHour: String) {
		self.dict["pushStartHour"] = pushStartHour
	}
	
	public func setMultiRequestToken(pushEndHour: String) {
		self.dict["pushEndHour"] = pushEndHour
	}
	
	public func setMultiRequestToken(inboxEnabled: String) {
		self.dict["inboxEnabled"] = inboxEnabled
	}
	
	public func setMultiRequestToken(messageTTLDays: String) {
		self.dict["messageTTLDays"] = messageTTLDays
	}
	
	public func setMultiRequestToken(automaticIssueFollowNotification: String) {
		self.dict["automaticIssueFollowNotification"] = automaticIssueFollowNotification
	}
	
	public func setMultiRequestToken(topicExpirationDurationDays: String) {
		self.dict["topicExpirationDurationDays"] = topicExpirationDurationDays
	}
	
	public func setMultiRequestToken(reminderEnabled: String) {
		self.dict["reminderEnabled"] = reminderEnabled
	}
	
	public func setMultiRequestToken(reminderOffsetSec: String) {
		self.dict["reminderOffsetSec"] = reminderOffsetSec
	}
	
	public func setMultiRequestToken(pushAdapterUrl: String) {
		self.dict["pushAdapterUrl"] = pushAdapterUrl
	}
	
	public func setMultiRequestToken(churnMailTemplateName: String) {
		self.dict["churnMailTemplateName"] = churnMailTemplateName
	}
	
	public func setMultiRequestToken(churnMailSubject: String) {
		self.dict["churnMailSubject"] = churnMailSubject
	}
	
	public func setMultiRequestToken(senderEmail: String) {
		self.dict["senderEmail"] = senderEmail
	}
	
	public func setMultiRequestToken(mailSenderName: String) {
		self.dict["mailSenderName"] = mailSenderName
	}
	
	public func setMultiRequestToken(mailNotificationAdapterId: String) {
		self.dict["mailNotificationAdapterId"] = mailNotificationAdapterId
	}
	
	public func setMultiRequestToken(smsEnabled: String) {
		self.dict["smsEnabled"] = smsEnabled
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pushNotificationEnabled"] != nil {
			pushNotificationEnabled = dict["pushNotificationEnabled"] as? Bool
		}
		if dict["pushSystemAnnouncementsEnabled"] != nil {
			pushSystemAnnouncementsEnabled = dict["pushSystemAnnouncementsEnabled"] as? Bool
		}
		if dict["pushStartHour"] != nil {
			pushStartHour = dict["pushStartHour"] as? Int
		}
		if dict["pushEndHour"] != nil {
			pushEndHour = dict["pushEndHour"] as? Int
		}
		if dict["inboxEnabled"] != nil {
			inboxEnabled = dict["inboxEnabled"] as? Bool
		}
		if dict["messageTTLDays"] != nil {
			messageTTLDays = dict["messageTTLDays"] as? Int
		}
		if dict["automaticIssueFollowNotification"] != nil {
			automaticIssueFollowNotification = dict["automaticIssueFollowNotification"] as? Bool
		}
		if dict["topicExpirationDurationDays"] != nil {
			topicExpirationDurationDays = dict["topicExpirationDurationDays"] as? Int
		}
		if dict["reminderEnabled"] != nil {
			reminderEnabled = dict["reminderEnabled"] as? Bool
		}
		if dict["reminderOffsetSec"] != nil {
			reminderOffsetSec = dict["reminderOffsetSec"] as? Int
		}
		if dict["pushAdapterUrl"] != nil {
			pushAdapterUrl = dict["pushAdapterUrl"] as? String
		}
		if dict["churnMailTemplateName"] != nil {
			churnMailTemplateName = dict["churnMailTemplateName"] as? String
		}
		if dict["churnMailSubject"] != nil {
			churnMailSubject = dict["churnMailSubject"] as? String
		}
		if dict["senderEmail"] != nil {
			senderEmail = dict["senderEmail"] as? String
		}
		if dict["mailSenderName"] != nil {
			mailSenderName = dict["mailSenderName"] as? String
		}
		if dict["mailNotificationAdapterId"] != nil {
			mailNotificationAdapterId = Int64("\(dict["mailNotificationAdapterId"]!)")
		}
		if dict["smsEnabled"] != nil {
			smsEnabled = dict["smsEnabled"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(pushNotificationEnabled != nil) {
			dict["pushNotificationEnabled"] = pushNotificationEnabled!
		}
		if(pushSystemAnnouncementsEnabled != nil) {
			dict["pushSystemAnnouncementsEnabled"] = pushSystemAnnouncementsEnabled!
		}
		if(pushStartHour != nil) {
			dict["pushStartHour"] = pushStartHour!
		}
		if(pushEndHour != nil) {
			dict["pushEndHour"] = pushEndHour!
		}
		if(inboxEnabled != nil) {
			dict["inboxEnabled"] = inboxEnabled!
		}
		if(messageTTLDays != nil) {
			dict["messageTTLDays"] = messageTTLDays!
		}
		if(automaticIssueFollowNotification != nil) {
			dict["automaticIssueFollowNotification"] = automaticIssueFollowNotification!
		}
		if(topicExpirationDurationDays != nil) {
			dict["topicExpirationDurationDays"] = topicExpirationDurationDays!
		}
		if(reminderEnabled != nil) {
			dict["reminderEnabled"] = reminderEnabled!
		}
		if(reminderOffsetSec != nil) {
			dict["reminderOffsetSec"] = reminderOffsetSec!
		}
		if(pushAdapterUrl != nil) {
			dict["pushAdapterUrl"] = pushAdapterUrl!
		}
		if(churnMailTemplateName != nil) {
			dict["churnMailTemplateName"] = churnMailTemplateName!
		}
		if(churnMailSubject != nil) {
			dict["churnMailSubject"] = churnMailSubject!
		}
		if(senderEmail != nil) {
			dict["senderEmail"] = senderEmail!
		}
		if(mailSenderName != nil) {
			dict["mailSenderName"] = mailSenderName!
		}
		if(mailNotificationAdapterId != nil) {
			dict["mailNotificationAdapterId"] = mailNotificationAdapterId!
		}
		if(smsEnabled != nil) {
			dict["smsEnabled"] = smsEnabled!
		}
		return dict
	}
}

