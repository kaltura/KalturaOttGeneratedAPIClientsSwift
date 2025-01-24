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

/**  Parameters for partner setup  */
open class PartnerSetup: ObjectBase {

	public class PartnerSetupTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var adminUsername: BaseTokenizedObject {
			get {
				return self.append("adminUsername") 
			}
		}
		
		public var adminPassword: BaseTokenizedObject {
			get {
				return self.append("adminPassword") 
			}
		}
		
		public func basePartnerConfiguration<T: BasePartnerConfiguration.BasePartnerConfigurationTokenizer>() -> T {
			return T(self.append("basePartnerConfiguration"))
		}
	}

	/**  admin Username  */
	public var adminUsername: String? = nil
	/**  admin Password  */
	public var adminPassword: String? = nil
	/**  basePartnerConfiguration  */
	public var basePartnerConfiguration: BasePartnerConfiguration? = nil


	public func setMultiRequestToken(adminUsername: String) {
		self.dict["adminUsername"] = adminUsername
	}
	
	public func setMultiRequestToken(adminPassword: String) {
		self.dict["adminPassword"] = adminPassword
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["adminUsername"] != nil {
			adminUsername = dict["adminUsername"] as? String
		}
		if dict["adminPassword"] != nil {
			adminPassword = dict["adminPassword"] as? String
		}
		if dict["basePartnerConfiguration"] != nil {
		basePartnerConfiguration = try JSONParser.parse(object: dict["basePartnerConfiguration"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(adminUsername != nil) {
			dict["adminUsername"] = adminUsername!
		}
		if(adminPassword != nil) {
			dict["adminPassword"] = adminPassword!
		}
		if(basePartnerConfiguration != nil) {
			dict["basePartnerConfiguration"] = basePartnerConfiguration!.toDictionary()
		}
		return dict
	}
}

