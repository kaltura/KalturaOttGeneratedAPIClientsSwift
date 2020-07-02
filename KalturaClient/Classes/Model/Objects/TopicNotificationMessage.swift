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

open class TopicNotificationMessage: ObjectBase {

	public class TopicNotificationMessageTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var imageUrl: BaseTokenizedObject {
			get {
				return self.append("imageUrl") 
			}
		}
		
		public var topicNotificationId: BaseTokenizedObject {
			get {
				return self.append("topicNotificationId") 
			}
		}
		
		public func trigger<T: Trigger.TriggerTokenizer>() -> T {
			return T(self.append("trigger"))
		}
		
		public var dispatchers: ArrayTokenizedObject<Dispatcher.DispatcherTokenizer> {
			get {
				return ArrayTokenizedObject<Dispatcher.DispatcherTokenizer>(self.append("dispatchers"))
			} 
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Topic notification message ID  */
	public var id: Int64? = nil
	/**  Topic notification message  */
	public var message: String? = nil
	/**  Topic notification message image URL  */
	public var imageUrl: String? = nil
	/**  Topic notification ID  */
	public var topicNotificationId: Int64? = nil
	/**  Topic notification message trigger  */
	public var trigger: Trigger? = nil
	/**  Topic notification message dispatchers  */
	public var dispatchers: Array<Dispatcher>? = nil
	/**  Message status  */
	public var status: AnnouncementStatus? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(imageUrl: String) {
		self.dict["imageUrl"] = imageUrl
	}
	
	public func setMultiRequestToken(topicNotificationId: String) {
		self.dict["topicNotificationId"] = topicNotificationId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["imageUrl"] != nil {
			imageUrl = dict["imageUrl"] as? String
		}
		if dict["topicNotificationId"] != nil {
			topicNotificationId = Int64("\(dict["topicNotificationId"]!)")
		}
		if dict["trigger"] != nil {
		trigger = try JSONParser.parse(object: dict["trigger"] as! [String: Any])		}
		if dict["dispatchers"] != nil {
			dispatchers = try JSONParser.parse(array: dict["dispatchers"] as! [Any])
		}
		if dict["status"] != nil {
			status = AnnouncementStatus(rawValue: "\(dict["status"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(message != nil) {
			dict["message"] = message!
		}
		if(imageUrl != nil) {
			dict["imageUrl"] = imageUrl!
		}
		if(topicNotificationId != nil) {
			dict["topicNotificationId"] = topicNotificationId!
		}
		if(trigger != nil) {
			dict["trigger"] = trigger!.toDictionary()
		}
		if(dispatchers != nil) {
			dict["dispatchers"] = dispatchers!.map { value in value.toDictionary() }
		}
		return dict
	}
}

