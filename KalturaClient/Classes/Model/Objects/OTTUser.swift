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

/**  User  */
open class OTTUser: BaseOTTUser {

	public class OTTUserTokenizer: BaseOTTUser.BaseOTTUserTokenizer {
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
			}
		}
		
		public var address: BaseTokenizedObject {
			get {
				return self.append("address") 
			}
		}
		
		public var city: BaseTokenizedObject {
			get {
				return self.append("city") 
			}
		}
		
		public var countryId: BaseTokenizedObject {
			get {
				return self.append("countryId") 
			}
		}
		
		public var zip: BaseTokenizedObject {
			get {
				return self.append("zip") 
			}
		}
		
		public var phone: BaseTokenizedObject {
			get {
				return self.append("phone") 
			}
		}
		
		public var affiliateCode: BaseTokenizedObject {
			get {
				return self.append("affiliateCode") 
			}
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public func userType<T: OTTUserType.OTTUserTypeTokenizer>() -> T {
			return T(self.append("userType"))
		}
		
		public var dynamicData: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("dynamicData"))
			}
		}
		
		public var isHouseholdMaster: BaseTokenizedObject {
			get {
				return self.append("isHouseholdMaster") 
			}
		}
		
		public var suspensionState: BaseTokenizedObject {
			get {
				return self.append("suspensionState") 
			}
		}
		
		public var userState: BaseTokenizedObject {
			get {
				return self.append("userState") 
			}
		}
		
		public var roleIds: BaseTokenizedObject {
			get {
				return self.append("roleIds") 
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
		
		public var lastLoginDate: BaseTokenizedObject {
			get {
				return self.append("lastLoginDate") 
			}
		}
		
		public var failedLoginCount: BaseTokenizedObject {
			get {
				return self.append("failedLoginCount") 
			}
		}
	}

	/**  Household identifier  */
	public var householdId: Int? = nil
	/**  Email  */
	public var email: String? = nil
	/**  Address  */
	public var address: String? = nil
	/**  City  */
	public var city: String? = nil
	/**  Country identifier  */
	public var countryId: Int? = nil
	/**  Zip code  */
	public var zip: String? = nil
	/**  Phone  */
	public var phone: String? = nil
	/**  Affiliate code  */
	public var affiliateCode: String? = nil
	/**  External user identifier  */
	public var externalId: String? = nil
	/**  User type  */
	public var userType: OTTUserType? = nil
	/**  Dynamic data  */
	public var dynamicData: Dictionary<String, StringValue>? = nil
	/**  Is the user the household master  */
	public var isHouseholdMaster: Bool? = nil
	/**  Suspension state  */
	public var suspensionState: HouseholdSuspensionState? = nil
	/**  User state  */
	public var userState: UserState? = nil
	/**  Comma separated list of role Ids.  */
	public var roleIds: String? = nil
	/**  User create date  */
	public var createDate: Int64? = nil
	/**  User last update date  */
	public var updateDate: Int64? = nil
	/**  The date of the last successful login  */
	public var lastLoginDate: Int64? = nil
	/**  The number of failed login attempts since the last successful login  */
	public var failedLoginCount: Int? = nil


	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(email: String) {
		self.dict["email"] = email
	}
	
	public func setMultiRequestToken(address: String) {
		self.dict["address"] = address
	}
	
	public func setMultiRequestToken(city: String) {
		self.dict["city"] = city
	}
	
	public func setMultiRequestToken(countryId: String) {
		self.dict["countryId"] = countryId
	}
	
	public func setMultiRequestToken(zip: String) {
		self.dict["zip"] = zip
	}
	
	public func setMultiRequestToken(phone: String) {
		self.dict["phone"] = phone
	}
	
	public func setMultiRequestToken(affiliateCode: String) {
		self.dict["affiliateCode"] = affiliateCode
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(isHouseholdMaster: String) {
		self.dict["isHouseholdMaster"] = isHouseholdMaster
	}
	
	public func setMultiRequestToken(suspensionState: String) {
		self.dict["suspensionState"] = suspensionState
	}
	
	public func setMultiRequestToken(userState: String) {
		self.dict["userState"] = userState
	}
	
	public func setMultiRequestToken(roleIds: String) {
		self.dict["roleIds"] = roleIds
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(lastLoginDate: String) {
		self.dict["lastLoginDate"] = lastLoginDate
	}
	
	public func setMultiRequestToken(failedLoginCount: String) {
		self.dict["failedLoginCount"] = failedLoginCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["householdId"] != nil {
			householdId = dict["householdId"] as? Int
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
		}
		if dict["address"] != nil {
			address = dict["address"] as? String
		}
		if dict["city"] != nil {
			city = dict["city"] as? String
		}
		if dict["countryId"] != nil {
			countryId = dict["countryId"] as? Int
		}
		if dict["zip"] != nil {
			zip = dict["zip"] as? String
		}
		if dict["phone"] != nil {
			phone = dict["phone"] as? String
		}
		if dict["affiliateCode"] != nil {
			affiliateCode = dict["affiliateCode"] as? String
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["userType"] != nil {
		userType = try JSONParser.parse(object: dict["userType"] as! [String: Any])		}
		if dict["dynamicData"] != nil {
			dynamicData = try JSONParser.parse(map: dict["dynamicData"] as! [String: Any])
		}
		if dict["isHouseholdMaster"] != nil {
			isHouseholdMaster = dict["isHouseholdMaster"] as? Bool
		}
		if dict["suspensionState"] != nil {
			suspensionState = HouseholdSuspensionState(rawValue: "\(dict["suspensionState"]!)")
		}
		if dict["userState"] != nil {
			userState = UserState(rawValue: "\(dict["userState"]!)")
		}
		if dict["roleIds"] != nil {
			roleIds = dict["roleIds"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["lastLoginDate"] != nil {
			lastLoginDate = Int64("\(dict["lastLoginDate"]!)")
		}
		if dict["failedLoginCount"] != nil {
			failedLoginCount = dict["failedLoginCount"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(email != nil) {
			dict["email"] = email!
		}
		if(address != nil) {
			dict["address"] = address!
		}
		if(city != nil) {
			dict["city"] = city!
		}
		if(countryId != nil) {
			dict["countryId"] = countryId!
		}
		if(zip != nil) {
			dict["zip"] = zip!
		}
		if(phone != nil) {
			dict["phone"] = phone!
		}
		if(affiliateCode != nil) {
			dict["affiliateCode"] = affiliateCode!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(userType != nil) {
			dict["userType"] = userType!.toDictionary()
		}
		if(dynamicData != nil) {
			dict["dynamicData"] = dynamicData!.toDictionary()
		}
		if(roleIds != nil) {
			dict["roleIds"] = roleIds!
		}
		return dict
	}
}

