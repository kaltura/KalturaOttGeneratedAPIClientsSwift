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

open class MessageTemplate: ObjectBase {

	public class MessageTemplateTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var dateFormat: BaseTokenizedObject {
			get {
				return self.append("dateFormat") 
			}
		}
		
		public var messageType: BaseTokenizedObject {
			get {
				return self.append("messageType") 
			}
		}
		
		public var sound: BaseTokenizedObject {
			get {
				return self.append("sound") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
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
		
		public var ratioId: BaseTokenizedObject {
			get {
				return self.append("ratioId") 
			}
		}
	}

	/**  The message template with placeholders  */
	public var message: String? = nil
	/**  Default date format for the date &amp;amp; time entries used in the template  */
	public var dateFormat: String? = nil
	/**  Template type. Possible values: Series, Reminder,Churn, SeriesReminder  */
	public var messageType: MessageTemplateType? = nil
	/**  Sound file name to play upon message arrival to the device (if supported by
	  target device)  */
	public var sound: String? = nil
	/**  an optional action  */
	public var action: String? = nil
	/**  URL template for deep linking. Example - /app/location/{mediaId}  */
	public var url: String? = nil
	/**  Mail template name  */
	public var mailTemplate: String? = nil
	/**  Mail subject  */
	public var mailSubject: String? = nil
	/**  Ratio identifier  */
	public var ratioId: String? = nil


	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(dateFormat: String) {
		self.dict["dateFormat"] = dateFormat
	}
	
	public func setMultiRequestToken(messageType: String) {
		self.dict["messageType"] = messageType
	}
	
	public func setMultiRequestToken(sound: String) {
		self.dict["sound"] = sound
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(mailTemplate: String) {
		self.dict["mailTemplate"] = mailTemplate
	}
	
	public func setMultiRequestToken(mailSubject: String) {
		self.dict["mailSubject"] = mailSubject
	}
	
	public func setMultiRequestToken(ratioId: String) {
		self.dict["ratioId"] = ratioId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["dateFormat"] != nil {
			dateFormat = dict["dateFormat"] as? String
		}
		if dict["messageType"] != nil {
			messageType = MessageTemplateType(rawValue: "\(dict["messageType"]!)")
		}
		if dict["sound"] != nil {
			sound = dict["sound"] as? String
		}
		if dict["action"] != nil {
			action = dict["action"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["mailTemplate"] != nil {
			mailTemplate = dict["mailTemplate"] as? String
		}
		if dict["mailSubject"] != nil {
			mailSubject = dict["mailSubject"] as? String
		}
		if dict["ratioId"] != nil {
			ratioId = dict["ratioId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(message != nil) {
			dict["message"] = message!
		}
		if(dateFormat != nil) {
			dict["dateFormat"] = dateFormat!
		}
		if(messageType != nil) {
			dict["messageType"] = messageType!.rawValue
		}
		if(sound != nil) {
			dict["sound"] = sound!
		}
		if(action != nil) {
			dict["action"] = action!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(mailTemplate != nil) {
			dict["mailTemplate"] = mailTemplate!
		}
		if(mailSubject != nil) {
			dict["mailSubject"] = mailSubject!
		}
		if(ratioId != nil) {
			dict["ratioId"] = ratioId!
		}
		return dict
	}
}

