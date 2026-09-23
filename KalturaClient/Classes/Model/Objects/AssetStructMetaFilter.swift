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

/**  Filtering Asset Struct Metas  */
open class AssetStructMetaFilter: Filter {

	public class AssetStructMetaFilterTokenizer: Filter.FilterTokenizer {
		
		public var assetStructIdEqual: BaseTokenizedObject {
			get {
				return self.append("assetStructIdEqual") 
			}
		}
		
		public var metaIdEqual: BaseTokenizedObject {
			get {
				return self.append("metaIdEqual") 
			}
		}
	}

	/**  Filter Asset Struct metas that contain a specific asset struct id  */
	public var assetStructIdEqual: Int64? = nil
	/**  Filter Asset Struct metas that contain a specific meta id  */
	public var metaIdEqual: Int64? = nil


	public func setMultiRequestToken(assetStructIdEqual: String) {
		self.dict["assetStructIdEqual"] = assetStructIdEqual
	}
	
	public func setMultiRequestToken(metaIdEqual: String) {
		self.dict["metaIdEqual"] = metaIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetStructIdEqual"] != nil {
			assetStructIdEqual = Int64("\(dict["assetStructIdEqual"]!)")
		}
		if dict["metaIdEqual"] != nil {
			metaIdEqual = Int64("\(dict["metaIdEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetStructIdEqual != nil) {
			dict["assetStructIdEqual"] = assetStructIdEqual!
		}
		if(metaIdEqual != nil) {
			dict["metaIdEqual"] = metaIdEqual!
		}
		return dict
	}
}

