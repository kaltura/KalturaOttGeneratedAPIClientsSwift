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

open class TransactionStatus: ObjectBase {

	public class TransactionStatusTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var adapterTransactionStatus: BaseTokenizedObject {
			get {
				return self.append("adapterTransactionStatus") 
			}
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var externalStatus: BaseTokenizedObject {
			get {
				return self.append("externalStatus") 
			}
		}
		
		public var externalMessage: BaseTokenizedObject {
			get {
				return self.append("externalMessage") 
			}
		}
		
		public var failReason: BaseTokenizedObject {
			get {
				return self.append("failReason") 
			}
		}
	}

	/**  Payment gateway adapter application state for the transaction to update  */
	public var adapterTransactionStatus: TransactionAdapterStatus? = nil
	/**  External transaction identifier  */
	public var externalId: String? = nil
	/**  Payment gateway transaction status  */
	public var externalStatus: String? = nil
	/**  Payment gateway message  */
	public var externalMessage: String? = nil
	/**  The reason the transaction failed  */
	public var failReason: Int? = nil


	public func setMultiRequestToken(adapterTransactionStatus: String) {
		self.dict["adapterTransactionStatus"] = adapterTransactionStatus
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(externalStatus: String) {
		self.dict["externalStatus"] = externalStatus
	}
	
	public func setMultiRequestToken(externalMessage: String) {
		self.dict["externalMessage"] = externalMessage
	}
	
	public func setMultiRequestToken(failReason: String) {
		self.dict["failReason"] = failReason
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["adapterTransactionStatus"] != nil {
			adapterTransactionStatus = TransactionAdapterStatus(rawValue: "\(dict["adapterTransactionStatus"]!)")
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["externalStatus"] != nil {
			externalStatus = dict["externalStatus"] as? String
		}
		if dict["externalMessage"] != nil {
			externalMessage = dict["externalMessage"] as? String
		}
		if dict["failReason"] != nil {
			failReason = dict["failReason"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(adapterTransactionStatus != nil) {
			dict["adapterTransactionStatus"] = adapterTransactionStatus!.rawValue
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(externalStatus != nil) {
			dict["externalStatus"] = externalStatus!
		}
		if(externalMessage != nil) {
			dict["externalMessage"] = externalMessage!
		}
		if(failReason != nil) {
			dict["failReason"] = failReason!
		}
		return dict
	}
}

