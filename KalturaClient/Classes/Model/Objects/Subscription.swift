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

/**  Subscription details  */
open class Subscription: ObjectBase {

	public class SubscriptionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var channels: ArrayTokenizedObject<BaseChannel.BaseChannelTokenizer> {
			get {
				return ArrayTokenizedObject<BaseChannel.BaseChannelTokenizer>(self.append("channels"))
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
		
		public var fileTypes: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("fileTypes"))
			} 
		}
		
		public var isRenewable: BaseTokenizedObject {
			get {
				return self.append("isRenewable") 
			}
		}
		
		public var renewalsNumber: BaseTokenizedObject {
			get {
				return self.append("renewalsNumber") 
			}
		}
		
		public var isInfiniteRenewal: BaseTokenizedObject {
			get {
				return self.append("isInfiniteRenewal") 
			}
		}
		
		public func price<T: PriceDetails.PriceDetailsTokenizer>() -> T {
			return T(self.append("price"))
		}
		
		public func discountModule<T: DiscountModule.DiscountModuleTokenizer>() -> T {
			return T(self.append("discountModule"))
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var multilingualName: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualName"))
			} 
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var multilingualDescription: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualDescription"))
			} 
		}
		
		public var mediaId: BaseTokenizedObject {
			get {
				return self.append("mediaId") 
			}
		}
		
		public var prorityInOrder: BaseTokenizedObject {
			get {
				return self.append("prorityInOrder") 
			}
		}
		
		public var pricePlanIds: BaseTokenizedObject {
			get {
				return self.append("pricePlanIds") 
			}
		}
		
		public func previewModule<T: PreviewModule.PreviewModuleTokenizer>() -> T {
			return T(self.append("previewModule"))
		}
		
		public var householdLimitationsId: BaseTokenizedObject {
			get {
				return self.append("householdLimitationsId") 
			}
		}
		
		public var gracePeriodMinutes: BaseTokenizedObject {
			get {
				return self.append("gracePeriodMinutes") 
			}
		}
		
		public var premiumServices: ArrayTokenizedObject<PremiumService.PremiumServiceTokenizer> {
			get {
				return ArrayTokenizedObject<PremiumService.PremiumServiceTokenizer>(self.append("premiumServices"))
			} 
		}
		
		public var maxViewsNumber: BaseTokenizedObject {
			get {
				return self.append("maxViewsNumber") 
			}
		}
		
		public var viewLifeCycle: BaseTokenizedObject {
			get {
				return self.append("viewLifeCycle") 
			}
		}
		
		public var waiverPeriod: BaseTokenizedObject {
			get {
				return self.append("waiverPeriod") 
			}
		}
		
		public var isWaiverEnabled: BaseTokenizedObject {
			get {
				return self.append("isWaiverEnabled") 
			}
		}
		
		public var userTypes: ArrayTokenizedObject<OTTUserType.OTTUserTypeTokenizer> {
			get {
				return ArrayTokenizedObject<OTTUserType.OTTUserTypeTokenizer>(self.append("userTypes"))
			} 
		}
		
		public var couponsGroups: ArrayTokenizedObject<CouponsGroup.CouponsGroupTokenizer> {
			get {
				return ArrayTokenizedObject<CouponsGroup.CouponsGroupTokenizer>(self.append("couponsGroups"))
			} 
		}
		
		public var productCodes: ArrayTokenizedObject<ProductCode.ProductCodeTokenizer> {
			get {
				return ArrayTokenizedObject<ProductCode.ProductCodeTokenizer>(self.append("productCodes"))
			} 
		}
		
		public var dependencyType: BaseTokenizedObject {
			get {
				return self.append("dependencyType") 
			}
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var isCancellationBlocked: BaseTokenizedObject {
			get {
				return self.append("isCancellationBlocked") 
			}
		}
		
		public var preSaleDate: BaseTokenizedObject {
			get {
				return self.append("preSaleDate") 
			}
		}
	}

	/**  Subscription identifier  */
	public var id: String? = nil
	/**  A list of channels associated with this subscription  */
	public var channels: Array<BaseChannel>? = nil
	/**  The first date the subscription is available for purchasing  */
	public var startDate: Int64? = nil
	/**  The last date the subscription is available for purchasing  */
	public var endDate: Int64? = nil
	/**  A list of file types identifiers that are supported in this subscription  */
	public var fileTypes: Array<IntegerValue>? = nil
	/**  Denotes whether or not this subscription can be renewed  */
	public var isRenewable: Bool? = nil
	/**  Defines the number of times this subscription will be renewed  */
	public var renewalsNumber: Int? = nil
	/**  Indicates whether the subscription will renew forever  */
	public var isInfiniteRenewal: Bool? = nil
	/**  The price of the subscription  */
	public var price: PriceDetails? = nil
	/**  The internal discount module for the subscription  */
	public var discountModule: DiscountModule? = nil
	/**  Name of the subscription  */
	public var name: String? = nil
	/**  Name of the subscription  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  description of the subscription  */
	public var description: String? = nil
	/**  description of the subscription  */
	public var multilingualDescription: Array<TranslationToken>? = nil
	/**  Identifier of the media associated with the subscription  */
	public var mediaId: Int? = nil
	/**  Subscription order (when returned in methods that retrieve subscriptions)  */
	public var prorityInOrder: Int64? = nil
	/**  Comma separated subscription price plan IDs  */
	public var pricePlanIds: String? = nil
	/**  Subscription preview module  */
	public var previewModule: PreviewModule? = nil
	/**  The household limitation module identifier associated with this subscription  */
	public var householdLimitationsId: Int? = nil
	/**  The subscription grace period in minutes  */
	public var gracePeriodMinutes: Int? = nil
	/**  List of premium services included in the subscription  */
	public var premiumServices: Array<PremiumService>? = nil
	/**  The maximum number of times an item in this usage module can be viewed  */
	public var maxViewsNumber: Int? = nil
	/**  The amount time an item is available for viewing since a user started watching
	  the item  */
	public var viewLifeCycle: Int? = nil
	/**  Time period during which the end user can waive his rights to cancel a purchase.
	  When the time period is passed, the purchase can no longer be cancelled  */
	public var waiverPeriod: Int? = nil
	/**  Indicates whether or not the end user has the right to waive his rights to
	  cancel a purchase  */
	public var isWaiverEnabled: Bool? = nil
	/**  List of permitted user types for the subscription  */
	public var userTypes: Array<OTTUserType>? = nil
	/**  List of Coupons group  */
	public var couponsGroups: Array<CouponsGroup>? = nil
	/**  List of Subscription product codes  */
	public var productCodes: Array<ProductCode>? = nil
	/**  Dependency Type  */
	public var dependencyType: SubscriptionDependencyType? = nil
	/**  External ID  */
	public var externalId: String? = nil
	/**  Is cancellation blocked for the subscription  */
	public var isCancellationBlocked: Bool? = nil
	/**  The Pre-Sale date the subscription is available for purchasing  */
	public var preSaleDate: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(isRenewable: String) {
		self.dict["isRenewable"] = isRenewable
	}
	
	public func setMultiRequestToken(renewalsNumber: String) {
		self.dict["renewalsNumber"] = renewalsNumber
	}
	
	public func setMultiRequestToken(isInfiniteRenewal: String) {
		self.dict["isInfiniteRenewal"] = isInfiniteRenewal
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(mediaId: String) {
		self.dict["mediaId"] = mediaId
	}
	
	public func setMultiRequestToken(prorityInOrder: String) {
		self.dict["prorityInOrder"] = prorityInOrder
	}
	
	public func setMultiRequestToken(pricePlanIds: String) {
		self.dict["pricePlanIds"] = pricePlanIds
	}
	
	public func setMultiRequestToken(householdLimitationsId: String) {
		self.dict["householdLimitationsId"] = householdLimitationsId
	}
	
	public func setMultiRequestToken(gracePeriodMinutes: String) {
		self.dict["gracePeriodMinutes"] = gracePeriodMinutes
	}
	
	public func setMultiRequestToken(maxViewsNumber: String) {
		self.dict["maxViewsNumber"] = maxViewsNumber
	}
	
	public func setMultiRequestToken(viewLifeCycle: String) {
		self.dict["viewLifeCycle"] = viewLifeCycle
	}
	
	public func setMultiRequestToken(waiverPeriod: String) {
		self.dict["waiverPeriod"] = waiverPeriod
	}
	
	public func setMultiRequestToken(isWaiverEnabled: String) {
		self.dict["isWaiverEnabled"] = isWaiverEnabled
	}
	
	public func setMultiRequestToken(dependencyType: String) {
		self.dict["dependencyType"] = dependencyType
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(isCancellationBlocked: String) {
		self.dict["isCancellationBlocked"] = isCancellationBlocked
	}
	
	public func setMultiRequestToken(preSaleDate: String) {
		self.dict["preSaleDate"] = preSaleDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["channels"] != nil {
			channels = try JSONParser.parse(array: dict["channels"] as! [Any])
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["fileTypes"] != nil {
			fileTypes = try JSONParser.parse(array: dict["fileTypes"] as! [Any])
		}
		if dict["isRenewable"] != nil {
			isRenewable = dict["isRenewable"] as? Bool
		}
		if dict["renewalsNumber"] != nil {
			renewalsNumber = dict["renewalsNumber"] as? Int
		}
		if dict["isInfiniteRenewal"] != nil {
			isInfiniteRenewal = dict["isInfiniteRenewal"] as? Bool
		}
		if dict["price"] != nil {
		price = try JSONParser.parse(object: dict["price"] as! [String: Any])		}
		if dict["discountModule"] != nil {
		discountModule = try JSONParser.parse(object: dict["discountModule"] as! [String: Any])		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["multilingualDescription"] != nil {
			multilingualDescription = try JSONParser.parse(array: dict["multilingualDescription"] as! [Any])
		}
		if dict["mediaId"] != nil {
			mediaId = dict["mediaId"] as? Int
		}
		if dict["prorityInOrder"] != nil {
			prorityInOrder = Int64("\(dict["prorityInOrder"]!)")
		}
		if dict["pricePlanIds"] != nil {
			pricePlanIds = dict["pricePlanIds"] as? String
		}
		if dict["previewModule"] != nil {
		previewModule = try JSONParser.parse(object: dict["previewModule"] as! [String: Any])		}
		if dict["householdLimitationsId"] != nil {
			householdLimitationsId = dict["householdLimitationsId"] as? Int
		}
		if dict["gracePeriodMinutes"] != nil {
			gracePeriodMinutes = dict["gracePeriodMinutes"] as? Int
		}
		if dict["premiumServices"] != nil {
			premiumServices = try JSONParser.parse(array: dict["premiumServices"] as! [Any])
		}
		if dict["maxViewsNumber"] != nil {
			maxViewsNumber = dict["maxViewsNumber"] as? Int
		}
		if dict["viewLifeCycle"] != nil {
			viewLifeCycle = dict["viewLifeCycle"] as? Int
		}
		if dict["waiverPeriod"] != nil {
			waiverPeriod = dict["waiverPeriod"] as? Int
		}
		if dict["isWaiverEnabled"] != nil {
			isWaiverEnabled = dict["isWaiverEnabled"] as? Bool
		}
		if dict["userTypes"] != nil {
			userTypes = try JSONParser.parse(array: dict["userTypes"] as! [Any])
		}
		if dict["couponsGroups"] != nil {
			couponsGroups = try JSONParser.parse(array: dict["couponsGroups"] as! [Any])
		}
		if dict["productCodes"] != nil {
			productCodes = try JSONParser.parse(array: dict["productCodes"] as! [Any])
		}
		if dict["dependencyType"] != nil {
			dependencyType = SubscriptionDependencyType(rawValue: "\(dict["dependencyType"]!)")
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["isCancellationBlocked"] != nil {
			isCancellationBlocked = dict["isCancellationBlocked"] as? Bool
		}
		if dict["preSaleDate"] != nil {
			preSaleDate = Int64("\(dict["preSaleDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(channels != nil) {
			dict["channels"] = channels!.map { value in value.toDictionary() }
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(fileTypes != nil) {
			dict["fileTypes"] = fileTypes!.map { value in value.toDictionary() }
		}
		if(isRenewable != nil) {
			dict["isRenewable"] = isRenewable!
		}
		if(renewalsNumber != nil) {
			dict["renewalsNumber"] = renewalsNumber!
		}
		if(isInfiniteRenewal != nil) {
			dict["isInfiniteRenewal"] = isInfiniteRenewal!
		}
		if(price != nil) {
			dict["price"] = price!.toDictionary()
		}
		if(discountModule != nil) {
			dict["discountModule"] = discountModule!.toDictionary()
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.map { value in value.toDictionary() }
		}
		if(mediaId != nil) {
			dict["mediaId"] = mediaId!
		}
		if(prorityInOrder != nil) {
			dict["prorityInOrder"] = prorityInOrder!
		}
		if(pricePlanIds != nil) {
			dict["pricePlanIds"] = pricePlanIds!
		}
		if(previewModule != nil) {
			dict["previewModule"] = previewModule!.toDictionary()
		}
		if(householdLimitationsId != nil) {
			dict["householdLimitationsId"] = householdLimitationsId!
		}
		if(gracePeriodMinutes != nil) {
			dict["gracePeriodMinutes"] = gracePeriodMinutes!
		}
		if(premiumServices != nil) {
			dict["premiumServices"] = premiumServices!.map { value in value.toDictionary() }
		}
		if(maxViewsNumber != nil) {
			dict["maxViewsNumber"] = maxViewsNumber!
		}
		if(viewLifeCycle != nil) {
			dict["viewLifeCycle"] = viewLifeCycle!
		}
		if(waiverPeriod != nil) {
			dict["waiverPeriod"] = waiverPeriod!
		}
		if(isWaiverEnabled != nil) {
			dict["isWaiverEnabled"] = isWaiverEnabled!
		}
		if(userTypes != nil) {
			dict["userTypes"] = userTypes!.map { value in value.toDictionary() }
		}
		if(couponsGroups != nil) {
			dict["couponsGroups"] = couponsGroups!.map { value in value.toDictionary() }
		}
		if(productCodes != nil) {
			dict["productCodes"] = productCodes!.map { value in value.toDictionary() }
		}
		if(dependencyType != nil) {
			dict["dependencyType"] = dependencyType!.rawValue
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(isCancellationBlocked != nil) {
			dict["isCancellationBlocked"] = isCancellationBlocked!
		}
		if(preSaleDate != nil) {
			dict["preSaleDate"] = preSaleDate!
		}
		return dict
	}
}

