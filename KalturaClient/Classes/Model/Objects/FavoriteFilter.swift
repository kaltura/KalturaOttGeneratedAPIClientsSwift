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
// Copyright (C) 2006-2017  Kaltura Inc.
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

/**  Favorite request filter  */
open class FavoriteFilter: Filter {

	/**  Media type to filter by the favorite assets  */
	public var mediaTypeEqual: Int? = nil
	/**  Media identifiers from which to filter the favorite assets  */
	public var mediaIdIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mediaTypeEqual"] != nil {
			mediaTypeEqual = dict["mediaTypeEqual"] as? Int
		}
		if dict["mediaIdIn"] != nil {
			mediaIdIn = dict["mediaIdIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mediaTypeEqual != nil) {
			dict["mediaTypeEqual"] = mediaTypeEqual!
		}
		if(mediaIdIn != nil) {
			dict["mediaIdIn"] = mediaIdIn!
		}
		return dict
	}
}

