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

open class DeviceBrandFilter: Filter {

	public class DeviceBrandFilterTokenizer: Filter.FilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var deviceFamilyIdEqual: BaseTokenizedObject {
			get {
				return self.append("deviceFamilyIdEqual") 
			}
		}
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
			}
		}
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
	}

	/**  Filter the device brand with this identifier.  */
	public var idEqual: Int64? = nil
	/**  Filter the device brands with this device family&amp;#39;s identifier.  */
	public var deviceFamilyIdEqual: Int64? = nil
	/**  Filter the device brand with this name.  */
	public var nameEqual: String? = nil
	/**  Filter device brands of this type  */
	public var typeEqual: DeviceBrandType? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(deviceFamilyIdEqual: String) {
		self.dict["deviceFamilyIdEqual"] = deviceFamilyIdEqual
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = Int64("\(dict["idEqual"]!)")
		}
		if dict["deviceFamilyIdEqual"] != nil {
			deviceFamilyIdEqual = Int64("\(dict["deviceFamilyIdEqual"]!)")
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = DeviceBrandType(rawValue: "\(dict["typeEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(deviceFamilyIdEqual != nil) {
			dict["deviceFamilyIdEqual"] = deviceFamilyIdEqual!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		return dict
	}
}

