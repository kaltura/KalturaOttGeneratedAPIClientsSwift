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

open class RegionFilter: BaseRegionFilter {

	public class RegionFilterTokenizer: BaseRegionFilter.BaseRegionFilterTokenizer {
		
		public var externalIdIn: BaseTokenizedObject {
			get {
				return self.append("externalIdIn") 
			}
		}
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var parentIdEqual: BaseTokenizedObject {
			get {
				return self.append("parentIdEqual") 
			}
		}
		
		public var liveAssetIdEqual: BaseTokenizedObject {
			get {
				return self.append("liveAssetIdEqual") 
			}
		}
	}

	/**  List of comma separated regions external IDs  */
	public var externalIdIn: String? = nil
	/**  List of comma separated regions Ids  */
	public var idIn: String? = nil
	/**  Region parent ID to filter by  */
	public var parentIdEqual: Int? = nil
	/**  Region parent ID to filter by  */
	public var liveAssetIdEqual: Int? = nil


	public func setMultiRequestToken(externalIdIn: String) {
		self.dict["externalIdIn"] = externalIdIn
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(parentIdEqual: String) {
		self.dict["parentIdEqual"] = parentIdEqual
	}
	
	public func setMultiRequestToken(liveAssetIdEqual: String) {
		self.dict["liveAssetIdEqual"] = liveAssetIdEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["externalIdIn"] != nil {
			externalIdIn = dict["externalIdIn"] as? String
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["parentIdEqual"] != nil {
			parentIdEqual = dict["parentIdEqual"] as? Int
		}
		if dict["liveAssetIdEqual"] != nil {
			liveAssetIdEqual = dict["liveAssetIdEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalIdIn != nil) {
			dict["externalIdIn"] = externalIdIn!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(parentIdEqual != nil) {
			dict["parentIdEqual"] = parentIdEqual!
		}
		if(liveAssetIdEqual != nil) {
			dict["liveAssetIdEqual"] = liveAssetIdEqual!
		}
		return dict
	}
}

