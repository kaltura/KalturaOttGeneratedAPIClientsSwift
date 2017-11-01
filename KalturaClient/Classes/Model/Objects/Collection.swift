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
		
		public func multilingualName<T: MultilingualString.MultilingualStringTokenizer>() -> T {
			return T(self.append("multilingualName"))
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public func multilingualDescription<T: MultilingualString.MultilingualStringTokenizer>() -> T {
			return T(self.append("multilingualDescription"))
		}
		
		public var pricePlanIds: BaseTokenizedObject {
			get {
				return self.append("pricePlanIds") 
			}
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
	}

	/**  Collection identifier  */
	public var id: String? = nil
	/**  A list of channels associated with this collection  */
	public var channels: Array<BaseChannel>? = nil
	/**  The first date the collection is available for purchasing  */
	public var startDate: Int64? = nil
	/**  The last date the collection is available for purchasing  */
	public var endDate: Int64? = nil
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
	/**  Comma separated subscription price plan IDs  */
	public var pricePlanIds: String? = nil
	/**  List of Coupons group  */
	public var couponsGroups: Array<CouponsGroup>? = nil
	/**  External ID  */
	public var externalId: String? = nil


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
	
	public func setMultiRequestToken(pricePlanIds: String) {
		self.dict["pricePlanIds"] = pricePlanIds
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
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
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
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
		if dict["pricePlanIds"] != nil {
			pricePlanIds = dict["pricePlanIds"] as? String
		}
		if dict["couponsGroups"] != nil {
			couponsGroups = try JSONParser.parse(array: dict["couponsGroups"] as! [Any])
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
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
		if(pricePlanIds != nil) {
			dict["pricePlanIds"] = pricePlanIds!
		}
		if(couponsGroups != nil) {
			dict["couponsGroups"] = couponsGroups!.map { value in value.toDictionary() }
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		return dict
	}
}

