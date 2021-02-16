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

/**  IOT DEVICE  */
open class Iot: CrudObject {

	public class IotTokenizer: CrudObject.CrudObjectTokenizer {
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var accessKey: BaseTokenizedObject {
			get {
				return self.append("accessKey") 
			}
		}
		
		public var accessSecretKey: BaseTokenizedObject {
			get {
				return self.append("accessSecretKey") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var userPassword: BaseTokenizedObject {
			get {
				return self.append("userPassword") 
			}
		}
		
		public var identityId: BaseTokenizedObject {
			get {
				return self.append("identityId") 
			}
		}
		
		public var thingArn: BaseTokenizedObject {
			get {
				return self.append("thingArn") 
			}
		}
		
		public var thingId: BaseTokenizedObject {
			get {
				return self.append("thingId") 
			}
		}
		
		public var principal: BaseTokenizedObject {
			get {
				return self.append("principal") 
			}
		}
		
		public var endPoint: BaseTokenizedObject {
			get {
				return self.append("endPoint") 
			}
		}
		
		public var extendedEndPoint: BaseTokenizedObject {
			get {
				return self.append("extendedEndPoint") 
			}
		}
		
		public var identityPoolId: BaseTokenizedObject {
			get {
				return self.append("identityPoolId") 
			}
		}
	}

	/**  id  */
	public var udid: String? = nil
	/**  accessKey  */
	public var accessKey: String? = nil
	/**  accessSecretKey  */
	public var accessSecretKey: String? = nil
	/**  Username  */
	public var username: String? = nil
	/**  UserPassword  */
	public var userPassword: String? = nil
	/**  IdentityId  */
	public var identityId: String? = nil
	/**  ThingArn  */
	public var thingArn: String? = nil
	/**  ThingId  */
	public var thingId: String? = nil
	/**  Principal  */
	public var principal: String? = nil
	/**  EndPoint  */
	public var endPoint: String? = nil
	/**  ExtendedEndPoint  */
	public var extendedEndPoint: String? = nil
	/**  IdentityPoolId  */
	public var identityPoolId: String? = nil


	public func setMultiRequestToken(udid: String) {
		self.dict["udid"] = udid
	}
	
	public func setMultiRequestToken(accessKey: String) {
		self.dict["accessKey"] = accessKey
	}
	
	public func setMultiRequestToken(accessSecretKey: String) {
		self.dict["accessSecretKey"] = accessSecretKey
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(userPassword: String) {
		self.dict["userPassword"] = userPassword
	}
	
	public func setMultiRequestToken(identityId: String) {
		self.dict["identityId"] = identityId
	}
	
	public func setMultiRequestToken(thingArn: String) {
		self.dict["thingArn"] = thingArn
	}
	
	public func setMultiRequestToken(thingId: String) {
		self.dict["thingId"] = thingId
	}
	
	public func setMultiRequestToken(principal: String) {
		self.dict["principal"] = principal
	}
	
	public func setMultiRequestToken(endPoint: String) {
		self.dict["endPoint"] = endPoint
	}
	
	public func setMultiRequestToken(extendedEndPoint: String) {
		self.dict["extendedEndPoint"] = extendedEndPoint
	}
	
	public func setMultiRequestToken(identityPoolId: String) {
		self.dict["identityPoolId"] = identityPoolId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["accessKey"] != nil {
			accessKey = dict["accessKey"] as? String
		}
		if dict["accessSecretKey"] != nil {
			accessSecretKey = dict["accessSecretKey"] as? String
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["userPassword"] != nil {
			userPassword = dict["userPassword"] as? String
		}
		if dict["identityId"] != nil {
			identityId = dict["identityId"] as? String
		}
		if dict["thingArn"] != nil {
			thingArn = dict["thingArn"] as? String
		}
		if dict["thingId"] != nil {
			thingId = dict["thingId"] as? String
		}
		if dict["principal"] != nil {
			principal = dict["principal"] as? String
		}
		if dict["endPoint"] != nil {
			endPoint = dict["endPoint"] as? String
		}
		if dict["extendedEndPoint"] != nil {
			extendedEndPoint = dict["extendedEndPoint"] as? String
		}
		if dict["identityPoolId"] != nil {
			identityPoolId = dict["identityPoolId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(udid != nil) {
			dict["udid"] = udid!
		}
		if(accessKey != nil) {
			dict["accessKey"] = accessKey!
		}
		if(accessSecretKey != nil) {
			dict["accessSecretKey"] = accessSecretKey!
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(userPassword != nil) {
			dict["userPassword"] = userPassword!
		}
		if(identityId != nil) {
			dict["identityId"] = identityId!
		}
		if(thingArn != nil) {
			dict["thingArn"] = thingArn!
		}
		if(thingId != nil) {
			dict["thingId"] = thingId!
		}
		if(principal != nil) {
			dict["principal"] = principal!
		}
		if(endPoint != nil) {
			dict["endPoint"] = endPoint!
		}
		if(extendedEndPoint != nil) {
			dict["extendedEndPoint"] = extendedEndPoint!
		}
		if(identityPoolId != nil) {
			dict["identityPoolId"] = identityPoolId!
		}
		return dict
	}
}

