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

/**  A class representing content recommendations.  */
open class TreeRecommendations: ObjectBase {

	public class TreeRecommendationsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var assets: ArrayTokenizedObject<Asset.AssetTokenizer> {
			get {
				return ArrayTokenizedObject<Asset.AssetTokenizer>(self.append("assets"))
			} 
		}
	}

	/**  Descriptive title for the recommendation set.  */
	public var title: String? = nil
	/**  Array of content assets matching the recommendation criteria, this is
	  essentially a KalturaAssetListResponseObject.  */
	public var assets: Array<Asset>? = nil


	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["assets"] != nil {
			assets = try JSONParser.parse(array: dict["assets"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(title != nil) {
			dict["title"] = title!
		}
		if(assets != nil) {
			dict["assets"] = assets!.map { value in value.toDictionary() }
		}
		return dict
	}
}

