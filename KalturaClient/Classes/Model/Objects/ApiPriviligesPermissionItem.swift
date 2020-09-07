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

open class ApiPriviligesPermissionItem: PermissionItem {

	public class ApiPriviligesPermissionItemTokenizer: PermissionItem.PermissionItemTokenizer {
		
		public var object: BaseTokenizedObject {
			get {
				return self.append("object") 
			}
		}
		
		public var parameter: BaseTokenizedObject {
			get {
				return self.append("parameter") 
			}
		}
	}

	/**  API object name  */
	public var object: String? = nil
	/**  API parameter name  */
	public var parameter: String? = nil


	public func setMultiRequestToken(object: String) {
		self.dict["object"] = object
	}
	
	public func setMultiRequestToken(parameter: String) {
		self.dict["parameter"] = parameter
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["object"] != nil {
			object = dict["object"] as? String
		}
		if dict["parameter"] != nil {
			parameter = dict["parameter"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(object != nil) {
			dict["object"] = object!
		}
		if(parameter != nil) {
			dict["parameter"] = parameter!
		}
		return dict
	}
}
