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

/**  Single aggregation objects  */
open class AssetsCount: ObjectBase {

	public class AssetsCountTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var field: BaseTokenizedObject {
			get {
				return self.append("field") 
			}
		}
		
		public var objects: ArrayTokenizedObject<AssetCount.AssetCountTokenizer> {
			get {
				return ArrayTokenizedObject<AssetCount.AssetCountTokenizer>(self.append("objects"))
			} 
		}
	}

	/**  Field name  */
	public var field: String? = nil
	/**  Values, their count and sub groups  */
	public var objects: Array<AssetCount>? = nil


	public func setMultiRequestToken(field: String) {
		self.dict["field"] = field
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["field"] != nil {
			field = dict["field"] as? String
		}
		if dict["objects"] != nil {
			objects = try JSONParser.parse(array: dict["objects"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(field != nil) {
			dict["field"] = field!
		}
		if(objects != nil) {
			dict["objects"] = objects!.map { value in value.toDictionary() }
		}
		return dict
	}
}

