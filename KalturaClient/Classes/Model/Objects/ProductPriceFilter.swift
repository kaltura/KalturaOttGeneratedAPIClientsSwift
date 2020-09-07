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

open class ProductPriceFilter: Filter {

	public class ProductPriceFilterTokenizer: Filter.FilterTokenizer {
		
		public var subscriptionIdIn: BaseTokenizedObject {
			get {
				return self.append("subscriptionIdIn") 
			}
		}
		
		public var fileIdIn: BaseTokenizedObject {
			get {
				return self.append("fileIdIn") 
			}
		}
		
		public var collectionIdIn: BaseTokenizedObject {
			get {
				return self.append("collectionIdIn") 
			}
		}
		
		public var isLowest: BaseTokenizedObject {
			get {
				return self.append("isLowest") 
			}
		}
		
		public var couponCodeEqual: BaseTokenizedObject {
			get {
				return self.append("couponCodeEqual") 
			}
		}
	}

	/**  Comma separated subscriptions identifiers  */
	public var subscriptionIdIn: String? = nil
	/**  Comma separated media files identifiers  */
	public var fileIdIn: String? = nil
	/**  Comma separated collections identifiers  */
	public var collectionIdIn: String? = nil
	/**  A flag that indicates if only the lowest price of an item should return  */
	public var isLowest: Bool? = nil
	/**  Discount coupon code  */
	public var couponCodeEqual: String? = nil


	public func setMultiRequestToken(subscriptionIdIn: String) {
		self.dict["subscriptionIdIn"] = subscriptionIdIn
	}
	
	public func setMultiRequestToken(fileIdIn: String) {
		self.dict["fileIdIn"] = fileIdIn
	}
	
	public func setMultiRequestToken(collectionIdIn: String) {
		self.dict["collectionIdIn"] = collectionIdIn
	}
	
	public func setMultiRequestToken(isLowest: String) {
		self.dict["isLowest"] = isLowest
	}
	
	public func setMultiRequestToken(couponCodeEqual: String) {
		self.dict["couponCodeEqual"] = couponCodeEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["subscriptionIdIn"] != nil {
			subscriptionIdIn = dict["subscriptionIdIn"] as? String
		}
		if dict["fileIdIn"] != nil {
			fileIdIn = dict["fileIdIn"] as? String
		}
		if dict["collectionIdIn"] != nil {
			collectionIdIn = dict["collectionIdIn"] as? String
		}
		if dict["isLowest"] != nil {
			isLowest = dict["isLowest"] as? Bool
		}
		if dict["couponCodeEqual"] != nil {
			couponCodeEqual = dict["couponCodeEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(subscriptionIdIn != nil) {
			dict["subscriptionIdIn"] = subscriptionIdIn!
		}
		if(fileIdIn != nil) {
			dict["fileIdIn"] = fileIdIn!
		}
		if(collectionIdIn != nil) {
			dict["collectionIdIn"] = collectionIdIn!
		}
		if(isLowest != nil) {
			dict["isLowest"] = isLowest!
		}
		if(couponCodeEqual != nil) {
			dict["couponCodeEqual"] = couponCodeEqual!
		}
		return dict
	}
}

