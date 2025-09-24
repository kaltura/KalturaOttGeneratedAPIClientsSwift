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

open class Topic: ObjectBase {

	public class TopicTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var subscribersAmount: BaseTokenizedObject {
			get {
				return self.append("subscribersAmount") 
			}
		}
		
		public var automaticIssueNotification: BaseTokenizedObject {
			get {
				return self.append("automaticIssueNotification") 
			}
		}
		
		public var lastMessageSentDateSec: BaseTokenizedObject {
			get {
				return self.append("lastMessageSentDateSec") 
			}
		}
	}

	/**  message id  */
	public var id: String? = nil
	/**  message  */
	public var name: String? = nil
	/**  message  */
	public var subscribersAmount: String? = nil
	/**  automaticIssueNotification  */
	public var automaticIssueNotification: TopicAutomaticIssueNotification? = nil
	/**  lastMessageSentDateSec  */
	public var lastMessageSentDateSec: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(subscribersAmount: String) {
		self.dict["subscribersAmount"] = subscribersAmount
	}
	
	public func setMultiRequestToken(automaticIssueNotification: String) {
		self.dict["automaticIssueNotification"] = automaticIssueNotification
	}
	
	public func setMultiRequestToken(lastMessageSentDateSec: String) {
		self.dict["lastMessageSentDateSec"] = lastMessageSentDateSec
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["subscribersAmount"] != nil {
			subscribersAmount = dict["subscribersAmount"] as? String
		}
		if dict["automaticIssueNotification"] != nil {
			automaticIssueNotification = TopicAutomaticIssueNotification(rawValue: "\(dict["automaticIssueNotification"]!)")
		}
		if dict["lastMessageSentDateSec"] != nil {
			lastMessageSentDateSec = Int64("\(dict["lastMessageSentDateSec"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(subscribersAmount != nil) {
			dict["subscribersAmount"] = subscribersAmount!
		}
		if(automaticIssueNotification != nil) {
			dict["automaticIssueNotification"] = automaticIssueNotification!.rawValue
		}
		if(lastMessageSentDateSec != nil) {
			dict["lastMessageSentDateSec"] = lastMessageSentDateSec!
		}
		return dict
	}
}

