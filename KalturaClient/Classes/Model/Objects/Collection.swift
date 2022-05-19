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

/**  Collection  */
open class Collection: OTTObjectSupportNullable {

	public class CollectionTokenizer: OTTObjectSupportNullable.OTTObjectSupportNullableTokenizer {
		
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
		
		public var channelsIds: BaseTokenizedObject {
			get {
				return self.append("channelsIds") 
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
		
		public func discountModule<T: DiscountModule.DiscountModuleTokenizer>() -> T {
			return T(self.append("discountModule"))
		}
		
		public var discountModuleId: BaseTokenizedObject {
			get {
				return self.append("discountModuleId") 
			}
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
		
		public func usageModule<T: UsageModule.UsageModuleTokenizer>() -> T {
			return T(self.append("usageModule"))
		}
		
		public var usageModuleId: BaseTokenizedObject {
			get {
				return self.append("usageModuleId") 
			}
		}
		
		public var couponsGroups: ArrayTokenizedObject<CouponsGroup.CouponsGroupTokenizer> {
			get {
				return ArrayTokenizedObject<CouponsGroup.CouponsGroupTokenizer>(self.append("couponsGroups"))
			} 
		}
		
		public var collectionCouponGroup: ArrayTokenizedObject<CollectionCouponGroup.CollectionCouponGroupTokenizer> {
			get {
				return ArrayTokenizedObject<CollectionCouponGroup.CollectionCouponGroupTokenizer>(self.append("collectionCouponGroup"))
			} 
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var productCodes: ArrayTokenizedObject<ProductCode.ProductCodeTokenizer> {
			get {
				return ArrayTokenizedObject<ProductCode.ProductCodeTokenizer>(self.append("productCodes"))
			} 
		}
		
		public var priceDetailsId: BaseTokenizedObject {
			get {
				return self.append("priceDetailsId") 
			}
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
		
		public var virtualAssetId: BaseTokenizedObject {
			get {
				return self.append("virtualAssetId") 
			}
		}
	}

	/**  Collection identifier  */
	public var id: String? = nil
	/**  A list of channels associated with this collection               This property
	  will deprecated soon. Please use ChannelsIds instead of it.  */
	public var channels: Array<BaseChannel>? = nil
	/**  Comma separated channels Ids associated with this collection  */
	public var channelsIds: String? = nil
	/**  The first date the collection is available for purchasing  */
	public var startDate: Int64? = nil
	/**  The last date the collection is available for purchasing  */
	public var endDate: Int64? = nil
	/**  The internal discount module for the collection              This property will
	  deprecated soon. Please use DiscountModuleId instead of it.  */
	public var discountModule: DiscountModule? = nil
	/**  The internal discount module identifier for the collection  */
	public var discountModuleId: Int64? = nil
	/**  Name of the collection  */
	public var name: String? = nil
	/**  Name of the collection  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  description of the collection  */
	public var description: String? = nil
	/**  description of the collection  */
	public var multilingualDescription: Array<TranslationToken>? = nil
	/**  Collection usage module              This property will deprecated soon. Please
	  use usageModuleId instead of it.  */
	public var usageModule: UsageModule? = nil
	/**  The internal usage module identifier for the collection  */
	public var usageModuleId: Int64? = nil
	/**  List of Coupons group              This property will deprecated soon. Please
	  use CollectionCouponGroup instead of it.  */
	public var couponsGroups: Array<CouponsGroup>? = nil
	/**  List of collection Coupons group  */
	public var collectionCouponGroup: Array<CollectionCouponGroup>? = nil
	/**  External ID  */
	public var externalId: String? = nil
	/**  List of Collection product codes  */
	public var productCodes: Array<ProductCode>? = nil
	/**  The ID of the price details associated with this collection  */
	public var priceDetailsId: Int64? = nil
	/**  Is active collection  */
	public var isActive: Bool? = nil
	/**  Specifies when was the collection created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the collection last updated. Date and time represented as
	  epoch.  */
	public var updateDate: Int64? = nil
	/**  Virtual asset id  */
	public var virtualAssetId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(channelsIds: String) {
		self.dict["channelsIds"] = channelsIds
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(discountModuleId: String) {
		self.dict["discountModuleId"] = discountModuleId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(usageModuleId: String) {
		self.dict["usageModuleId"] = usageModuleId
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(priceDetailsId: String) {
		self.dict["priceDetailsId"] = priceDetailsId
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(virtualAssetId: String) {
		self.dict["virtualAssetId"] = virtualAssetId
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
		if dict["channelsIds"] != nil {
			channelsIds = dict["channelsIds"] as? String
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["discountModule"] != nil {
		discountModule = try JSONParser.parse(object: dict["discountModule"] as! [String: Any])		}
		if dict["discountModuleId"] != nil {
			discountModuleId = Int64("\(dict["discountModuleId"]!)")
		}
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
		if dict["usageModule"] != nil {
		usageModule = try JSONParser.parse(object: dict["usageModule"] as! [String: Any])		}
		if dict["usageModuleId"] != nil {
			usageModuleId = Int64("\(dict["usageModuleId"]!)")
		}
		if dict["couponsGroups"] != nil {
			couponsGroups = try JSONParser.parse(array: dict["couponsGroups"] as! [Any])
		}
		if dict["collectionCouponGroup"] != nil {
			collectionCouponGroup = try JSONParser.parse(array: dict["collectionCouponGroup"] as! [Any])
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["productCodes"] != nil {
			productCodes = try JSONParser.parse(array: dict["productCodes"] as! [Any])
		}
		if dict["priceDetailsId"] != nil {
			priceDetailsId = Int64("\(dict["priceDetailsId"]!)")
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["virtualAssetId"] != nil {
			virtualAssetId = Int64("\(dict["virtualAssetId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(channelsIds != nil) {
			dict["channelsIds"] = channelsIds!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(discountModuleId != nil) {
			dict["discountModuleId"] = discountModuleId!
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.map { value in value.toDictionary() }
		}
		if(usageModuleId != nil) {
			dict["usageModuleId"] = usageModuleId!
		}
		if(collectionCouponGroup != nil) {
			dict["collectionCouponGroup"] = collectionCouponGroup!.map { value in value.toDictionary() }
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(productCodes != nil) {
			dict["productCodes"] = productCodes!.map { value in value.toDictionary() }
		}
		if(priceDetailsId != nil) {
			dict["priceDetailsId"] = priceDetailsId!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		return dict
	}
}

