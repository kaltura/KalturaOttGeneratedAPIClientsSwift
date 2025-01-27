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

/**  Define specific base profile response  */
open class DetachedResponseProfile: BaseResponseProfile {

	public class DetachedResponseProfileTokenizer: BaseResponseProfile.BaseResponseProfileTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public func filter<T: RelatedObjectFilter.RelatedObjectFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public var relatedProfiles: ArrayTokenizedObject<DetachedResponseProfile.DetachedResponseProfileTokenizer> {
			get {
				return ArrayTokenizedObject<DetachedResponseProfile.DetachedResponseProfileTokenizer>(self.append("relatedProfiles"))
			} 
		}
	}

	/**  name  */
	public var name: String? = nil
	/**  filter  */
	public var filter: RelatedObjectFilter? = nil
	/**  relatedProfiles  */
	public var relatedProfiles: Array<DetachedResponseProfile>? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["filter"] != nil {
		filter = try JSONParser.parse(object: dict["filter"] as! [String: Any])		}
		if dict["relatedProfiles"] != nil {
			relatedProfiles = try JSONParser.parse(array: dict["relatedProfiles"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(filter != nil) {
			dict["filter"] = filter!.toDictionary()
		}
		if(relatedProfiles != nil) {
			dict["relatedProfiles"] = relatedProfiles!.map { value in value.toDictionary() }
		}
		return dict
	}
}

