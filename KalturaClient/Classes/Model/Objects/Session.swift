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

/**  Kaltura Session  */
open class Session: ObjectBase {

	public class SessionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
		
		public var privileges: BaseTokenizedObject {
			get {
				return self.append("privileges") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
	}

	/**  KS  */
	public var ks: String? = nil
	/**  Partner identifier  */
	public var partnerId: Int? = nil
	/**  User identifier  */
	public var userId: String? = nil
	/**  Expiry  */
	public var expiry: Int? = nil
	/**  Privileges  */
	public var privileges: String? = nil
	/**  UDID  */
	public var udid: String? = nil
	/**  Create date  */
	public var createDate: Int? = nil


	public func setMultiRequestToken(ks: String) {
		self.dict["ks"] = ks
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(expiry: String) {
		self.dict["expiry"] = expiry
	}
	
	public func setMultiRequestToken(privileges: String) {
		self.dict["privileges"] = privileges
	}
	
	public func setMultiRequestToken(udid: String) {
		self.dict["udid"] = udid
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["expiry"] != nil {
			expiry = dict["expiry"] as? Int
		}
		if dict["privileges"] != nil {
			privileges = dict["privileges"] as? String
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["createDate"] != nil {
			createDate = dict["createDate"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ks != nil) {
			dict["ks"] = ks!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(expiry != nil) {
			dict["expiry"] = expiry!
		}
		if(privileges != nil) {
			dict["privileges"] = privileges!
		}
		if(udid != nil) {
			dict["udid"] = udid!
		}
		if(createDate != nil) {
			dict["createDate"] = createDate!
		}
		return dict
	}
}

