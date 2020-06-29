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

/**  Transactions filter  */
open class TransactionHistoryFilter: Filter {

	public class TransactionHistoryFilterTokenizer: Filter.FilterTokenizer {
		
		public var entityReferenceEqual: BaseTokenizedObject {
			get {
				return self.append("entityReferenceEqual") 
			}
		}
		
		public var startDateGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("startDateGreaterThanOrEqual") 
			}
		}
		
		public var endDateLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("endDateLessThanOrEqual") 
			}
		}
	}

	/**  Reference type to filter by  */
	public var entityReferenceEqual: EntityReferenceBy? = nil
	/**  Filter transactions later than specific date  */
	public var startDateGreaterThanOrEqual: Int? = nil
	/**  Filter transactions earlier than specific date  */
	public var endDateLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(entityReferenceEqual: String) {
		self.dict["entityReferenceEqual"] = entityReferenceEqual
	}
	
	public func setMultiRequestToken(startDateGreaterThanOrEqual: String) {
		self.dict["startDateGreaterThanOrEqual"] = startDateGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(endDateLessThanOrEqual: String) {
		self.dict["endDateLessThanOrEqual"] = endDateLessThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entityReferenceEqual"] != nil {
			entityReferenceEqual = EntityReferenceBy(rawValue: "\(dict["entityReferenceEqual"]!)")
		}
		if dict["startDateGreaterThanOrEqual"] != nil {
			startDateGreaterThanOrEqual = dict["startDateGreaterThanOrEqual"] as? Int
		}
		if dict["endDateLessThanOrEqual"] != nil {
			endDateLessThanOrEqual = dict["endDateLessThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entityReferenceEqual != nil) {
			dict["entityReferenceEqual"] = entityReferenceEqual!.rawValue
		}
		if(startDateGreaterThanOrEqual != nil) {
			dict["startDateGreaterThanOrEqual"] = startDateGreaterThanOrEqual!
		}
		if(endDateLessThanOrEqual != nil) {
			dict["endDateLessThanOrEqual"] = endDateLessThanOrEqual!
		}
		return dict
	}
}

