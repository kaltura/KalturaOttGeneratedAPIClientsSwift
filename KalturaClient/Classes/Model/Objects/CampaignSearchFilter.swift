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

open class CampaignSearchFilter: CampaignFilter {

	public class CampaignSearchFilterTokenizer: CampaignFilter.CampaignFilterTokenizer {
		
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
		
		public var stateEqual: BaseTokenizedObject {
			get {
				return self.append("stateEqual") 
			}
		}
		
		public var hasPromotion: BaseTokenizedObject {
			get {
				return self.append("hasPromotion") 
			}
		}
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
			}
		}
		
		public var nameContains: BaseTokenizedObject {
			get {
				return self.append("nameContains") 
			}
		}
		
		public var stateIn: BaseTokenizedObject {
			get {
				return self.append("stateIn") 
			}
		}
	}

	/**  start Date Greater Than Or Equal  */
	public var startDateGreaterThanOrEqual: Int64? = nil
	/**  end Date Greater Than Or Equal  */
	public var endDateLessThanOrEqual: Int64? = nil
	/**  state Equal  */
	public var stateEqual: ObjectState? = nil
	/**  has Promotion  */
	public var hasPromotion: Bool? = nil
	/**  Filter the Campaign with this name.  */
	public var nameEqual: String? = nil
	/**  A string that is included in the Campaign name  */
	public var nameContains: String? = nil
	/**  Comma separated Campaign State list  */
	public var stateIn: String? = nil


	public func setMultiRequestToken(startDateGreaterThanOrEqual: String) {
		self.dict["startDateGreaterThanOrEqual"] = startDateGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(endDateLessThanOrEqual: String) {
		self.dict["endDateLessThanOrEqual"] = endDateLessThanOrEqual
	}
	
	public func setMultiRequestToken(stateEqual: String) {
		self.dict["stateEqual"] = stateEqual
	}
	
	public func setMultiRequestToken(hasPromotion: String) {
		self.dict["hasPromotion"] = hasPromotion
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(nameContains: String) {
		self.dict["nameContains"] = nameContains
	}
	
	public func setMultiRequestToken(stateIn: String) {
		self.dict["stateIn"] = stateIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["startDateGreaterThanOrEqual"] != nil {
			startDateGreaterThanOrEqual = Int64("\(dict["startDateGreaterThanOrEqual"]!)")
		}
		if dict["endDateLessThanOrEqual"] != nil {
			endDateLessThanOrEqual = Int64("\(dict["endDateLessThanOrEqual"]!)")
		}
		if dict["stateEqual"] != nil {
			stateEqual = ObjectState(rawValue: "\(dict["stateEqual"]!)")
		}
		if dict["hasPromotion"] != nil {
			hasPromotion = dict["hasPromotion"] as? Bool
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["nameContains"] != nil {
			nameContains = dict["nameContains"] as? String
		}
		if dict["stateIn"] != nil {
			stateIn = dict["stateIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(startDateGreaterThanOrEqual != nil) {
			dict["startDateGreaterThanOrEqual"] = startDateGreaterThanOrEqual!
		}
		if(endDateLessThanOrEqual != nil) {
			dict["endDateLessThanOrEqual"] = endDateLessThanOrEqual!
		}
		if(stateEqual != nil) {
			dict["stateEqual"] = stateEqual!.rawValue
		}
		if(hasPromotion != nil) {
			dict["hasPromotion"] = hasPromotion!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(nameContains != nil) {
			dict["nameContains"] = nameContains!
		}
		if(stateIn != nil) {
			dict["stateIn"] = stateIn!
		}
		return dict
	}
}

