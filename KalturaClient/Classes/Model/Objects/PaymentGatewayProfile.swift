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

/**  Payment gateway profile  */
open class PaymentGatewayProfile: PaymentGatewayBaseProfile {

	public class PaymentGatewayProfileTokenizer: PaymentGatewayBaseProfile.PaymentGatewayBaseProfileTokenizer {
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public var adapterUrl: BaseTokenizedObject {
			get {
				return self.append("adapterUrl") 
			}
		}
		
		public var transactUrl: BaseTokenizedObject {
			get {
				return self.append("transactUrl") 
			}
		}
		
		public var statusUrl: BaseTokenizedObject {
			get {
				return self.append("statusUrl") 
			}
		}
		
		public var renewUrl: BaseTokenizedObject {
			get {
				return self.append("renewUrl") 
			}
		}
		
		public var paymentGatewaySettings: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("paymentGatewaySettings"))
			}
		}
		
		public var externalIdentifier: BaseTokenizedObject {
			get {
				return self.append("externalIdentifier") 
			}
		}
		
		public var pendingInterval: BaseTokenizedObject {
			get {
				return self.append("pendingInterval") 
			}
		}
		
		public var pendingRetries: BaseTokenizedObject {
			get {
				return self.append("pendingRetries") 
			}
		}
		
		public var sharedSecret: BaseTokenizedObject {
			get {
				return self.append("sharedSecret") 
			}
		}
		
		public var renewIntervalMinutes: BaseTokenizedObject {
			get {
				return self.append("renewIntervalMinutes") 
			}
		}
		
		public var renewStartMinutes: BaseTokenizedObject {
			get {
				return self.append("renewStartMinutes") 
			}
		}
		
		public var externalVerification: BaseTokenizedObject {
			get {
				return self.append("externalVerification") 
			}
		}
	}

	/**  Payment gateway is active status  */
	public var isActive: Int? = nil
	/**  Payment gateway adapter URL  */
	public var adapterUrl: String? = nil
	/**  Payment gateway transact URL  */
	public var transactUrl: String? = nil
	/**  Payment gateway status URL  */
	public var statusUrl: String? = nil
	/**  Payment gateway renew URL  */
	public var renewUrl: String? = nil
	/**  Payment gateway extra parameters  */
	public var paymentGatewaySettings: Dictionary<String, StringValue>? = nil
	/**  Payment gateway external identifier  */
	public var externalIdentifier: String? = nil
	/**  Pending Interval in minutes  */
	public var pendingInterval: Int? = nil
	/**  Pending Retries  */
	public var pendingRetries: Int? = nil
	/**  Shared Secret  */
	public var sharedSecret: String? = nil
	/**  Renew Interval Minutes  */
	public var renewIntervalMinutes: Int? = nil
	/**  Renew Start Minutes  */
	public var renewStartMinutes: Int? = nil
	/**  Payment gateway external verification  */
	public var externalVerification: Bool? = nil


	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(adapterUrl: String) {
		self.dict["adapterUrl"] = adapterUrl
	}
	
	public func setMultiRequestToken(transactUrl: String) {
		self.dict["transactUrl"] = transactUrl
	}
	
	public func setMultiRequestToken(statusUrl: String) {
		self.dict["statusUrl"] = statusUrl
	}
	
	public func setMultiRequestToken(renewUrl: String) {
		self.dict["renewUrl"] = renewUrl
	}
	
	public func setMultiRequestToken(externalIdentifier: String) {
		self.dict["externalIdentifier"] = externalIdentifier
	}
	
	public func setMultiRequestToken(pendingInterval: String) {
		self.dict["pendingInterval"] = pendingInterval
	}
	
	public func setMultiRequestToken(pendingRetries: String) {
		self.dict["pendingRetries"] = pendingRetries
	}
	
	public func setMultiRequestToken(sharedSecret: String) {
		self.dict["sharedSecret"] = sharedSecret
	}
	
	public func setMultiRequestToken(renewIntervalMinutes: String) {
		self.dict["renewIntervalMinutes"] = renewIntervalMinutes
	}
	
	public func setMultiRequestToken(renewStartMinutes: String) {
		self.dict["renewStartMinutes"] = renewStartMinutes
	}
	
	public func setMultiRequestToken(externalVerification: String) {
		self.dict["externalVerification"] = externalVerification
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Int
		}
		if dict["adapterUrl"] != nil {
			adapterUrl = dict["adapterUrl"] as? String
		}
		if dict["transactUrl"] != nil {
			transactUrl = dict["transactUrl"] as? String
		}
		if dict["statusUrl"] != nil {
			statusUrl = dict["statusUrl"] as? String
		}
		if dict["renewUrl"] != nil {
			renewUrl = dict["renewUrl"] as? String
		}
		if dict["paymentGatewaySettings"] != nil {
			paymentGatewaySettings = try JSONParser.parse(map: dict["paymentGatewaySettings"] as! [String: Any])
		}
		if dict["externalIdentifier"] != nil {
			externalIdentifier = dict["externalIdentifier"] as? String
		}
		if dict["pendingInterval"] != nil {
			pendingInterval = dict["pendingInterval"] as? Int
		}
		if dict["pendingRetries"] != nil {
			pendingRetries = dict["pendingRetries"] as? Int
		}
		if dict["sharedSecret"] != nil {
			sharedSecret = dict["sharedSecret"] as? String
		}
		if dict["renewIntervalMinutes"] != nil {
			renewIntervalMinutes = dict["renewIntervalMinutes"] as? Int
		}
		if dict["renewStartMinutes"] != nil {
			renewStartMinutes = dict["renewStartMinutes"] as? Int
		}
		if dict["externalVerification"] != nil {
			externalVerification = dict["externalVerification"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(adapterUrl != nil) {
			dict["adapterUrl"] = adapterUrl!
		}
		if(transactUrl != nil) {
			dict["transactUrl"] = transactUrl!
		}
		if(statusUrl != nil) {
			dict["statusUrl"] = statusUrl!
		}
		if(renewUrl != nil) {
			dict["renewUrl"] = renewUrl!
		}
		if(paymentGatewaySettings != nil) {
			dict["paymentGatewaySettings"] = paymentGatewaySettings!.toDictionary()
		}
		if(externalIdentifier != nil) {
			dict["externalIdentifier"] = externalIdentifier!
		}
		if(pendingInterval != nil) {
			dict["pendingInterval"] = pendingInterval!
		}
		if(pendingRetries != nil) {
			dict["pendingRetries"] = pendingRetries!
		}
		if(sharedSecret != nil) {
			dict["sharedSecret"] = sharedSecret!
		}
		if(renewIntervalMinutes != nil) {
			dict["renewIntervalMinutes"] = renewIntervalMinutes!
		}
		if(renewStartMinutes != nil) {
			dict["renewStartMinutes"] = renewStartMinutes!
		}
		if(externalVerification != nil) {
			dict["externalVerification"] = externalVerification!
		}
		return dict
	}
}

