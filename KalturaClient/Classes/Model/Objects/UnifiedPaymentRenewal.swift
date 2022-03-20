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

open class UnifiedPaymentRenewal: ObjectBase {

	public class UnifiedPaymentRenewalTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func price<T: Price.PriceTokenizer>() -> T {
			return T(self.append("price"))
		}
		
		public var date: BaseTokenizedObject {
			get {
				return self.append("date") 
			}
		}
		
		public var unifiedPaymentId: BaseTokenizedObject {
			get {
				return self.append("unifiedPaymentId") 
			}
		}
		
		public var entitlements: ArrayTokenizedObject<EntitlementRenewalBase.EntitlementRenewalBaseTokenizer> {
			get {
				return ArrayTokenizedObject<EntitlementRenewalBase.EntitlementRenewalBaseTokenizer>(self.append("entitlements"))
			} 
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Price that is going to be paid on the renewal  */
	public var price: Price? = nil
	/**  Next renewal date  */
	public var date: Int64? = nil
	/**  Unified payment ID  */
	public var unifiedPaymentId: Int64? = nil
	/**  List of entitlements in this unified payment renewal  */
	public var entitlements: Array<EntitlementRenewalBase>? = nil
	/**  User ID  */
	public var userId: Int64? = nil


	public func setMultiRequestToken(date: String) {
		self.dict["date"] = date
	}
	
	public func setMultiRequestToken(unifiedPaymentId: String) {
		self.dict["unifiedPaymentId"] = unifiedPaymentId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["price"] != nil {
		price = try JSONParser.parse(object: dict["price"] as! [String: Any])		}
		if dict["date"] != nil {
			date = Int64("\(dict["date"]!)")
		}
		if dict["unifiedPaymentId"] != nil {
			unifiedPaymentId = Int64("\(dict["unifiedPaymentId"]!)")
		}
		if dict["entitlements"] != nil {
			entitlements = try JSONParser.parse(array: dict["entitlements"] as! [Any])
		}
		if dict["userId"] != nil {
			userId = Int64("\(dict["userId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(price != nil) {
			dict["price"] = price!.toDictionary()
		}
		if(date != nil) {
			dict["date"] = date!
		}
		if(unifiedPaymentId != nil) {
			dict["unifiedPaymentId"] = unifiedPaymentId!
		}
		if(entitlements != nil) {
			dict["entitlements"] = entitlements!.map { value in value.toDictionary() }
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		return dict
	}
}

