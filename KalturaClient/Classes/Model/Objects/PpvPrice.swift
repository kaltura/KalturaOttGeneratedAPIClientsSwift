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

/**  PPV price details  */
open class PpvPrice: ProductPrice {

	public class PpvPriceTokenizer: ProductPrice.ProductPriceTokenizer {
		
		public var fileId: BaseTokenizedObject {
			get {
				return self.append("fileId") 
			}
		}
		
		public var ppvModuleId: BaseTokenizedObject {
			get {
				return self.append("ppvModuleId") 
			}
		}
		
		public var isSubscriptionOnly: BaseTokenizedObject {
			get {
				return self.append("isSubscriptionOnly") 
			}
		}
		
		public func fullPrice<T: Price.PriceTokenizer>() -> T {
			return T(self.append("fullPrice"))
		}
		
		public var subscriptionId: BaseTokenizedObject {
			get {
				return self.append("subscriptionId") 
			}
		}
		
		public var collectionId: BaseTokenizedObject {
			get {
				return self.append("collectionId") 
			}
		}
		
		public var prePaidId: BaseTokenizedObject {
			get {
				return self.append("prePaidId") 
			}
		}
		
		public var ppvDescriptions: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("ppvDescriptions"))
			} 
		}
		
		public var purchaseUserId: BaseTokenizedObject {
			get {
				return self.append("purchaseUserId") 
			}
		}
		
		public var purchasedMediaFileId: BaseTokenizedObject {
			get {
				return self.append("purchasedMediaFileId") 
			}
		}
		
		public var relatedMediaFileIds: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("relatedMediaFileIds"))
			} 
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var discountEndDate: BaseTokenizedObject {
			get {
				return self.append("discountEndDate") 
			}
		}
		
		public var firstDeviceName: BaseTokenizedObject {
			get {
				return self.append("firstDeviceName") 
			}
		}
		
		public var isInCancelationPeriod: BaseTokenizedObject {
			get {
				return self.append("isInCancelationPeriod") 
			}
		}
		
		public var ppvProductCode: BaseTokenizedObject {
			get {
				return self.append("ppvProductCode") 
			}
		}
	}

	/**  Media file identifier  */
	public var fileId: Int? = nil
	/**  The associated PPV module identifier  */
	public var ppvModuleId: String? = nil
	/**  Denotes whether this object is available only as part of a subscription or can
	  be sold separately  */
	public var isSubscriptionOnly: Bool? = nil
	/**  The full price of the item (with no discounts)  */
	public var fullPrice: Price? = nil
	/**  The identifier of the relevant subscription  */
	public var subscriptionId: String? = nil
	/**  The identifier of the relevant collection  */
	public var collectionId: String? = nil
	/**  The identifier of the relevant pre paid  */
	public var prePaidId: String? = nil
	/**  A list of the descriptions of the PPV module on different languages (language
	  code and translation)  */
	public var ppvDescriptions: Array<TranslationToken>? = nil
	/**  If the item already purchased - the identifier of the user (in the household)
	  who purchased this item  */
	public var purchaseUserId: String? = nil
	/**  If the item already purchased - the identifier of the purchased file  */
	public var purchasedMediaFileId: Int? = nil
	/**  Related media files identifiers (different types)  */
	public var relatedMediaFileIds: Array<IntegerValue>? = nil
	/**  If the item already purchased - since when the user can start watching the item  */
	public var startDate: Int64? = nil
	/**  If the item already purchased - until when the user can watch the item  */
	public var endDate: Int64? = nil
	/**  Discount end date  */
	public var discountEndDate: Int64? = nil
	/**  If the item already purchased and played - the name of the device on which it
	  was first played  */
	public var firstDeviceName: String? = nil
	/**  If waiver period is enabled - donates whether the user is still in the
	  cancelation window  */
	public var isInCancelationPeriod: Bool? = nil
	/**  The PPV product code  */
	public var ppvProductCode: String? = nil


	public func setMultiRequestToken(fileId: String) {
		self.dict["fileId"] = fileId
	}
	
	public func setMultiRequestToken(ppvModuleId: String) {
		self.dict["ppvModuleId"] = ppvModuleId
	}
	
	public func setMultiRequestToken(isSubscriptionOnly: String) {
		self.dict["isSubscriptionOnly"] = isSubscriptionOnly
	}
	
	public func setMultiRequestToken(subscriptionId: String) {
		self.dict["subscriptionId"] = subscriptionId
	}
	
	public func setMultiRequestToken(collectionId: String) {
		self.dict["collectionId"] = collectionId
	}
	
	public func setMultiRequestToken(prePaidId: String) {
		self.dict["prePaidId"] = prePaidId
	}
	
	public func setMultiRequestToken(purchaseUserId: String) {
		self.dict["purchaseUserId"] = purchaseUserId
	}
	
	public func setMultiRequestToken(purchasedMediaFileId: String) {
		self.dict["purchasedMediaFileId"] = purchasedMediaFileId
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(discountEndDate: String) {
		self.dict["discountEndDate"] = discountEndDate
	}
	
	public func setMultiRequestToken(firstDeviceName: String) {
		self.dict["firstDeviceName"] = firstDeviceName
	}
	
	public func setMultiRequestToken(isInCancelationPeriod: String) {
		self.dict["isInCancelationPeriod"] = isInCancelationPeriod
	}
	
	public func setMultiRequestToken(ppvProductCode: String) {
		self.dict["ppvProductCode"] = ppvProductCode
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fileId"] != nil {
			fileId = dict["fileId"] as? Int
		}
		if dict["ppvModuleId"] != nil {
			ppvModuleId = dict["ppvModuleId"] as? String
		}
		if dict["isSubscriptionOnly"] != nil {
			isSubscriptionOnly = dict["isSubscriptionOnly"] as? Bool
		}
		if dict["fullPrice"] != nil {
		fullPrice = try JSONParser.parse(object: dict["fullPrice"] as! [String: Any])		}
		if dict["subscriptionId"] != nil {
			subscriptionId = dict["subscriptionId"] as? String
		}
		if dict["collectionId"] != nil {
			collectionId = dict["collectionId"] as? String
		}
		if dict["prePaidId"] != nil {
			prePaidId = dict["prePaidId"] as? String
		}
		if dict["ppvDescriptions"] != nil {
			ppvDescriptions = try JSONParser.parse(array: dict["ppvDescriptions"] as! [Any])
		}
		if dict["purchaseUserId"] != nil {
			purchaseUserId = dict["purchaseUserId"] as? String
		}
		if dict["purchasedMediaFileId"] != nil {
			purchasedMediaFileId = dict["purchasedMediaFileId"] as? Int
		}
		if dict["relatedMediaFileIds"] != nil {
			relatedMediaFileIds = try JSONParser.parse(array: dict["relatedMediaFileIds"] as! [Any])
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["discountEndDate"] != nil {
			discountEndDate = Int64("\(dict["discountEndDate"]!)")
		}
		if dict["firstDeviceName"] != nil {
			firstDeviceName = dict["firstDeviceName"] as? String
		}
		if dict["isInCancelationPeriod"] != nil {
			isInCancelationPeriod = dict["isInCancelationPeriod"] as? Bool
		}
		if dict["ppvProductCode"] != nil {
			ppvProductCode = dict["ppvProductCode"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileId != nil) {
			dict["fileId"] = fileId!
		}
		if(ppvModuleId != nil) {
			dict["ppvModuleId"] = ppvModuleId!
		}
		if(isSubscriptionOnly != nil) {
			dict["isSubscriptionOnly"] = isSubscriptionOnly!
		}
		if(fullPrice != nil) {
			dict["fullPrice"] = fullPrice!.toDictionary()
		}
		if(subscriptionId != nil) {
			dict["subscriptionId"] = subscriptionId!
		}
		if(collectionId != nil) {
			dict["collectionId"] = collectionId!
		}
		if(prePaidId != nil) {
			dict["prePaidId"] = prePaidId!
		}
		if(ppvDescriptions != nil) {
			dict["ppvDescriptions"] = ppvDescriptions!.map { value in value.toDictionary() }
		}
		if(purchaseUserId != nil) {
			dict["purchaseUserId"] = purchaseUserId!
		}
		if(purchasedMediaFileId != nil) {
			dict["purchasedMediaFileId"] = purchasedMediaFileId!
		}
		if(relatedMediaFileIds != nil) {
			dict["relatedMediaFileIds"] = relatedMediaFileIds!.map { value in value.toDictionary() }
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(discountEndDate != nil) {
			dict["discountEndDate"] = discountEndDate!
		}
		if(firstDeviceName != nil) {
			dict["firstDeviceName"] = firstDeviceName!
		}
		if(isInCancelationPeriod != nil) {
			dict["isInCancelationPeriod"] = isInCancelationPeriod!
		}
		if(ppvProductCode != nil) {
			dict["ppvProductCode"] = ppvProductCode!
		}
		return dict
	}
}

