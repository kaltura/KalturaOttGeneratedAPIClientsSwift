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
		
		public var announcementTopic: BaseTokenizedObject {
			get {
				return self.append("announcementTopic") 
			}
		}
		
		public func credentialsProvider<T: CredentialsProvider.CredentialsProviderTokenizer>() -> T {
			return T(self.append("credentialsProvider"))
		}
		
		public func cognitoUserPool<T: CognitoUserPool.CognitoUserPoolTokenizer>() -> T {
			return T(self.append("cognitoUserPool"))
		}
		
		public var json: BaseTokenizedObject {
			get {
				return self.append("json") 
			}
		}
	}

	/**  announcementTopic  */
	public var announcementTopic: String? = nil
	/**  KalturaCredentialsProvider  */
	public var credentialsProvider: CredentialsProvider? = nil
	/**  CognitoUserPool  */
	public var cognitoUserPool: CognitoUserPool? = nil
	/**  json  */
	public var json: String? = nil


	public func setMultiRequestToken(announcementTopic: String) {
		self.dict["announcementTopic"] = announcementTopic
	}
	
	public func setMultiRequestToken(json: String) {
		self.dict["json"] = json
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["announcementTopic"] != nil {
			announcementTopic = dict["announcementTopic"] as? String
		}
		if dict["credentialsProvider"] != nil {
		credentialsProvider = try JSONParser.parse(object: dict["credentialsProvider"] as! [String: Any])		}
		if dict["cognitoUserPool"] != nil {
		cognitoUserPool = try JSONParser.parse(object: dict["cognitoUserPool"] as! [String: Any])		}
		if dict["json"] != nil {
			json = dict["json"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(announcementTopic != nil) {
			dict["announcementTopic"] = announcementTopic!
		}
		if(credentialsProvider != nil) {
			dict["credentialsProvider"] = credentialsProvider!.toDictionary()
		}
		if(cognitoUserPool != nil) {
			dict["cognitoUserPool"] = cognitoUserPool!.toDictionary()
		}
		if(json != nil) {
			dict["json"] = json!
		}
		return dict
	}
}

