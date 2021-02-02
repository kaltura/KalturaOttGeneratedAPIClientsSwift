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

/**  Partner catalog configuration  */
open class CatalogPartnerConfig: PartnerConfiguration {

	public class CatalogPartnerConfigTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var singleMultilingualMode: BaseTokenizedObject {
			get {
				return self.append("singleMultilingualMode") 
			}
		}
		
		public func categoryManagement<T: CategoryManagement.CategoryManagementTokenizer>() -> T {
			return T(self.append("categoryManagement"))
		}
	}

	/**  Single multilingual mode  */
	public var singleMultilingualMode: Bool? = nil
	/**  Category management  */
	public var categoryManagement: CategoryManagement? = nil


	public func setMultiRequestToken(singleMultilingualMode: String) {
		self.dict["singleMultilingualMode"] = singleMultilingualMode
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["singleMultilingualMode"] != nil {
			singleMultilingualMode = dict["singleMultilingualMode"] as? Bool
		}
		if dict["categoryManagement"] != nil {
		categoryManagement = try JSONParser.parse(object: dict["categoryManagement"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(singleMultilingualMode != nil) {
			dict["singleMultilingualMode"] = singleMultilingualMode!
		}
		if(categoryManagement != nil) {
			dict["categoryManagement"] = categoryManagement!.toDictionary()
		}
		return dict
	}
}

