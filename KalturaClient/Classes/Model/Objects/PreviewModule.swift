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

/**  Preview module  */
open class PreviewModule: ObjectBase {

	public class PreviewModuleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var lifeCycle: BaseTokenizedObject {
			get {
				return self.append("lifeCycle") 
			}
		}
		
		public var nonRenewablePeriod: BaseTokenizedObject {
			get {
				return self.append("nonRenewablePeriod") 
			}
		}
	}

	/**  Preview module identifier  */
	public var id: Int64? = nil
	/**  Preview module name  */
	public var name: String? = nil
	/**  Preview module life cycle - for how long the preview module is active  */
	public var lifeCycle: Int? = nil
	/**  The time you can&amp;#39;t buy the item to which the preview module is assigned
	  to again  */
	public var nonRenewablePeriod: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(lifeCycle: String) {
		self.dict["lifeCycle"] = lifeCycle
	}
	
	public func setMultiRequestToken(nonRenewablePeriod: String) {
		self.dict["nonRenewablePeriod"] = nonRenewablePeriod
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
		if dict["lifeCycle"] != nil {
			lifeCycle = dict["lifeCycle"] as? Int
		}
		if dict["nonRenewablePeriod"] != nil {
			nonRenewablePeriod = dict["nonRenewablePeriod"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(lifeCycle != nil) {
			dict["lifeCycle"] = lifeCycle!
		}
		if(nonRenewablePeriod != nil) {
			dict["nonRenewablePeriod"] = nonRenewablePeriod!
		}
		return dict
	}
}

