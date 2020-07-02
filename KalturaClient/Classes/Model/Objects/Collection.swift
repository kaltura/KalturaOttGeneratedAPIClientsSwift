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
open class Collection: ObjectBase {

	public class CollectionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public func usageModule<T: UsageModule.UsageModuleTokenizer>() -> T {
			return T(self.append("usageModule"))
		}
		
		public var couponsGroups: ArrayTokenizedObject<CouponsGroup.CouponsGroupTokenizer> {
			get {
				return ArrayTokenizedObject<CouponsGroup.CouponsGroupTokenizer>(self.append("couponsGroups"))
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
	}

	/**  Collection identifier  */
	public var id: String? = nil
	/**  A list of channels associated with this collection  */
	public var channels: Array<BaseChannel>? = nil
	/**  The first date the collection is available for purchasing  */
	public var startDate: Int64? = nil
	/**  The last date the collection is available for purchasing  */
	public var endDate: Int64? = nil
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
	/**  Collection usage module  */
	public var usageModule: UsageModule? = nil
	/**  List of Coupons group  */
	public var couponsGroups: Array<CouponsGroup>? = nil
	/**  External ID  */
	public var externalId: String? = nil
	/**  List of Collection product codes  */
	public var productCodes: Array<ProductCode>? = nil
	/**  The ID of the price details associated with this collection  */
	public var priceDetailsId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(priceDetailsId: String) {
		self.dict["priceDetailsId"] = priceDetailsId
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
		if dict["usageModule"] != nil {
		usageModule = try JSONParser.parse(object: dict["usageModule"] as! [String: Any])		}
		if dict["couponsGroups"] != nil {
			couponsGroups = try JSONParser.parse(array: dict["couponsGroups"] as! [Any])
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
		if(discountModule != nil) {
			dict["discountModule"] = discountModule!.toDictionary()
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.map { value in value.toDictionary() }
		}
		if(usageModule != nil) {
			dict["usageModule"] = usageModule!.toDictionary()
		}
		if(couponsGroups != nil) {
			dict["couponsGroups"] = couponsGroups!.map { value in value.toDictionary() }
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
		return dict
	}
}

