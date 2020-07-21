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

/**  Pricing usage module  */
open class UsageModule: ObjectBase {

	public class UsageModuleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var maxViewsNumber: BaseTokenizedObject {
			get {
				return self.append("maxViewsNumber") 
			}
		}
		
		public var viewLifeCycle: BaseTokenizedObject {
			get {
				return self.append("viewLifeCycle") 
			}
		}
		
		public var fullLifeCycle: BaseTokenizedObject {
			get {
				return self.append("fullLifeCycle") 
			}
		}
		
		public var couponId: BaseTokenizedObject {
			get {
				return self.append("couponId") 
			}
		}
		
		public var waiverPeriod: BaseTokenizedObject {
			get {
				return self.append("waiverPeriod") 
			}
		}
		
		public var isWaiverEnabled: BaseTokenizedObject {
			get {
				return self.append("isWaiverEnabled") 
			}
		}
		
		public var isOfflinePlayback: BaseTokenizedObject {
			get {
				return self.append("isOfflinePlayback") 
			}
		}
	}

	/**  Usage module identifier  */
	public var id: Int64? = nil
	/**  Usage module name  */
	public var name: String? = nil
	/**  The maximum number of times an item in this usage module can be viewed  */
	public var maxViewsNumber: Int? = nil
	/**  The amount time an item is available for viewing since a user started watching
	  the item  */
	public var viewLifeCycle: Int? = nil
	/**  The amount time an item is available for viewing  */
	public var fullLifeCycle: Int? = nil
	/**  Identifies a specific coupon linked to this object  */
	public var couponId: Int? = nil
	/**  Time period during which the end user can waive his rights to cancel a purchase.
	  When the time period is passed, the purchase can no longer be cancelled  */
	public var waiverPeriod: Int? = nil
	/**  Indicates whether or not the end user has the right to waive his rights to
	  cancel a purchase  */
	public var isWaiverEnabled: Bool? = nil
	/**  Indicates that usage is targeted for offline playback  */
	public var isOfflinePlayback: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(maxViewsNumber: String) {
		self.dict["maxViewsNumber"] = maxViewsNumber
	}
	
	public func setMultiRequestToken(viewLifeCycle: String) {
		self.dict["viewLifeCycle"] = viewLifeCycle
	}
	
	public func setMultiRequestToken(fullLifeCycle: String) {
		self.dict["fullLifeCycle"] = fullLifeCycle
	}
	
	public func setMultiRequestToken(couponId: String) {
		self.dict["couponId"] = couponId
	}
	
	public func setMultiRequestToken(waiverPeriod: String) {
		self.dict["waiverPeriod"] = waiverPeriod
	}
	
	public func setMultiRequestToken(isWaiverEnabled: String) {
		self.dict["isWaiverEnabled"] = isWaiverEnabled
	}
	
	public func setMultiRequestToken(isOfflinePlayback: String) {
		self.dict["isOfflinePlayback"] = isOfflinePlayback
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["maxViewsNumber"] != nil {
			maxViewsNumber = dict["maxViewsNumber"] as? Int
		}
		if dict["viewLifeCycle"] != nil {
			viewLifeCycle = dict["viewLifeCycle"] as? Int
		}
		if dict["fullLifeCycle"] != nil {
			fullLifeCycle = dict["fullLifeCycle"] as? Int
		}
		if dict["couponId"] != nil {
			couponId = dict["couponId"] as? Int
		}
		if dict["waiverPeriod"] != nil {
			waiverPeriod = dict["waiverPeriod"] as? Int
		}
		if dict["isWaiverEnabled"] != nil {
			isWaiverEnabled = dict["isWaiverEnabled"] as? Bool
		}
		if dict["isOfflinePlayback"] != nil {
			isOfflinePlayback = dict["isOfflinePlayback"] as? Bool
		}

	}

}

