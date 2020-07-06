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

open class HouseholdPaymentGateway: ObjectBase {

	public class HouseholdPaymentGatewayTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var selectedBy: BaseTokenizedObject {
			get {
				return self.append("selectedBy") 
			}
		}
	}

	/**  payment gateway id  */
	public var id: Int? = nil
	/**  payment gateway name  */
	public var name: String? = nil
	/**  Payment gateway default (true/false)  */
	public var isDefault: Bool? = nil
	/**  distinction payment gateway selected by account or household  */
	public var selectedBy: HouseholdPaymentGatewaySelectedBy? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(selectedBy: String) {
		self.dict["selectedBy"] = selectedBy
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["selectedBy"] != nil {
			selectedBy = HouseholdPaymentGatewaySelectedBy(rawValue: "\(dict["selectedBy"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(selectedBy != nil) {
			dict["selectedBy"] = selectedBy!.rawValue
		}
		return dict
	}
}

