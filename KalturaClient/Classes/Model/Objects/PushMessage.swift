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

open class PushMessage: ObjectBase {

	public class PushMessageTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
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
	}

	/**  The message that will be presented to the user.  */
	public var message: String? = nil
	/**  Optional. Can be used to change the default push sound on the user device.  */
	public var sound: String? = nil
	/**  Optional. Used to change the default action of the application when a push is
	  received.  */
	public var action: String? = nil
	/**  Optional. Used to direct the application to the relevant page.  */
	public var url: String? = nil


	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
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
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["message"] != nil {
			message = dict["message"] as? String
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

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(message != nil) {
			dict["message"] = message!
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
		return dict
	}
}

