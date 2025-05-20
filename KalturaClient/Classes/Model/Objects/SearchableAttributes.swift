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

/**  Represents a collection of searchable attributes within the Kaltura platform.   
            This class extends KalturaOTTObject and contains a list of
  KalturaSearchableAttribute objects.  */
open class SearchableAttributes: ObjectBase {

	public class SearchableAttributesTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var items: ArrayTokenizedObject<SearchableAttribute.SearchableAttributeTokenizer> {
			get {
				return ArrayTokenizedObject<SearchableAttribute.SearchableAttributeTokenizer>(self.append("items"))
			} 
		}
	}

	/**  A list of searchable attributes associated with an asset structure.  */
	public var items: Array<SearchableAttribute>? = nil


	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["items"] != nil {
			items = try JSONParser.parse(array: dict["items"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(items != nil) {
			dict["items"] = items!.map { value in value.toDictionary() }
		}
		return dict
	}
}

