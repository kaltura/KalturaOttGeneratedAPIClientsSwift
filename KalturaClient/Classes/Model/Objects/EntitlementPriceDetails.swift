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

/**  Entitlement price details  */
open class EntitlementPriceDetails: ObjectBase {

	public class EntitlementPriceDetailsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func fullPrice<T: Price.PriceTokenizer>() -> T {
			return T(self.append("fullPrice"))
		}
		
		public var discountDetails: ArrayTokenizedObject<EntitlementDiscountDetails.EntitlementDiscountDetailsTokenizer> {
			get {
				return ArrayTokenizedObject<EntitlementDiscountDetails.EntitlementDiscountDetailsTokenizer>(self.append("discountDetails"))
			} 
		}
	}

	/**  Full price  */
	public var fullPrice: Price? = nil
	/**  List of the season numbers to exclude.  */
	public var discountDetails: Array<EntitlementDiscountDetails>? = nil


	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fullPrice"] != nil {
		fullPrice = try JSONParser.parse(object: dict["fullPrice"] as! [String: Any])		}
		if dict["discountDetails"] != nil {
			discountDetails = try JSONParser.parse(array: dict["discountDetails"] as! [Any])
		}

	}

}

