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

open class MultifactorAuthenticationPartnerConfiguration: ObjectBase {

	public class MultifactorAuthenticationPartnerConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var isEnabled: BaseTokenizedObject {
			get {
				return self.append("isEnabled") 
			}
		}
		
		public var roles: BaseTokenizedObject {
			get {
				return self.append("roles") 
			}
		}
		
		public var tokenExpirationInSeconds: BaseTokenizedObject {
			get {
				return self.append("tokenExpirationInSeconds") 
			}
		}
		
		public var tokenDeliveryMethod: BaseTokenizedObject {
			get {
				return self.append("tokenDeliveryMethod") 
			}
		}
	}

	/**  Is MFA Enabled for partner  */
	public var isEnabled: Bool? = nil
	/**  Roles  */
	public var roles: String? = nil
	/**  Token expiration in seconds  */
	public var tokenExpirationInSeconds: Int? = nil
	/**  Token delivery method  */
	public var tokenDeliveryMethod: TokenDeliveryMethod? = nil


	public func setMultiRequestToken(isEnabled: String) {
		self.dict["isEnabled"] = isEnabled
	}
	
	public func setMultiRequestToken(roles: String) {
		self.dict["roles"] = roles
	}
	
	public func setMultiRequestToken(tokenExpirationInSeconds: String) {
		self.dict["tokenExpirationInSeconds"] = tokenExpirationInSeconds
	}
	
	public func setMultiRequestToken(tokenDeliveryMethod: String) {
		self.dict["tokenDeliveryMethod"] = tokenDeliveryMethod
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isEnabled"] != nil {
			isEnabled = dict["isEnabled"] as? Bool
		}
		if dict["roles"] != nil {
			roles = dict["roles"] as? String
		}
		if dict["tokenExpirationInSeconds"] != nil {
			tokenExpirationInSeconds = dict["tokenExpirationInSeconds"] as? Int
		}
		if dict["tokenDeliveryMethod"] != nil {
			tokenDeliveryMethod = TokenDeliveryMethod(rawValue: "\(dict["tokenDeliveryMethod"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isEnabled != nil) {
			dict["isEnabled"] = isEnabled!
		}
		if(roles != nil) {
			dict["roles"] = roles!
		}
		if(tokenExpirationInSeconds != nil) {
			dict["tokenExpirationInSeconds"] = tokenExpirationInSeconds!
		}
		if(tokenDeliveryMethod != nil) {
			dict["tokenDeliveryMethod"] = tokenDeliveryMethod!.rawValue
		}
		return dict
	}
}

