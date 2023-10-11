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

/**  Search history info  */
open class SearchHistory: ObjectBase {

	public class SearchHistoryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var filter: BaseTokenizedObject {
			get {
				return self.append("filter") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var service: BaseTokenizedObject {
			get {
				return self.append("service") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var deviceId: BaseTokenizedObject {
			get {
				return self.append("deviceId") 
			}
		}
	}

	/**  Search ID  */
	public var id: String? = nil
	/**  Search name  */
	public var name: String? = nil
	/**  Filter  */
	public var filter: String? = nil
	/**  Search language  */
	public var language: String? = nil
	/**  When search was performed  */
	public var createdAt: Int64? = nil
	/**  Kaltura OTT Service  */
	public var service: String? = nil
	/**  Kaltura OTT Service Action  */
	public var action: String? = nil
	/**  Unique Device ID  */
	public var deviceId: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(filter: String) {
		self.dict["filter"] = filter
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(service: String) {
		self.dict["service"] = service
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(deviceId: String) {
		self.dict["deviceId"] = deviceId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["filter"] != nil {
			filter = dict["filter"] as? String
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = Int64("\(dict["createdAt"]!)")
		}
		if dict["service"] != nil {
			service = dict["service"] as? String
		}
		if dict["action"] != nil {
			action = dict["action"] as? String
		}
		if dict["deviceId"] != nil {
			deviceId = dict["deviceId"] as? String
		}

	}

}

