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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Price plan  */
open class PricePlan: UsageModule {

	/**  Denotes whether or not this object can be renewed  */
	public var isRenewable: Bool? = nil
	/**  Defines the number of times the module will be renewed (for the life_cycle
	  period)  */
	public var renewalsNumber: Int? = nil
	/**  The discount module identifier of the price plan  */
	public var discountId: Int64? = nil
	/**  The ID of the price details associated with this price plan  */
	public var priceDetailsId: Int64? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isRenewable"] != nil {
			isRenewable = dict["isRenewable"] as? Bool
		}
		if dict["renewalsNumber"] != nil {
			renewalsNumber = dict["renewalsNumber"] as? Int
		}
		if dict["discountId"] != nil {
			discountId = dict["discountId"] as? Int64
		}
		if dict["priceDetailsId"] != nil {
			priceDetailsId = dict["priceDetailsId"] as? Int64
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(priceDetailsId != nil) {
			dict["priceDetailsId"] = priceDetailsId!
		}
		return dict
	}
}

