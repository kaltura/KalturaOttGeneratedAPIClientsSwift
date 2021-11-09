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

/**  Kaltura Session Characteristic  */
open class SessionCharacteristic: ObjectBase {

	public class SessionCharacteristicTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var regionId: BaseTokenizedObject {
			get {
				return self.append("regionId") 
			}
		}
		
		public var userSegmentsIds: BaseTokenizedObject {
			get {
				return self.append("userSegmentsIds") 
			}
		}
		
		public var userRolesIds: BaseTokenizedObject {
			get {
				return self.append("userRolesIds") 
			}
		}
		
		public var userSessionProfilesIds: BaseTokenizedObject {
			get {
				return self.append("userSessionProfilesIds") 
			}
		}
	}

	/**  Session characteristic identifier  */
	public var id: String? = nil
	/**  Region identifier  */
	public var regionId: Int? = nil
	/**  Comma-separated list of user segments identifiers  */
	public var userSegmentsIds: String? = nil
	/**  Comma-separated list of user roles identifiers  */
	public var userRolesIds: String? = nil
	/**  Comma-separated list of user session profiles identifiers  */
	public var userSessionProfilesIds: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(regionId: String) {
		self.dict["regionId"] = regionId
	}
	
	public func setMultiRequestToken(userSegmentsIds: String) {
		self.dict["userSegmentsIds"] = userSegmentsIds
	}
	
	public func setMultiRequestToken(userRolesIds: String) {
		self.dict["userRolesIds"] = userRolesIds
	}
	
	public func setMultiRequestToken(userSessionProfilesIds: String) {
		self.dict["userSessionProfilesIds"] = userSessionProfilesIds
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["regionId"] != nil {
			regionId = dict["regionId"] as? Int
		}
		if dict["userSegmentsIds"] != nil {
			userSegmentsIds = dict["userSegmentsIds"] as? String
		}
		if dict["userRolesIds"] != nil {
			userRolesIds = dict["userRolesIds"] as? String
		}
		if dict["userSessionProfilesIds"] != nil {
			userSessionProfilesIds = dict["userSessionProfilesIds"] as? String
		}

	}

}

