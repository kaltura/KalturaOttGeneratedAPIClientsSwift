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

/**  Application token  */
open class AppToken: ObjectBase {

	public class AppTokenTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var sessionDuration: BaseTokenizedObject {
			get {
				return self.append("sessionDuration") 
			}
		}
		
		public var hashType: BaseTokenizedObject {
			get {
				return self.append("hashType") 
			}
		}
		
		public var sessionPrivileges: BaseTokenizedObject {
			get {
				return self.append("sessionPrivileges") 
			}
		}
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
			}
		}
		
		public var sessionUserId: BaseTokenizedObject {
			get {
				return self.append("sessionUserId") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
	}

	/**  The id of the application token  */
	public var id: String? = nil
	/**  Expiry time of current token (unix timestamp in seconds)  */
	public var expiry: Int? = nil
	/**  Partner identifier  */
	public var partnerId: Int? = nil
	/**  Expiry duration of KS (Kaltura Session) that created using the current token (in
	  seconds)  */
	public var sessionDuration: Int? = nil
	/**  The hash type of the token  */
	public var hashType: AppTokenHashType? = nil
	/**  Comma separated privileges to be applied on KS (Kaltura Session) that created
	  using the current token  */
	public var sessionPrivileges: String? = nil
	/**  The application token  */
	public var token: String? = nil
	/**  User id of KS (Kaltura Session) that created using the current token  */
	public var sessionUserId: String? = nil
	/**  Create date  */
	public var createDate: Int64? = nil
	/**  Update date  */
	public var updateDate: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(expiry: String) {
		self.dict["expiry"] = expiry
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(sessionDuration: String) {
		self.dict["sessionDuration"] = sessionDuration
	}
	
	public func setMultiRequestToken(hashType: String) {
		self.dict["hashType"] = hashType
	}
	
	public func setMultiRequestToken(sessionPrivileges: String) {
		self.dict["sessionPrivileges"] = sessionPrivileges
	}
	
	public func setMultiRequestToken(token: String) {
		self.dict["token"] = token
	}
	
	public func setMultiRequestToken(sessionUserId: String) {
		self.dict["sessionUserId"] = sessionUserId
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["expiry"] != nil {
			expiry = dict["expiry"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["sessionDuration"] != nil {
			sessionDuration = dict["sessionDuration"] as? Int
		}
		if dict["hashType"] != nil {
			hashType = AppTokenHashType(rawValue: "\(dict["hashType"]!)")
		}
		if dict["sessionPrivileges"] != nil {
			sessionPrivileges = dict["sessionPrivileges"] as? String
		}
		if dict["token"] != nil {
			token = dict["token"] as? String
		}
		if dict["sessionUserId"] != nil {
			sessionUserId = dict["sessionUserId"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(expiry != nil) {
			dict["expiry"] = expiry!
		}
		if(sessionDuration != nil) {
			dict["sessionDuration"] = sessionDuration!
		}
		if(hashType != nil) {
			dict["hashType"] = hashType!.rawValue
		}
		if(sessionPrivileges != nil) {
			dict["sessionPrivileges"] = sessionPrivileges!
		}
		if(sessionUserId != nil) {
			dict["sessionUserId"] = sessionUserId!
		}
		return dict
	}
}

