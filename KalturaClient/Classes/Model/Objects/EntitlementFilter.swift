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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Entitlements filter  */
open class EntitlementFilter: Filter {

	/**  The type of the entitlements to return  */
	public var entitlementTypeEqual: TransactionType? = nil
	/**  Reference type to filter by  */
	public var entityReferenceEqual: EntityReferenceBy? = nil
	/**  Is expired  */
	public var isExpiredEqual: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entitlementTypeEqual"] != nil {
			entitlementTypeEqual = TransactionType(rawValue: "\(dict["entitlementTypeEqual"]!)")
		}
		if dict["entityReferenceEqual"] != nil {
			entityReferenceEqual = EntityReferenceBy(rawValue: "\(dict["entityReferenceEqual"]!)")
		}
		if dict["isExpiredEqual"] != nil {
			isExpiredEqual = dict["isExpiredEqual"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entitlementTypeEqual != nil) {
			dict["entitlementTypeEqual"] = entitlementTypeEqual!.rawValue
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

