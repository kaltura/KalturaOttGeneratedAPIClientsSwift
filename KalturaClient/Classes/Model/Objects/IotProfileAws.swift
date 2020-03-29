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

/**  kalturaIotProfileAws  */
open class IotProfileAws: CrudObject {

	public class IotProfileAwsTokenizer: CrudObject.CrudObjectTokenizer {
		
		public var iotEndPoint: BaseTokenizedObject {
			get {
				return self.append("iotEndPoint") 
			}
		}
		
		public var pfxPath: BaseTokenizedObject {
			get {
				return self.append("pfxPath") 
			}
		}
		
		public var pfxPassword: BaseTokenizedObject {
			get {
				return self.append("pfxPassword") 
			}
		}
		
		public var certificatePath: BaseTokenizedObject {
			get {
				return self.append("certificatePath") 
			}
		}
		
		public var brokerPort: BaseTokenizedObject {
			get {
				return self.append("brokerPort") 
			}
		}
		
		public var accessKeyId: BaseTokenizedObject {
			get {
				return self.append("accessKeyId") 
			}
		}
		
		public var secretAccessKey: BaseTokenizedObject {
			get {
				return self.append("secretAccessKey") 
			}
		}
		
		public var tTL: BaseTokenizedObject {
			get {
				return self.append("tTL") 
			}
		}
		
		public var iotPolicyName: BaseTokenizedObject {
			get {
				return self.append("iotPolicyName") 
			}
		}
		
		public var userPoolId: BaseTokenizedObject {
			get {
				return self.append("userPoolId") 
			}
		}
		
		public var clientId: BaseTokenizedObject {
			get {
				return self.append("clientId") 
			}
		}
		
		public var identityPoolId: BaseTokenizedObject {
			get {
				return self.append("identityPoolId") 
			}
		}
		
		public var region: BaseTokenizedObject {
			get {
				return self.append("region") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
	}

	/**  iotEndPoint  */
	public var iotEndPoint: String? = nil
	/**  pfxPath  */
	public var pfxPath: String? = nil
	/**  pfxPassword  */
	public var pfxPassword: String? = nil
	/**  certificatePath  */
	public var certificatePath: String? = nil
	/**  brokerPort  */
	public var brokerPort: Int? = nil
	/**  accessKeyId  */
	public var accessKeyId: String? = nil
	/**  secretAccessKey  */
	public var secretAccessKey: String? = nil
	/**  tTL  */
	public var tTL: String? = nil
	/**  iotPolicyName  */
	public var iotPolicyName: String? = nil
	/**  userPoolId  */
	public var userPoolId: String? = nil
	/**  clientId  */
	public var clientId: String? = nil
	/**  identityPoolId  */
	public var identityPoolId: String? = nil
	/**  region  */
	public var region: String? = nil
	/**  updateDate  */
	public var updateDate: Int64? = nil


	public func setMultiRequestToken(iotEndPoint: String) {
		self.dict["iotEndPoint"] = iotEndPoint
	}
	
	public func setMultiRequestToken(pfxPath: String) {
		self.dict["pfxPath"] = pfxPath
	}
	
	public func setMultiRequestToken(pfxPassword: String) {
		self.dict["pfxPassword"] = pfxPassword
	}
	
	public func setMultiRequestToken(certificatePath: String) {
		self.dict["certificatePath"] = certificatePath
	}
	
	public func setMultiRequestToken(brokerPort: String) {
		self.dict["brokerPort"] = brokerPort
	}
	
	public func setMultiRequestToken(accessKeyId: String) {
		self.dict["accessKeyId"] = accessKeyId
	}
	
	public func setMultiRequestToken(secretAccessKey: String) {
		self.dict["secretAccessKey"] = secretAccessKey
	}
	
	public func setMultiRequestToken(tTL: String) {
		self.dict["tTL"] = tTL
	}
	
	public func setMultiRequestToken(iotPolicyName: String) {
		self.dict["iotPolicyName"] = iotPolicyName
	}
	
	public func setMultiRequestToken(userPoolId: String) {
		self.dict["userPoolId"] = userPoolId
	}
	
	public func setMultiRequestToken(clientId: String) {
		self.dict["clientId"] = clientId
	}
	
	public func setMultiRequestToken(identityPoolId: String) {
		self.dict["identityPoolId"] = identityPoolId
	}
	
	public func setMultiRequestToken(region: String) {
		self.dict["region"] = region
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["iotEndPoint"] != nil {
			iotEndPoint = dict["iotEndPoint"] as? String
		}
		if dict["pfxPath"] != nil {
			pfxPath = dict["pfxPath"] as? String
		}
		if dict["pfxPassword"] != nil {
			pfxPassword = dict["pfxPassword"] as? String
		}
		if dict["certificatePath"] != nil {
			certificatePath = dict["certificatePath"] as? String
		}
		if dict["brokerPort"] != nil {
			brokerPort = dict["brokerPort"] as? Int
		}
		if dict["accessKeyId"] != nil {
			accessKeyId = dict["accessKeyId"] as? String
		}
		if dict["secretAccessKey"] != nil {
			secretAccessKey = dict["secretAccessKey"] as? String
		}
		if dict["tTL"] != nil {
			tTL = dict["tTL"] as? String
		}
		if dict["iotPolicyName"] != nil {
			iotPolicyName = dict["iotPolicyName"] as? String
		}
		if dict["userPoolId"] != nil {
			userPoolId = dict["userPoolId"] as? String
		}
		if dict["clientId"] != nil {
			clientId = dict["clientId"] as? String
		}
		if dict["identityPoolId"] != nil {
			identityPoolId = dict["identityPoolId"] as? String
		}
		if dict["region"] != nil {
			region = dict["region"] as? String
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(iotEndPoint != nil) {
			dict["iotEndPoint"] = iotEndPoint!
		}
		if(pfxPath != nil) {
			dict["pfxPath"] = pfxPath!
		}
		if(pfxPassword != nil) {
			dict["pfxPassword"] = pfxPassword!
		}
		if(certificatePath != nil) {
			dict["certificatePath"] = certificatePath!
		}
		if(brokerPort != nil) {
			dict["brokerPort"] = brokerPort!
		}
		if(accessKeyId != nil) {
			dict["accessKeyId"] = accessKeyId!
		}
		if(secretAccessKey != nil) {
			dict["secretAccessKey"] = secretAccessKey!
		}
		if(tTL != nil) {
			dict["tTL"] = tTL!
		}
		if(iotPolicyName != nil) {
			dict["iotPolicyName"] = iotPolicyName!
		}
		if(userPoolId != nil) {
			dict["userPoolId"] = userPoolId!
		}
		if(clientId != nil) {
			dict["clientId"] = clientId!
		}
		if(identityPoolId != nil) {
			dict["identityPoolId"] = identityPoolId!
		}
		if(region != nil) {
			dict["region"] = region!
		}
		if(updateDate != nil) {
			dict["updateDate"] = updateDate!
		}
		return dict
	}
}

