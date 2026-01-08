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

/**  Asset counts wrapper - represents a group  */
open class AssetCountListResponse: ListResponse {

	public class AssetCountListResponseTokenizer: ListResponse.ListResponseTokenizer {
		
		public var assetsCount: BaseTokenizedObject {
			get {
				return self.append("assetsCount") 
			}
		}
		
		public var objects: ArrayTokenizedObject<AssetsCount.AssetsCountTokenizer> {
			get {
				return ArrayTokenizedObject<AssetsCount.AssetsCountTokenizer>(self.append("objects"))
			} 
		}
	}

	/**  Count of assets that match filter result, regardless of group by result  */
	public var assetsCount: Int? = nil
	/**  List of groupings (field name and sub-list of values and their counts)  */
	public var objects: Array<AssetsCount>? = nil


	public func setMultiRequestToken(assetsCount: String) {
		self.dict["assetsCount"] = assetsCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetsCount"] != nil {
			assetsCount = dict["assetsCount"] as? Int
		}
		if dict["objects"] != nil {
			objects = try JSONParser.parse(array: dict["objects"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetsCount != nil) {
			dict["assetsCount"] = assetsCount!
		}
		if(objects != nil) {
			dict["objects"] = objects!.map { value in value.toDictionary() }
		}
		return dict
	}
}

