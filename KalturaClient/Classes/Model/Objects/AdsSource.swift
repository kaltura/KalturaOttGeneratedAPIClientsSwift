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

open class AdsSource: ObjectBase {

	public class AdsSourceTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var adsPolicy: BaseTokenizedObject {
			get {
				return self.append("adsPolicy") 
			}
		}
		
		public var adsParam: BaseTokenizedObject {
			get {
				return self.append("adsParam") 
			}
		}
	}

	/**  File unique identifier  */
	public var id: Int? = nil
	/**  Device types as defined in the system  */
	public var type: String? = nil
	/**  Ads policy  */
	public var adsPolicy: AdsPolicy? = nil
	/**  The parameters to pass to the ads server  */
	public var adsParam: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(adsPolicy: String) {
		self.dict["adsPolicy"] = adsPolicy
	}
	
	public func setMultiRequestToken(adsParam: String) {
		self.dict["adsParam"] = adsParam
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["adsPolicy"] != nil {
			adsPolicy = AdsPolicy(rawValue: "\(dict["adsPolicy"]!)")
		}
		if dict["adsParam"] != nil {
			adsParam = dict["adsParam"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!
		}
		if(adsPolicy != nil) {
			dict["adsPolicy"] = adsPolicy!.rawValue
		}
		if(adsParam != nil) {
			dict["adsParam"] = adsParam!
		}
		return dict
	}
}

