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

open class NotificationsSettings: ObjectBase {

	public class NotificationsSettingsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var pushNotificationEnabled: BaseTokenizedObject {
			get {
				return self.append("pushNotificationEnabled") 
			}
		}
		
		public var pushFollowEnabled: BaseTokenizedObject {
			get {
				return self.append("pushFollowEnabled") 
			}
		}
		
		public var mailEnabled: BaseTokenizedObject {
			get {
				return self.append("mailEnabled") 
			}
		}
		
		public var smsEnabled: BaseTokenizedObject {
			get {
				return self.append("smsEnabled") 
			}
		}
	}

	/**  Specify if the user want to receive push notifications or not  */
	public var pushNotificationEnabled: Bool? = nil
	/**  Specify if the user will be notified for followed content via push. (requires
	  push_notification_enabled to be enabled)  */
	public var pushFollowEnabled: Bool? = nil
	/**  Specify if the user wants to receive mail notifications or not  */
	public var mailEnabled: Bool? = nil
	/**  Specify if the user wants to receive SMS notifications or not  */
	public var smsEnabled: Bool? = nil


	public func setMultiRequestToken(pushNotificationEnabled: String) {
		self.dict["pushNotificationEnabled"] = pushNotificationEnabled
	}
	
	public func setMultiRequestToken(pushFollowEnabled: String) {
		self.dict["pushFollowEnabled"] = pushFollowEnabled
	}
	
	public func setMultiRequestToken(mailEnabled: String) {
		self.dict["mailEnabled"] = mailEnabled
	}
	
	public func setMultiRequestToken(smsEnabled: String) {
		self.dict["smsEnabled"] = smsEnabled
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pushNotificationEnabled"] != nil {
			pushNotificationEnabled = dict["pushNotificationEnabled"] as? Bool
		}
		if dict["pushFollowEnabled"] != nil {
			pushFollowEnabled = dict["pushFollowEnabled"] as? Bool
		}
		if dict["mailEnabled"] != nil {
			mailEnabled = dict["mailEnabled"] as? Bool
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
		if(pushFollowEnabled != nil) {
			dict["pushFollowEnabled"] = pushFollowEnabled!
		}
		if(mailEnabled != nil) {
			dict["mailEnabled"] = mailEnabled!
		}
		if(smsEnabled != nil) {
			dict["smsEnabled"] = smsEnabled!
		}
		return dict
	}
}

