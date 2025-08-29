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

/**  Returns the KalturaLiveAsset object passed as input parameter if there is at
  least one associated KalturaRecordingAsset object. Returns empty array
  otherwise.  */
open class LiveAssetHasRecordingsFilter: AssetFilter {

	public class LiveAssetHasRecordingsFilterTokenizer: AssetFilter.AssetFilterTokenizer {
		
		public var liveAssetIdEqual: BaseTokenizedObject {
			get {
				return self.append("liveAssetIdEqual") 
			}
		}
	}

	/**  KalturaLiveAsset.id value of the live linear channel to be examined for
	  associated recordings  */
	public var liveAssetIdEqual: Int64? = nil


	public func setMultiRequestToken(liveAssetIdEqual: String) {
		self.dict["liveAssetIdEqual"] = liveAssetIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["liveAssetIdEqual"] != nil {
			liveAssetIdEqual = Int64("\(dict["liveAssetIdEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(liveAssetIdEqual != nil) {
			dict["liveAssetIdEqual"] = liveAssetIdEqual!
		}
		return dict
	}
}

