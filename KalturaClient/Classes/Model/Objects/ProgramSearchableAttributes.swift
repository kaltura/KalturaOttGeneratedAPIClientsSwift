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

/**  Represents the searchable attributes configuration for Program (EPG/Catchup)
  assets.              Unlike VOD assets which use asset structs, Programs have a
  single unified configuration.  */
open class ProgramSearchableAttributes: ObjectBase {

	public class ProgramSearchableAttributesTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var attributes: BaseTokenizedObject {
			get {
				return self.append("attributes") 
			}
		}
	}

	/**  Comma-separated list of Program metadata field names that should be searchable. 
	              Examples:
	  &amp;quot;name,description,genre,tags,meta_cast,meta_director&amp;quot;  */
	public var attributes: String? = nil


	public func setMultiRequestToken(attributes: String) {
		self.dict["attributes"] = attributes
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["attributes"] != nil {
			attributes = dict["attributes"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(attributes != nil) {
			dict["attributes"] = attributes!
		}
		return dict
	}
}

