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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Payment gateway profile  */
open class PaymentGatewayProfile: PaymentGatewayBaseProfile {

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


	internal override func populate(_ dict: [String: Any]) throws {
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

	}

	public override func toDictionary() -> [String: Any] {
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
			dict["paymentGatewaySettings"] = paymentGatewaySettings!.map { key, value in (key, value.toDictionary()) }
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
		return dict
	}
}

