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

open class ActionPermissionItem: ObjectBase {

	public class ActionPermissionItemTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var network: BaseTokenizedObject {
			get {
				return self.append("network") 
			}
		}
		
		public var actionPrivacy: BaseTokenizedObject {
			get {
				return self.append("actionPrivacy") 
			}
		}
		
		public var privacy: BaseTokenizedObject {
			get {
				return self.append("privacy") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
	}

	/**  Social network  */
	public var network: SocialNetwork? = nil
	/**  Action privacy  */
	public var actionPrivacy: SocialActionPrivacy? = nil
	/**  Social privacy  */
	public var privacy: SocialPrivacy? = nil
	/**  Action - separated with comma  */
	public var action: String? = nil


	public func setMultiRequestToken(network: String) {
		self.dict["network"] = network
	}
	
	public func setMultiRequestToken(actionPrivacy: String) {
		self.dict["actionPrivacy"] = actionPrivacy
	}
	
	public func setMultiRequestToken(privacy: String) {
		self.dict["privacy"] = privacy
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["network"] != nil {
			network = SocialNetwork(rawValue: "\(dict["network"]!)")
		}
		if dict["actionPrivacy"] != nil {
			actionPrivacy = SocialActionPrivacy(rawValue: "\(dict["actionPrivacy"]!)")
		}
		if dict["privacy"] != nil {
			privacy = SocialPrivacy(rawValue: "\(dict["privacy"]!)")
		}
		if dict["action"] != nil {
			action = dict["action"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(network != nil) {
			dict["network"] = network!.rawValue
		}
		if(actionPrivacy != nil) {
			dict["actionPrivacy"] = actionPrivacy!.rawValue
		}
		if(privacy != nil) {
			dict["privacy"] = privacy!.rawValue
		}
		if(action != nil) {
			dict["action"] = action!
		}
		return dict
	}
}

