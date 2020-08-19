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

/**  Returns social configuration for the partner  */
open class SocialFacebookConfig: SocialConfig {

	public class SocialFacebookConfigTokenizer: SocialConfig.SocialConfigTokenizer {
		
		public var appId: BaseTokenizedObject {
			get {
				return self.append("appId") 
			}
		}
		
		public var permissions: BaseTokenizedObject {
			get {
				return self.append("permissions") 
			}
		}
	}

	/**  The application identifier  */
	public var appId: String? = nil
	/**  List of application permissions  */
	public var permissions: String? = nil


	public func setMultiRequestToken(appId: String) {
		self.dict["appId"] = appId
	}
	
	public func setMultiRequestToken(permissions: String) {
		self.dict["permissions"] = permissions
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["appId"] != nil {
			appId = dict["appId"] as? String
		}
		if dict["permissions"] != nil {
			permissions = dict["permissions"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(appId != nil) {
			dict["appId"] = appId!
		}
		if(permissions != nil) {
			dict["permissions"] = permissions!
		}
		return dict
	}
}

