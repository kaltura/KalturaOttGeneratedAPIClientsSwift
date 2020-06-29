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

open class RandomCouponGenerationOptions: CouponGenerationOptions {

	public class RandomCouponGenerationOptionsTokenizer: CouponGenerationOptions.CouponGenerationOptionsTokenizer {
		
		public var numberOfCoupons: BaseTokenizedObject {
			get {
				return self.append("numberOfCoupons") 
			}
		}
		
		public var useLetters: BaseTokenizedObject {
			get {
				return self.append("useLetters") 
			}
		}
		
		public var useNumbers: BaseTokenizedObject {
			get {
				return self.append("useNumbers") 
			}
		}
		
		public var useSpecialCharacters: BaseTokenizedObject {
			get {
				return self.append("useSpecialCharacters") 
			}
		}
	}

	/**  Number of coupons to generate  */
	public var numberOfCoupons: Int? = nil
	/**  Indicates whether to use letters in the generated codes (default is true)  */
	public var useLetters: Bool? = nil
	/**  Indicates whether to use numbers in the generated codes (default is true)  */
	public var useNumbers: Bool? = nil
	/**  Indicates whether to use special characters in the generated codes(default is
	  true)  */
	public var useSpecialCharacters: Bool? = nil


	public func setMultiRequestToken(numberOfCoupons: String) {
		self.dict["numberOfCoupons"] = numberOfCoupons
	}
	
	public func setMultiRequestToken(useLetters: String) {
		self.dict["useLetters"] = useLetters
	}
	
	public func setMultiRequestToken(useNumbers: String) {
		self.dict["useNumbers"] = useNumbers
	}
	
	public func setMultiRequestToken(useSpecialCharacters: String) {
		self.dict["useSpecialCharacters"] = useSpecialCharacters
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["numberOfCoupons"] != nil {
			numberOfCoupons = dict["numberOfCoupons"] as? Int
		}
		if dict["useLetters"] != nil {
			useLetters = dict["useLetters"] as? Bool
		}
		if dict["useNumbers"] != nil {
			useNumbers = dict["useNumbers"] as? Bool
		}
		if dict["useSpecialCharacters"] != nil {
			useSpecialCharacters = dict["useSpecialCharacters"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(numberOfCoupons != nil) {
			dict["numberOfCoupons"] = numberOfCoupons!
		}
		if(useLetters != nil) {
			dict["useLetters"] = useLetters!
		}
		if(useNumbers != nil) {
			dict["useNumbers"] = useNumbers!
		}
		if(useSpecialCharacters != nil) {
			dict["useSpecialCharacters"] = useSpecialCharacters!
		}
		return dict
	}
}

