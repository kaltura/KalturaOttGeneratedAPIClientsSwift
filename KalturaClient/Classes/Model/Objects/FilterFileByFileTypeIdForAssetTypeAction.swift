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

/**  Filter file By FileType For AssetType  */
open class FilterFileByFileTypeIdForAssetTypeAction: FilterFileByFileTypeIdAction {

	public class FilterFileByFileTypeIdForAssetTypeActionTokenizer: FilterFileByFileTypeIdAction.FilterFileByFileTypeIdActionTokenizer {
		
		public var assetTypeIn: BaseTokenizedObject {
			get {
				return self.append("assetTypeIn") 
			}
		}
	}

	/**  List of comma separated assetTypes  */
	public var assetTypeIn: String? = nil


	public func setMultiRequestToken(assetTypeIn: String) {
		self.dict["assetTypeIn"] = assetTypeIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetTypeIn"] != nil {
			assetTypeIn = dict["assetTypeIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetTypeIn != nil) {
			dict["assetTypeIn"] = assetTypeIn!
		}
		return dict
	}
}

