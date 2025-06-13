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

open class SocialFriendActivity: ObjectBase {

	public class SocialFriendActivityTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var userFullName: BaseTokenizedObject {
			get {
				return self.append("userFullName") 
			}
		}
		
		public var userPictureUrl: BaseTokenizedObject {
			get {
				return self.append("userPictureUrl") 
			}
		}
		
		public func socialAction<T: SocialAction.SocialActionTokenizer>() -> T {
			return T(self.append("socialAction"))
		}
	}

	/**  The full name of the user who did the social action  */
	public var userFullName: String? = nil
	/**  The URL of the profile picture of the user who did the social action  */
	public var userPictureUrl: String? = nil
	/**  The social action  */
	public var socialAction: SocialAction? = nil


	public func setMultiRequestToken(userFullName: String) {
		self.dict["userFullName"] = userFullName
	}
	
	public func setMultiRequestToken(userPictureUrl: String) {
		self.dict["userPictureUrl"] = userPictureUrl
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userFullName"] != nil {
			userFullName = dict["userFullName"] as? String
		}
		if dict["userPictureUrl"] != nil {
			userPictureUrl = dict["userPictureUrl"] as? String
		}
		if dict["socialAction"] != nil {
		socialAction = try JSONParser.parse(object: dict["socialAction"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userFullName != nil) {
			dict["userFullName"] = userFullName!
		}
		if(userPictureUrl != nil) {
			dict["userPictureUrl"] = userPictureUrl!
		}
		if(socialAction != nil) {
			dict["socialAction"] = socialAction!.toDictionary()
		}
		return dict
	}
}

