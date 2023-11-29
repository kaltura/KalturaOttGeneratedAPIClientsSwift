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

open class PurchaseBase: ObjectBase {

	public class PurchaseBaseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var productId: BaseTokenizedObject {
			get {
				return self.append("productId") 
			}
		}
		
		public var contentId: BaseTokenizedObject {
			get {
				return self.append("contentId") 
			}
		}
		
		public var productType: BaseTokenizedObject {
			get {
				return self.append("productType") 
			}
		}
		
		public var adapterData: BaseTokenizedObject {
			get {
				return self.append("adapterData") 
			}
		}
	}

	/**  Identifier for the package from which this content is offered  */
	public var productId: Int? = nil
	/**  Identifier for the content to purchase. Relevant only if Product type = PPV  */
	public var contentId: Int? = nil
	/**  Package type. Possible values: PPV, Subscription, Collection  */
	public var productType: TransactionType? = nil
	/**  Additional data for the adapter  */
	public var adapterData: String? = nil


	public func setMultiRequestToken(productId: String) {
		self.dict["productId"] = productId
	}
	
	public func setMultiRequestToken(contentId: String) {
		self.dict["contentId"] = contentId
	}
	
	public func setMultiRequestToken(productType: String) {
		self.dict["productType"] = productType
	}
	
	public func setMultiRequestToken(adapterData: String) {
		self.dict["adapterData"] = adapterData
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["productId"] != nil {
			productId = dict["productId"] as? Int
		}
		if dict["contentId"] != nil {
			contentId = dict["contentId"] as? Int
		}
		if dict["productType"] != nil {
			productType = TransactionType(rawValue: "\(dict["productType"]!)")
		}
		if dict["adapterData"] != nil {
			adapterData = dict["adapterData"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(productId != nil) {
			dict["productId"] = productId!
		}
		if(contentId != nil) {
			dict["contentId"] = contentId!
		}
		if(productType != nil) {
			dict["productType"] = productType!.rawValue
		}
		if(adapterData != nil) {
			dict["adapterData"] = adapterData!
		}
		return dict
	}
}

