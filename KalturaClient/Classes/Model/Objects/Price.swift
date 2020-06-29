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

/**  Price  */
open class Price: ObjectBase {

	public class PriceTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var amount: BaseTokenizedObject {
			get {
				return self.append("amount") 
			}
		}
		
		public var currency: BaseTokenizedObject {
			get {
				return self.append("currency") 
			}
		}
		
		public var currencySign: BaseTokenizedObject {
			get {
				return self.append("currencySign") 
			}
		}
		
		public var countryId: BaseTokenizedObject {
			get {
				return self.append("countryId") 
			}
		}
	}

	/**  Price  */
	public var amount: Double? = nil
	/**  Currency  */
	public var currency: String? = nil
	/**  Currency Sign  */
	public var currencySign: String? = nil
	/**  Country ID  */
	public var countryId: Int64? = nil


	public func setMultiRequestToken(amount: String) {
		self.dict["amount"] = amount
	}
	
	public func setMultiRequestToken(currency: String) {
		self.dict["currency"] = currency
	}
	
	public func setMultiRequestToken(currencySign: String) {
		self.dict["currencySign"] = currencySign
	}
	
	public func setMultiRequestToken(countryId: String) {
		self.dict["countryId"] = countryId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["amount"] != nil {
			amount = dict["amount"] as? Double
		}
		if dict["currency"] != nil {
			currency = dict["currency"] as? String
		}
		if dict["currencySign"] != nil {
			currencySign = dict["currencySign"] as? String
		}
		if dict["countryId"] != nil {
			countryId = Int64("\(dict["countryId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(amount != nil) {
			dict["amount"] = amount!
		}
		if(currency != nil) {
			dict["currency"] = currency!
		}
		if(currencySign != nil) {
			dict["currencySign"] = currencySign!
		}
		if(countryId != nil) {
			dict["countryId"] = countryId!
		}
		return dict
	}
}

