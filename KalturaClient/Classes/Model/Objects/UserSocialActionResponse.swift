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

open class UserSocialActionResponse: ObjectBase {

	public class UserSocialActionResponseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func socialAction<T: SocialAction.SocialActionTokenizer>() -> T {
			return T(self.append("socialAction"))
		}
		
		public var failStatus: ArrayTokenizedObject<NetworkActionStatus.NetworkActionStatusTokenizer> {
			get {
				return ArrayTokenizedObject<NetworkActionStatus.NetworkActionStatusTokenizer>(self.append("failStatus"))
			} 
		}
	}

	/**  socialAction  */
	public var socialAction: SocialAction? = nil
	/**  List of action permission items  */
	public var failStatus: Array<NetworkActionStatus>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["socialAction"] != nil {
		socialAction = try JSONParser.parse(object: dict["socialAction"] as! [String: Any])		}
		if dict["failStatus"] != nil {
			failStatus = try JSONParser.parse(array: dict["failStatus"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(socialAction != nil) {
			dict["socialAction"] = socialAction!.toDictionary()
		}
		if(failStatus != nil) {
			dict["failStatus"] = failStatus!.map { value in value.toDictionary() }
		}
		return dict
	}
}

