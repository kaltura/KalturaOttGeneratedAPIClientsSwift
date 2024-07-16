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

/**  Product Markup  */
open class ProductMarkup: ObjectBase {

	public class ProductMarkupTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var productId: BaseTokenizedObject {
			get {
				return self.append("productId") 
			}
		}
		
		public var productType: BaseTokenizedObject {
			get {
				return self.append("productType") 
			}
		}
		
		public var isEntitled: BaseTokenizedObject {
			get {
				return self.append("isEntitled") 
			}
		}
	}

	/**  Product Id  */
	public var productId: Int64? = nil
	/**  Product Type  */
	public var productType: TransactionType? = nil
	/**  Is Entitled to this product  */
	public var isEntitled: Bool? = nil


	public func setMultiRequestToken(productId: String) {
		self.dict["productId"] = productId
	}
	
	public func setMultiRequestToken(productType: String) {
		self.dict["productType"] = productType
	}
	
	public func setMultiRequestToken(isEntitled: String) {
		self.dict["isEntitled"] = isEntitled
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["productId"] != nil {
			productId = Int64("\(dict["productId"]!)")
		}
		if dict["productType"] != nil {
			productType = TransactionType(rawValue: "\(dict["productType"]!)")
		}
		if dict["isEntitled"] != nil {
			isEntitled = dict["isEntitled"] as? Bool
		}

	}

}

