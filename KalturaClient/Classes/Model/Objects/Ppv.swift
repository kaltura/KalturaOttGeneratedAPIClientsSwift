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
		
		public var priceDetailsId: BaseTokenizedObject {
			get {
				return self.append("priceDetailsId") 
			}
		}
		
		public var fileTypes: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("fileTypes"))
			} 
		}
		
		public var fileTypesIds: BaseTokenizedObject {
			get {
				return self.append("fileTypesIds") 
			}
		}
		
		public func discountModule<T: DiscountModule.DiscountModuleTokenizer>() -> T {
			return T(self.append("discountModule"))
		}
		
		public var discountId: BaseTokenizedObject {
			get {
				return self.append("discountId") 
			}
		}
		
		public func couponsGroup<T: CouponsGroup.CouponsGroupTokenizer>() -> T {
			return T(self.append("couponsGroup"))
		}
		
		public var couponsGroupId: BaseTokenizedObject {
			get {
				return self.append("couponsGroupId") 
			}
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
		
		public var usageModuleId: BaseTokenizedObject {
			get {
				return self.append("usageModuleId") 
			}
		}
		
		public var adsPolicy: BaseTokenizedObject {
			get {
				return self.append("adsPolicy") 
			}
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var virtualAssetId: BaseTokenizedObject {
			get {
				return self.append("virtualAssetId") 
			}
		}
		
		public var assetUserRuleId: BaseTokenizedObject {
			get {
				return self.append("assetUserRuleId") 
			}
		}
	}

	/**  PPV identifier  */
	public var id: String? = nil
	/**  the name for the ppv  */
	public var name: String? = nil
	/**  This property will deprecated soon. Please use PriceId instead of it.  */
	public var price: PriceDetails? = nil
	/**  The price if of the ppv  */
	public var priceDetailsId: Int? = nil
	/**  This property will deprecated soon. Please use fileTypesIds instead of it.  */
	public var fileTypes: Array<IntegerValue>? = nil
	/**  Comma separated file types identifiers that are supported in this subscription  */
	public var fileTypesIds: String? = nil
	/**  This property will deprecated soon. Please use DiscountId instead of it.  */
	public var discountModule: DiscountModule? = nil
	/**  The discount id for the ppv  */
	public var discountId: Int64? = nil
	/**  This property will deprecated soon. Please use CouponsGroupId instead of it.  */
	public var couponsGroup: CouponsGroup? = nil
	/**  Coupons group id for the ppv  */
	public var couponsGroupId: Int64? = nil
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
	/**  This property will deprecated soon. Please use UsageModuleId instead of it.  */
	public var usageModule: UsageModule? = nil
	/**  PPV usage module Id  */
	public var usageModuleId: Int64? = nil
	/**  adsPolicy  */
	public var adsPolicy: AdsPolicy? = nil
	/**  Is active ppv  */
	public var isActive: Bool? = nil
	/**  Specifies when was the ppv last updated. Date and time represented as epoch.  */
	public var updateDate: Int64? = nil
	/**  Specifies when was the ppv created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Virtual asset id  */
	public var virtualAssetId: Int64? = nil
	/**  Asset user rule identifier  */
	public var assetUserRuleId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(priceDetailsId: String) {
		self.dict["priceDetailsId"] = priceDetailsId
	}
	
	public func setMultiRequestToken(fileTypesIds: String) {
		self.dict["fileTypesIds"] = fileTypesIds
	}
	
	public func setMultiRequestToken(discountId: String) {
		self.dict["discountId"] = discountId
	}
	
	public func setMultiRequestToken(couponsGroupId: String) {
		self.dict["couponsGroupId"] = couponsGroupId
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
	
	public func setMultiRequestToken(usageModuleId: String) {
		self.dict["usageModuleId"] = usageModuleId
	}
	
	public func setMultiRequestToken(adsPolicy: String) {
		self.dict["adsPolicy"] = adsPolicy
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(virtualAssetId: String) {
		self.dict["virtualAssetId"] = virtualAssetId
	}
	
	public func setMultiRequestToken(assetUserRuleId: String) {
		self.dict["assetUserRuleId"] = assetUserRuleId
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
		if dict["priceDetailsId"] != nil {
			priceDetailsId = dict["priceDetailsId"] as? Int
		}
		if dict["fileTypes"] != nil {
			fileTypes = try JSONParser.parse(array: dict["fileTypes"] as! [Any])
		}
		if dict["fileTypesIds"] != nil {
			fileTypesIds = dict["fileTypesIds"] as? String
		}
		if dict["discountModule"] != nil {
		discountModule = try JSONParser.parse(object: dict["discountModule"] as! [String: Any])		}
		if dict["discountId"] != nil {
			discountId = Int64("\(dict["discountId"]!)")
		}
		if dict["couponsGroup"] != nil {
		couponsGroup = try JSONParser.parse(object: dict["couponsGroup"] as! [String: Any])		}
		if dict["couponsGroupId"] != nil {
			couponsGroupId = Int64("\(dict["couponsGroupId"]!)")
		}
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
		if dict["usageModuleId"] != nil {
			usageModuleId = Int64("\(dict["usageModuleId"]!)")
		}
		if dict["adsPolicy"] != nil {
			adsPolicy = AdsPolicy(rawValue: "\(dict["adsPolicy"]!)")
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["virtualAssetId"] != nil {
			virtualAssetId = Int64("\(dict["virtualAssetId"]!)")
		}
		if dict["assetUserRuleId"] != nil {
			assetUserRuleId = Int64("\(dict["assetUserRuleId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(priceDetailsId != nil) {
			dict["priceDetailsId"] = priceDetailsId!
		}
		if(fileTypesIds != nil) {
			dict["fileTypesIds"] = fileTypesIds!
		}
		if(discountId != nil) {
			dict["discountId"] = discountId!
		}
		if(couponsGroupId != nil) {
			dict["couponsGroupId"] = couponsGroupId!
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
		if(usageModuleId != nil) {
			dict["usageModuleId"] = usageModuleId!
		}
		if(adsPolicy != nil) {
			dict["adsPolicy"] = adsPolicy!.rawValue
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(assetUserRuleId != nil) {
			dict["assetUserRuleId"] = assetUserRuleId!
		}
		return dict
	}
}

