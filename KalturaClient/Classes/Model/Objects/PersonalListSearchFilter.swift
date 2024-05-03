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

open class PersonalListSearchFilter: BaseSearchAssetFilter {

	public class PersonalListSearchFilterTokenizer: BaseSearchAssetFilter.BaseSearchAssetFilterTokenizer {
		
		public var partnerListTypeIn: BaseTokenizedObject {
			get {
				return self.append("partnerListTypeIn") 
			}
		}
	}

	/**  Comma separated list of partner list types to search within.               If
	  omitted – all types should be included.  */
	public var partnerListTypeIn: String? = nil


	public func setMultiRequestToken(partnerListTypeIn: String) {
		self.dict["partnerListTypeIn"] = partnerListTypeIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerListTypeIn"] != nil {
			partnerListTypeIn = dict["partnerListTypeIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerListTypeIn != nil) {
			dict["partnerListTypeIn"] = partnerListTypeIn!
		}
		return dict
	}
}

