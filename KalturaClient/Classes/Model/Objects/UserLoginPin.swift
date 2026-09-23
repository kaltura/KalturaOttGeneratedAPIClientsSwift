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

/**  Log in pin code details  */
open class UserLoginPin: ObjectBase {

	public class UserLoginPinTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var pinCode: BaseTokenizedObject {
			get {
				return self.append("pinCode") 
			}
		}
		
		public var expirationTime: BaseTokenizedObject {
			get {
				return self.append("expirationTime") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Generated login pin code  */
	public var pinCode: String? = nil
	/**  Login pin expiration time (epoch)  */
	public var expirationTime: Int64? = nil
	/**  User Identifier  */
	public var userId: String? = nil


	public func setMultiRequestToken(pinCode: String) {
		self.dict["pinCode"] = pinCode
	}
	
	public func setMultiRequestToken(expirationTime: String) {
		self.dict["expirationTime"] = expirationTime
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pinCode"] != nil {
			pinCode = dict["pinCode"] as? String
		}
		if dict["expirationTime"] != nil {
			expirationTime = Int64("\(dict["expirationTime"]!)")
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(pinCode != nil) {
			dict["pinCode"] = pinCode!
		}
		if(expirationTime != nil) {
			dict["expirationTime"] = expirationTime!
		}
		return dict
	}
}

