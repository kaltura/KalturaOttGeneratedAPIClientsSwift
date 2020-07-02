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

/**  Password policy settings  */
open class PasswordPolicy: CrudObject {

	public class PasswordPolicyTokenizer: CrudObject.CrudObjectTokenizer {
		
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
		
		public var userRoleIds: BaseTokenizedObject {
			get {
				return self.append("userRoleIds") 
			}
		}
		
		public var historyCount: BaseTokenizedObject {
			get {
				return self.append("historyCount") 
			}
		}
		
		public var expiration: BaseTokenizedObject {
			get {
				return self.append("expiration") 
			}
		}
		
		public var complexities: ArrayTokenizedObject<RegexExpression.RegexExpressionTokenizer> {
			get {
				return ArrayTokenizedObject<RegexExpression.RegexExpressionTokenizer>(self.append("complexities"))
			} 
		}
		
		public var lockoutFailuresCount: BaseTokenizedObject {
			get {
				return self.append("lockoutFailuresCount") 
			}
		}
	}

	/**  id  */
	public var id: Int64? = nil
	/**  Name  */
	public var name: String? = nil
	/**  Comma separated UserRole Ids list which the policy is applied on  */
	public var userRoleIds: String? = nil
	/**  The number of passwords that should be remembered for each user so that they
	  cannot be reused.  */
	public var historyCount: Int? = nil
	/**  When should the password expire (will represent time as days).  */
	public var expiration: Int? = nil
	/**  array of  KalturaRegex  */
	public var complexities: Array<RegexExpression>? = nil
	/**  the number of passwords failures before the account is locked.  */
	public var lockoutFailuresCount: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(userRoleIds: String) {
		self.dict["userRoleIds"] = userRoleIds
	}
	
	public func setMultiRequestToken(historyCount: String) {
		self.dict["historyCount"] = historyCount
	}
	
	public func setMultiRequestToken(expiration: String) {
		self.dict["expiration"] = expiration
	}
	
	public func setMultiRequestToken(lockoutFailuresCount: String) {
		self.dict["lockoutFailuresCount"] = lockoutFailuresCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["userRoleIds"] != nil {
			userRoleIds = dict["userRoleIds"] as? String
		}
		if dict["historyCount"] != nil {
			historyCount = dict["historyCount"] as? Int
		}
		if dict["expiration"] != nil {
			expiration = dict["expiration"] as? Int
		}
		if dict["complexities"] != nil {
			complexities = try JSONParser.parse(array: dict["complexities"] as! [Any])
		}
		if dict["lockoutFailuresCount"] != nil {
			lockoutFailuresCount = dict["lockoutFailuresCount"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(userRoleIds != nil) {
			dict["userRoleIds"] = userRoleIds!
		}
		if(historyCount != nil) {
			dict["historyCount"] = historyCount!
		}
		if(expiration != nil) {
			dict["expiration"] = expiration!
		}
		if(complexities != nil) {
			dict["complexities"] = complexities!.map { value in value.toDictionary() }
		}
		if(lockoutFailuresCount != nil) {
			dict["lockoutFailuresCount"] = lockoutFailuresCount!
		}
		return dict
	}
}

