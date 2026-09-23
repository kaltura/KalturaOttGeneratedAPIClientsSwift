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

/**  Program asset group offer details  */
open class ProgramAssetGroupOffer: OTTObjectSupportNullable {

	public class ProgramAssetGroupOfferTokenizer: OTTObjectSupportNullable.OTTObjectSupportNullableTokenizer {
		
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
		
		public var multilingualName: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualName"))
			} 
		}
		
		public var priceDetailsId: BaseTokenizedObject {
			get {
				return self.append("priceDetailsId") 
			}
		}
		
		public var fileTypesIds: BaseTokenizedObject {
			get {
				return self.append("fileTypesIds") 
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
		
		public var virtualAssetId: BaseTokenizedObject {
			get {
				return self.append("virtualAssetId") 
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
		
		public var expiryDate: BaseTokenizedObject {
			get {
				return self.append("expiryDate") 
			}
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var externalOfferId: BaseTokenizedObject {
			get {
				return self.append("externalOfferId") 
			}
		}
	}

	/**  Unique Kaltura internal identifier for the module  */
	public var id: Int64? = nil
	/**  Name of the Program asset group offer  */
	public var name: String? = nil
	/**  Name of the Program asset group offer  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  ID of the KalturaPriceDetails object which contains details of the price to be
	  paid for purchasing this KalturaProgramAssetGroupOffer.  */
	public var priceDetailsId: Int64? = nil
	/**  Comma separated file types identifiers that are supported in this Program asset
	  group offer.              The subset of KalturaMediaFiles of the live linear
	  channel on which the associated Program Assets are carried to which households
	  entitled to this              Program Asset Group Offer are entitled to view
	  E.g.may be used to restrict entitlement only to HD flavour of the Program
	  Asset(and not the UHD flavour)              If this parameter is empty, the
	  Household shall be entitled to all KalturaMediaFiles associated with the
	  KalturaLiveAsset.  */
	public var fileTypesIds: String? = nil
	/**  A list of the descriptions of the Program asset group offer on different
	  languages (language code and translation)  */
	public var description: String? = nil
	/**  A list of the descriptions of the Program asset group offer on different
	  languages (language code and translation)  */
	public var multilingualDescription: Array<TranslationToken>? = nil
	/**  The id of the paired asset  */
	public var virtualAssetId: Int64? = nil
	/**  Indicates whether the PAGO is active or not (includes whether the PAGO can be
	  purchased and whether it is returned in list API response for regular users)  */
	public var isActive: Bool? = nil
	/**  Specifies when was the pago created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the pago last updated. Date and time represented as epoch.  */
	public var updateDate: Int64? = nil
	/**  The date/time at which the Program Asset Group Offer is first purchasable by
	  households. Date and time represented as epoch.  */
	public var startDate: Int64? = nil
	/**  The date/time at which the Program Asset Group Offer is last purchasable by
	  households.Date and time represented as epoch.  */
	public var endDate: Int64? = nil
	/**  The last date/time at which the system will attempt to locate Program Assets
	  that may be associated with this offer.Date and time represented as epoch.  */
	public var expiryDate: Int64? = nil
	/**  External identifier  */
	public var externalId: String? = nil
	/**  Identifies the Program Assets which will be entitled by Households that purchase
	  this offer. Must be a unique value in the context of an account.  */
	public var externalOfferId: String? = nil


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
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(virtualAssetId: String) {
		self.dict["virtualAssetId"] = virtualAssetId
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
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(expiryDate: String) {
		self.dict["expiryDate"] = expiryDate
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(externalOfferId: String) {
		self.dict["externalOfferId"] = externalOfferId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
		}
		if dict["priceDetailsId"] != nil {
			priceDetailsId = Int64("\(dict["priceDetailsId"]!)")
		}
		if dict["fileTypesIds"] != nil {
			fileTypesIds = dict["fileTypesIds"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["multilingualDescription"] != nil {
			multilingualDescription = try JSONParser.parse(array: dict["multilingualDescription"] as! [Any])
		}
		if dict["virtualAssetId"] != nil {
			virtualAssetId = Int64("\(dict["virtualAssetId"]!)")
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
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["expiryDate"] != nil {
			expiryDate = Int64("\(dict["expiryDate"]!)")
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["externalOfferId"] != nil {
			externalOfferId = dict["externalOfferId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(priceDetailsId != nil) {
			dict["priceDetailsId"] = priceDetailsId!
		}
		if(fileTypesIds != nil) {
			dict["fileTypesIds"] = fileTypesIds!
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.map { value in value.toDictionary() }
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(expiryDate != nil) {
			dict["expiryDate"] = expiryDate!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(externalOfferId != nil) {
			dict["externalOfferId"] = externalOfferId!
		}
		return dict
	}
}

