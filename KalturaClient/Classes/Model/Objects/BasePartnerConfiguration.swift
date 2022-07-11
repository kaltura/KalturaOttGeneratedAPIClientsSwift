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

open class BasePartnerConfiguration: PartnerConfiguration {

	public class BasePartnerConfigurationTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var ksExpirationSeconds: BaseTokenizedObject {
			get {
				return self.append("ksExpirationSeconds") 
			}
		}
		
		public var appTokenSessionMaxDurationSeconds: BaseTokenizedObject {
			get {
				return self.append("appTokenSessionMaxDurationSeconds") 
			}
		}
		
		public var anonymousKSExpirationSeconds: BaseTokenizedObject {
			get {
				return self.append("anonymousKSExpirationSeconds") 
			}
		}
		
		public var refreshExpirationForPinLoginSeconds: BaseTokenizedObject {
			get {
				return self.append("refreshExpirationForPinLoginSeconds") 
			}
		}
		
		public var appTokenMaxExpirySeconds: BaseTokenizedObject {
			get {
				return self.append("appTokenMaxExpirySeconds") 
			}
		}
		
		public var autoRefreshAppToken: BaseTokenizedObject {
			get {
				return self.append("autoRefreshAppToken") 
			}
		}
		
		public var uploadTokenExpirySeconds: BaseTokenizedObject {
			get {
				return self.append("uploadTokenExpirySeconds") 
			}
		}
		
		public var apptokenUserValidationDisabled: BaseTokenizedObject {
			get {
				return self.append("apptokenUserValidationDisabled") 
			}
		}
	}

	/**  KSExpirationSeconds  */
	public var ksExpirationSeconds: Int64? = nil
	/**  AppTokenSessionMaxDurationSeconds  */
	public var appTokenSessionMaxDurationSeconds: Int? = nil
	/**  AnonymousKSExpirationSeconds  */
	public var anonymousKSExpirationSeconds: Int64? = nil
	/**  RefreshExpirationForPinLoginSeconds  */
	public var refreshExpirationForPinLoginSeconds: Int64? = nil
	/**  AppTokenMaxExpirySeconds  */
	public var appTokenMaxExpirySeconds: Int? = nil
	/**  AutoRefreshAppToken  */
	public var autoRefreshAppToken: Bool? = nil
	/**  uploadTokenExpirySeconds  */
	public var uploadTokenExpirySeconds: Int? = nil
	/**  apptokenUserValidationDisabled  */
	public var apptokenUserValidationDisabled: Bool? = nil


	public func setMultiRequestToken(ksExpirationSeconds: String) {
		self.dict["ksExpirationSeconds"] = ksExpirationSeconds
	}
	
	public func setMultiRequestToken(appTokenSessionMaxDurationSeconds: String) {
		self.dict["appTokenSessionMaxDurationSeconds"] = appTokenSessionMaxDurationSeconds
	}
	
	public func setMultiRequestToken(anonymousKSExpirationSeconds: String) {
		self.dict["anonymousKSExpirationSeconds"] = anonymousKSExpirationSeconds
	}
	
	public func setMultiRequestToken(refreshExpirationForPinLoginSeconds: String) {
		self.dict["refreshExpirationForPinLoginSeconds"] = refreshExpirationForPinLoginSeconds
	}
	
	public func setMultiRequestToken(appTokenMaxExpirySeconds: String) {
		self.dict["appTokenMaxExpirySeconds"] = appTokenMaxExpirySeconds
	}
	
	public func setMultiRequestToken(autoRefreshAppToken: String) {
		self.dict["autoRefreshAppToken"] = autoRefreshAppToken
	}
	
	public func setMultiRequestToken(uploadTokenExpirySeconds: String) {
		self.dict["uploadTokenExpirySeconds"] = uploadTokenExpirySeconds
	}
	
	public func setMultiRequestToken(apptokenUserValidationDisabled: String) {
		self.dict["apptokenUserValidationDisabled"] = apptokenUserValidationDisabled
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ksExpirationSeconds"] != nil {
			ksExpirationSeconds = Int64("\(dict["ksExpirationSeconds"]!)")
		}
		if dict["appTokenSessionMaxDurationSeconds"] != nil {
			appTokenSessionMaxDurationSeconds = dict["appTokenSessionMaxDurationSeconds"] as? Int
		}
		if dict["anonymousKSExpirationSeconds"] != nil {
			anonymousKSExpirationSeconds = Int64("\(dict["anonymousKSExpirationSeconds"]!)")
		}
		if dict["refreshExpirationForPinLoginSeconds"] != nil {
			refreshExpirationForPinLoginSeconds = Int64("\(dict["refreshExpirationForPinLoginSeconds"]!)")
		}
		if dict["appTokenMaxExpirySeconds"] != nil {
			appTokenMaxExpirySeconds = dict["appTokenMaxExpirySeconds"] as? Int
		}
		if dict["autoRefreshAppToken"] != nil {
			autoRefreshAppToken = dict["autoRefreshAppToken"] as? Bool
		}
		if dict["uploadTokenExpirySeconds"] != nil {
			uploadTokenExpirySeconds = dict["uploadTokenExpirySeconds"] as? Int
		}
		if dict["apptokenUserValidationDisabled"] != nil {
			apptokenUserValidationDisabled = dict["apptokenUserValidationDisabled"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ksExpirationSeconds != nil) {
			dict["ksExpirationSeconds"] = ksExpirationSeconds!
		}
		if(appTokenSessionMaxDurationSeconds != nil) {
			dict["appTokenSessionMaxDurationSeconds"] = appTokenSessionMaxDurationSeconds!
		}
		if(anonymousKSExpirationSeconds != nil) {
			dict["anonymousKSExpirationSeconds"] = anonymousKSExpirationSeconds!
		}
		if(refreshExpirationForPinLoginSeconds != nil) {
			dict["refreshExpirationForPinLoginSeconds"] = refreshExpirationForPinLoginSeconds!
		}
		if(appTokenMaxExpirySeconds != nil) {
			dict["appTokenMaxExpirySeconds"] = appTokenMaxExpirySeconds!
		}
		if(autoRefreshAppToken != nil) {
			dict["autoRefreshAppToken"] = autoRefreshAppToken!
		}
		if(uploadTokenExpirySeconds != nil) {
			dict["uploadTokenExpirySeconds"] = uploadTokenExpirySeconds!
		}
		if(apptokenUserValidationDisabled != nil) {
			dict["apptokenUserValidationDisabled"] = apptokenUserValidationDisabled!
		}
		return dict
	}
}

