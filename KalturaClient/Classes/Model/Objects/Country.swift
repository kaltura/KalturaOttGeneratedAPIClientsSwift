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

/**  Country details  */
open class Country: ObjectBase {

	public class CountryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var code: BaseTokenizedObject {
			get {
				return self.append("code") 
			}
		}
		
		public var mainLanguageCode: BaseTokenizedObject {
			get {
				return self.append("mainLanguageCode") 
			}
		}
		
		public var languagesCode: BaseTokenizedObject {
			get {
				return self.append("languagesCode") 
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
		
		public var vatPercent: BaseTokenizedObject {
			get {
				return self.append("vatPercent") 
			}
		}
		
		public var timeZoneId: BaseTokenizedObject {
			get {
				return self.append("timeZoneId") 
			}
		}
	}

	/**  Country identifier  */
	public var id: Int? = nil
	/**  Country name  */
	public var name: String? = nil
	/**  Country code  */
	public var code: String? = nil
	/**  The main language code in the country  */
	public var mainLanguageCode: String? = nil
	/**  All the languages code that are supported in the country  */
	public var languagesCode: String? = nil
	/**  Currency code  */
	public var currency: String? = nil
	/**  Currency Sign  */
	public var currencySign: String? = nil
	/**  Vat Percent in the country  */
	public var vatPercent: Double? = nil
	/**  Time zone ID  */
	public var timeZoneId: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(code: String) {
		self.dict["code"] = code
	}
	
	public func setMultiRequestToken(mainLanguageCode: String) {
		self.dict["mainLanguageCode"] = mainLanguageCode
	}
	
	public func setMultiRequestToken(languagesCode: String) {
		self.dict["languagesCode"] = languagesCode
	}
	
	public func setMultiRequestToken(currency: String) {
		self.dict["currency"] = currency
	}
	
	public func setMultiRequestToken(currencySign: String) {
		self.dict["currencySign"] = currencySign
	}
	
	public func setMultiRequestToken(vatPercent: String) {
		self.dict["vatPercent"] = vatPercent
	}
	
	public func setMultiRequestToken(timeZoneId: String) {
		self.dict["timeZoneId"] = timeZoneId
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
		if dict["code"] != nil {
			code = dict["code"] as? String
		}
		if dict["mainLanguageCode"] != nil {
			mainLanguageCode = dict["mainLanguageCode"] as? String
		}
		if dict["languagesCode"] != nil {
			languagesCode = dict["languagesCode"] as? String
		}
		if dict["currency"] != nil {
			currency = dict["currency"] as? String
		}
		if dict["currencySign"] != nil {
			currencySign = dict["currencySign"] as? String
		}
		if dict["vatPercent"] != nil {
			vatPercent = dict["vatPercent"] as? Double
		}
		if dict["timeZoneId"] != nil {
			timeZoneId = dict["timeZoneId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(code != nil) {
			dict["code"] = code!
		}
		if(mainLanguageCode != nil) {
			dict["mainLanguageCode"] = mainLanguageCode!
		}
		if(languagesCode != nil) {
			dict["languagesCode"] = languagesCode!
		}
		if(currency != nil) {
			dict["currency"] = currency!
		}
		if(currencySign != nil) {
			dict["currencySign"] = currencySign!
		}
		if(vatPercent != nil) {
			dict["vatPercent"] = vatPercent!
		}
		if(timeZoneId != nil) {
			dict["timeZoneId"] = timeZoneId!
		}
		return dict
	}
}

