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

/**  Subscription details  */
open class Subscription: ObjectBase {

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
	public var multilingualName: MultilingualString? = nil
	/**  description of the subscription  */
	public var description: String? = nil
	/**  description of the subscription  */
	public var multilingualDescription: MultilingualString? = nil
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


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["channels"] != nil {
			channels = try JSONParser.parse(array: dict["channels"] as! [Any])
		}
		if dict["startDate"] != nil {
			startDate = Int64((dict["startDate"] as? String)!)
		}
		if dict["endDate"] != nil {
			endDate = Int64((dict["endDate"] as? String)!)
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
		multilingualName = try JSONParser.parse(object: dict["multilingualName"] as! [String: Any])		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["multilingualDescription"] != nil {
		multilingualDescription = try JSONParser.parse(object: dict["multilingualDescription"] as! [String: Any])		}
		if dict["mediaId"] != nil {
			mediaId = dict["mediaId"] as? Int
		}
		if dict["prorityInOrder"] != nil {
			prorityInOrder = Int64((dict["prorityInOrder"] as? String)!)
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

	}

	public override func toDictionary() -> [String: Any] {
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
		if(name != nil) {
			dict["name"] = name!
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.toDictionary()
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.toDictionary()
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
		return dict
	}
}

