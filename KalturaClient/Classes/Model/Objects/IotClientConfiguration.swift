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

/**  Iot client Configuration  */
open class IotClientConfiguration: ObjectBase {

	public class IotClientConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var identityPoolId: BaseTokenizedObject {
			get {
				return self.append("identityPoolId") 
			}
		}
		
		public var userPoolId: BaseTokenizedObject {
			get {
				return self.append("userPoolId") 
			}
		}
		
		public var awsRegion: BaseTokenizedObject {
			get {
				return self.append("awsRegion") 
			}
		}
		
		public var appClientId: BaseTokenizedObject {
			get {
				return self.append("appClientId") 
			}
		}
		
		public var legacyEndPoint: BaseTokenizedObject {
			get {
				return self.append("legacyEndPoint") 
			}
		}
		
		public var endPoint: BaseTokenizedObject {
			get {
				return self.append("endPoint") 
			}
		}
		
		public var thingName: BaseTokenizedObject {
			get {
				return self.append("thingName") 
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
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var topics: BaseTokenizedObject {
			get {
				return self.append("topics") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
	}

	/**  IdentityPoolId  */
	public var identityPoolId: String? = nil
	/**  UserPoolId  */
	public var userPoolId: String? = nil
	/**  AwsRegion  */
	public var awsRegion: String? = nil
	/**  appClientId  */
	public var appClientId: String? = nil
	/**  legacyEndPoint  */
	public var legacyEndPoint: String? = nil
	/**  endPoint  */
	public var endPoint: String? = nil
	/**  thingName  */
	public var thingName: String? = nil
	/**  thingArn  */
	public var thingArn: String? = nil
	/**  thingId  */
	public var thingId: String? = nil
	/**  username  */
	public var username: String? = nil
	/**  password  */
	public var password: String? = nil
	/**  topics  */
	public var topics: String? = nil
	/**  status  */
	public var status: String? = nil
	/**  message  */
	public var message: String? = nil


	public func setMultiRequestToken(identityPoolId: String) {
		self.dict["identityPoolId"] = identityPoolId
	}
	
	public func setMultiRequestToken(userPoolId: String) {
		self.dict["userPoolId"] = userPoolId
	}
	
	public func setMultiRequestToken(awsRegion: String) {
		self.dict["awsRegion"] = awsRegion
	}
	
	public func setMultiRequestToken(appClientId: String) {
		self.dict["appClientId"] = appClientId
	}
	
	public func setMultiRequestToken(legacyEndPoint: String) {
		self.dict["legacyEndPoint"] = legacyEndPoint
	}
	
	public func setMultiRequestToken(endPoint: String) {
		self.dict["endPoint"] = endPoint
	}
	
	public func setMultiRequestToken(thingName: String) {
		self.dict["thingName"] = thingName
	}
	
	public func setMultiRequestToken(thingArn: String) {
		self.dict["thingArn"] = thingArn
	}
	
	public func setMultiRequestToken(thingId: String) {
		self.dict["thingId"] = thingId
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(topics: String) {
		self.dict["topics"] = topics
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["identityPoolId"] != nil {
			identityPoolId = dict["identityPoolId"] as? String
		}
		if dict["userPoolId"] != nil {
			userPoolId = dict["userPoolId"] as? String
		}
		if dict["awsRegion"] != nil {
			awsRegion = dict["awsRegion"] as? String
		}
		if dict["appClientId"] != nil {
			appClientId = dict["appClientId"] as? String
		}
		if dict["legacyEndPoint"] != nil {
			legacyEndPoint = dict["legacyEndPoint"] as? String
		}
		if dict["endPoint"] != nil {
			endPoint = dict["endPoint"] as? String
		}
		if dict["thingName"] != nil {
			thingName = dict["thingName"] as? String
		}
		if dict["thingArn"] != nil {
			thingArn = dict["thingArn"] as? String
		}
		if dict["thingId"] != nil {
			thingId = dict["thingId"] as? String
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["topics"] != nil {
			topics = dict["topics"] as? String
		}
		if dict["status"] != nil {
			status = dict["status"] as? String
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(identityPoolId != nil) {
			dict["identityPoolId"] = identityPoolId!
		}
		if(userPoolId != nil) {
			dict["userPoolId"] = userPoolId!
		}
		if(awsRegion != nil) {
			dict["awsRegion"] = awsRegion!
		}
		if(appClientId != nil) {
			dict["appClientId"] = appClientId!
		}
		if(legacyEndPoint != nil) {
			dict["legacyEndPoint"] = legacyEndPoint!
		}
		if(endPoint != nil) {
			dict["endPoint"] = endPoint!
		}
		if(thingName != nil) {
			dict["thingName"] = thingName!
		}
		if(thingArn != nil) {
			dict["thingArn"] = thingArn!
		}
		if(thingId != nil) {
			dict["thingId"] = thingId!
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(topics != nil) {
			dict["topics"] = topics!
		}
		if(status != nil) {
			dict["status"] = status!
		}
		if(message != nil) {
			dict["message"] = message!
		}
		return dict
	}
}

