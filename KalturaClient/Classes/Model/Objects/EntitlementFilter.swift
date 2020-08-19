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

/**  Entitlements filter  */
open class EntitlementFilter: Filter {

	public class EntitlementFilterTokenizer: Filter.FilterTokenizer {
		
		public var productTypeEqual: BaseTokenizedObject {
			get {
				return self.append("productTypeEqual") 
			}
		}
		
		public var entityReferenceEqual: BaseTokenizedObject {
			get {
				return self.append("entityReferenceEqual") 
			}
		}
		
		public var isExpiredEqual: BaseTokenizedObject {
			get {
				return self.append("isExpiredEqual") 
			}
		}
	}

	/**  The type of the entitlements to return  */
	public var productTypeEqual: TransactionType? = nil
	/**  Reference type to filter by  */
	public var entityReferenceEqual: EntityReferenceBy? = nil
	/**  Is expired  */
	public var isExpiredEqual: Bool? = nil


	public func setMultiRequestToken(productTypeEqual: String) {
		self.dict["productTypeEqual"] = productTypeEqual
	}
	
	public func setMultiRequestToken(entityReferenceEqual: String) {
		self.dict["entityReferenceEqual"] = entityReferenceEqual
	}
	
	public func setMultiRequestToken(isExpiredEqual: String) {
		self.dict["isExpiredEqual"] = isExpiredEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["productTypeEqual"] != nil {
			productTypeEqual = TransactionType(rawValue: "\(dict["productTypeEqual"]!)")
		}
		if dict["entityReferenceEqual"] != nil {
			entityReferenceEqual = EntityReferenceBy(rawValue: "\(dict["entityReferenceEqual"]!)")
		}
		if dict["isExpiredEqual"] != nil {
			isExpiredEqual = dict["isExpiredEqual"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(productTypeEqual != nil) {
			dict["productTypeEqual"] = productTypeEqual!.rawValue
		}
		if(entityReferenceEqual != nil) {
			dict["entityReferenceEqual"] = entityReferenceEqual!.rawValue
		}
		if(isExpiredEqual != nil) {
			dict["isExpiredEqual"] = isExpiredEqual!
		}
		return dict
	}
}

