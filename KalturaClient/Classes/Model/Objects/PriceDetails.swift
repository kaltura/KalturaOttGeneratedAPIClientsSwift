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

/**  Price details  */
open class PriceDetails: ObjectBase {

	public class PriceDetailsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public func price<T: Price.PriceTokenizer>() -> T {
			return T(self.append("price"))
		}
		
		public var multiCurrencyPrice: ArrayTokenizedObject<Price.PriceTokenizer> {
			get {
				return ArrayTokenizedObject<Price.PriceTokenizer>(self.append("multiCurrencyPrice"))
			} 
		}
		
		public var descriptions: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("descriptions"))
			} 
		}
	}

	/**  The price code identifier  */
	public var id: Int? = nil
	/**  The price code name  */
	public var name: String? = nil
	/**  The price  */
	public var price: Price? = nil
	/**  Multi currency prices for all countries and currencies  */
	public var multiCurrencyPrice: Array<Price>? = nil
	/**  A list of the descriptions for this price on different languages (language code
	  and translation)  */
	public var descriptions: Array<TranslationToken>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["price"] != nil {
		price = try JSONParser.parse(object: dict["price"] as! [String: Any])		}
		if dict["multiCurrencyPrice"] != nil {
			multiCurrencyPrice = try JSONParser.parse(array: dict["multiCurrencyPrice"] as! [Any])
		}
		if dict["descriptions"] != nil {
			descriptions = try JSONParser.parse(array: dict["descriptions"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(multiCurrencyPrice != nil) {
			dict["multiCurrencyPrice"] = multiCurrencyPrice!.map { value in value.toDictionary() }
		}
		if(descriptions != nil) {
			dict["descriptions"] = descriptions!.map { value in value.toDictionary() }
		}
		return dict
	}
}

