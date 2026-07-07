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

/**  Evaluates whether a user purchased a specific Collection (BoxSet).  */
open class CollectionPurchasedCondition: BaseSegmentCondition {

	public class CollectionPurchasedConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public var collectionIdEquals: BaseTokenizedObject {
			get {
				return self.append("collectionIdEquals") 
			}
		}
		
		public var days: BaseTokenizedObject {
			get {
				return self.append("days") 
			}
		}
	}

	/**  The specific purchased collection product identifier to check.  */
	public var collectionIdEquals: Int64? = nil
	/**  The number of days to look back for the purchase.  */
	public var days: Int? = nil


	public func setMultiRequestToken(collectionIdEquals: String) {
		self.dict["collectionIdEquals"] = collectionIdEquals
	}
	
	public func setMultiRequestToken(days: String) {
		self.dict["days"] = days
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["collectionIdEquals"] != nil {
			collectionIdEquals = Int64("\(dict["collectionIdEquals"]!)")
		}
		if dict["days"] != nil {
			days = dict["days"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(collectionIdEquals != nil) {
			dict["collectionIdEquals"] = collectionIdEquals!
		}
		if(days != nil) {
			dict["days"] = days!
		}
		return dict
	}
}

