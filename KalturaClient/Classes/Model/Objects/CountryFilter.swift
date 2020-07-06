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

/**  Country filter  */
open class CountryFilter: Filter {

	public class CountryFilterTokenizer: Filter.FilterTokenizer {
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var ipEqual: BaseTokenizedObject {
			get {
				return self.append("ipEqual") 
			}
		}
		
		public var ipEqualCurrent: BaseTokenizedObject {
			get {
				return self.append("ipEqualCurrent") 
			}
		}
	}

	/**  Country identifiers  */
	public var idIn: String? = nil
	/**  Ip to identify the country  */
	public var ipEqual: String? = nil
	/**  Indicates if to get the IP from the request  */
	public var ipEqualCurrent: Bool? = nil


	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(ipEqual: String) {
		self.dict["ipEqual"] = ipEqual
	}
	
	public func setMultiRequestToken(ipEqualCurrent: String) {
		self.dict["ipEqualCurrent"] = ipEqualCurrent
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["ipEqual"] != nil {
			ipEqual = dict["ipEqual"] as? String
		}
		if dict["ipEqualCurrent"] != nil {
			ipEqualCurrent = dict["ipEqualCurrent"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(ipEqual != nil) {
			dict["ipEqual"] = ipEqual!
		}
		if(ipEqualCurrent != nil) {
			dict["ipEqualCurrent"] = ipEqualCurrent!
		}
		return dict
	}
}

