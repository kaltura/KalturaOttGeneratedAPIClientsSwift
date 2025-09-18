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

/**  PIN and its origin of definition  */
open class Pin: ObjectBase {

	public class PinTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var pin: BaseTokenizedObject {
			get {
				return self.append("pin") 
			}
		}
		
		public var origin: BaseTokenizedObject {
			get {
				return self.append("origin") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	/**  PIN code  */
	public var pin: String? = nil
	/**  Where the PIN was defined at – account, household or user  */
	public var origin: RuleLevel? = nil
	/**  PIN type  */
	public var type: PinType? = nil


	public func setMultiRequestToken(pin: String) {
		self.dict["pin"] = pin
	}
	
	public func setMultiRequestToken(origin: String) {
		self.dict["origin"] = origin
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pin"] != nil {
			pin = dict["pin"] as? String
		}
		if dict["origin"] != nil {
			origin = RuleLevel(rawValue: "\(dict["origin"]!)")
		}
		if dict["type"] != nil {
			type = PinType(rawValue: "\(dict["type"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(pin != nil) {
			dict["pin"] = pin!
		}
		if(origin != nil) {
			dict["origin"] = origin!.rawValue
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		return dict
	}
}

