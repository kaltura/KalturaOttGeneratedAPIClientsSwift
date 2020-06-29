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

/**  PPV details  */
open class Ppv: ObjectBase {

	public class PpvTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public func price<T: PriceDetails.PriceDetailsTokenizer>() -> T {
			return T(self.append("price"))
		}
		
		public var fileTypes: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("fileTypes"))
			} 
		}
		
		public func discountModule<T: DiscountModule.DiscountModuleTokenizer>() -> T {
			return T(self.append("discountModule"))
		}
		
		public func couponsGroup<T: CouponsGroup.CouponsGroupTokenizer>() -> T {
			return T(self.append("couponsGroup"))
		}
		
		public var descriptions: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("descriptions"))
			} 
		}
		
		public var productCode: BaseTokenizedObject {
			get {
				return self.append("productCode") 
			}
		}
		
		public var isSubscriptionOnly: BaseTokenizedObject {
			get {
				return self.append("isSubscriptionOnly") 
			}
		}
		
		public var firstDeviceLimitation: BaseTokenizedObject {
			get {
				return self.append("firstDeviceLimitation") 
			}
		}
		
		public func usageModule<T: UsageModule.UsageModuleTokenizer>() -> T {
			return T(self.append("usageModule"))
		}
	}

	/**  PPV identifier  */
	public var id: String? = nil
	/**  the name for the ppv  */
	public var name: String? = nil
	/**  The price of the ppv  */
	public var price: PriceDetails? = nil
	/**  A list of file types identifiers that are supported in this ppv  */
	public var fileTypes: Array<IntegerValue>? = nil
	/**  The internal discount module for the ppv  */
	public var discountModule: DiscountModule? = nil
	/**  Coupons group for the ppv  */
	public var couponsGroup: CouponsGroup? = nil
	/**  A list of the descriptions of the ppv on different languages (language code and
	  translation)  */
	public var descriptions: Array<TranslationToken>? = nil
	/**  Product code for the ppv  */
	public var productCode: String? = nil
	/**  Indicates whether or not this ppv can be purchased standalone or only as part of
	  a subscription  */
	public var isSubscriptionOnly: Bool? = nil
	/**  Indicates whether or not this ppv can be consumed only on the first device  */
	public var firstDeviceLimitation: Bool? = nil
	/**  PPV usage module  */
	public var usageModule: UsageModule? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(productCode: String) {
		self.dict["productCode"] = productCode
	}
	
	public func setMultiRequestToken(isSubscriptionOnly: String) {
		self.dict["isSubscriptionOnly"] = isSubscriptionOnly
	}
	
	public func setMultiRequestToken(firstDeviceLimitation: String) {
		self.dict["firstDeviceLimitation"] = firstDeviceLimitation
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["price"] != nil {
		price = try JSONParser.parse(object: dict["price"] as! [String: Any])		}
		if dict["fileTypes"] != nil {
			fileTypes = try JSONParser.parse(array: dict["fileTypes"] as! [Any])
		}
		if dict["discountModule"] != nil {
		discountModule = try JSONParser.parse(object: dict["discountModule"] as! [String: Any])		}
		if dict["couponsGroup"] != nil {
		couponsGroup = try JSONParser.parse(object: dict["couponsGroup"] as! [String: Any])		}
		if dict["descriptions"] != nil {
			descriptions = try JSONParser.parse(array: dict["descriptions"] as! [Any])
		}
		if dict["productCode"] != nil {
			productCode = dict["productCode"] as? String
		}
		if dict["isSubscriptionOnly"] != nil {
			isSubscriptionOnly = dict["isSubscriptionOnly"] as? Bool
		}
		if dict["firstDeviceLimitation"] != nil {
			firstDeviceLimitation = dict["firstDeviceLimitation"] as? Bool
		}
		if dict["usageModule"] != nil {
		usageModule = try JSONParser.parse(object: dict["usageModule"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(price != nil) {
			dict["price"] = price!.toDictionary()
		}
		if(fileTypes != nil) {
			dict["fileTypes"] = fileTypes!.map { value in value.toDictionary() }
		}
		if(discountModule != nil) {
			dict["discountModule"] = discountModule!.toDictionary()
		}
		if(couponsGroup != nil) {
			dict["couponsGroup"] = couponsGroup!.toDictionary()
		}
		if(descriptions != nil) {
			dict["descriptions"] = descriptions!.map { value in value.toDictionary() }
		}
		if(productCode != nil) {
			dict["productCode"] = productCode!
		}
		if(isSubscriptionOnly != nil) {
			dict["isSubscriptionOnly"] = isSubscriptionOnly!
		}
		if(firstDeviceLimitation != nil) {
			dict["firstDeviceLimitation"] = firstDeviceLimitation!
		}
		if(usageModule != nil) {
			dict["usageModule"] = usageModule!.toDictionary()
		}
		return dict
	}
}

