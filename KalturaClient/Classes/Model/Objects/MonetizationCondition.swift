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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  Defines a singular monetization condition  */
open class MonetizationCondition: ObjectBase {

	public class MonetizationConditionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var minimumPrice: BaseTokenizedObject {
			get {
				return self.append("minimumPrice") 
			}
		}
		
		public var multiplier: BaseTokenizedObject {
			get {
				return self.append("multiplier") 
			}
		}
	}

	/**  Purchase type  */
	public var type: MonetizationType? = nil
	/**  Minimum price of purchase  */
	public var minimumPrice: Int? = nil
	/**  Score multiplier  */
	public var multiplier: Int? = nil


	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(minimumPrice: String) {
		self.dict["minimumPrice"] = minimumPrice
	}
	
	public func setMultiRequestToken(multiplier: String) {
		self.dict["multiplier"] = multiplier
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["type"] != nil {
			type = MonetizationType(rawValue: "\(dict["type"]!)")
		}
		if dict["minimumPrice"] != nil {
			minimumPrice = dict["minimumPrice"] as? Int
		}
		if dict["multiplier"] != nil {
			multiplier = dict["multiplier"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(minimumPrice != nil) {
			dict["minimumPrice"] = minimumPrice!
		}
		if(multiplier != nil) {
			dict["multiplier"] = multiplier!
		}
		return dict
	}
}

