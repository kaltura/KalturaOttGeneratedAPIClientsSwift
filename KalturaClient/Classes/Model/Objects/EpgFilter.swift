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

open class EpgFilter: Filter {

	public class EpgFilterTokenizer: Filter.FilterTokenizer {
		
		public var dateEqual: BaseTokenizedObject {
			get {
				return self.append("dateEqual") 
			}
		}
		
		public var liveAssetIdEqual: BaseTokenizedObject {
			get {
				return self.append("liveAssetIdEqual") 
			}
		}
	}

	/**  date in unix timestamp, e.g. 1610928000(January 18, 2021 0:00:00),
	  1611014400(January 19, 2021 0:00:00)  */
	public var dateEqual: Int64? = nil
	/**  EPG live asset identifier  */
	public var liveAssetIdEqual: Int64? = nil


	public func setMultiRequestToken(dateEqual: String) {
		self.dict["dateEqual"] = dateEqual
	}
	
	public func setMultiRequestToken(liveAssetIdEqual: String) {
		self.dict["liveAssetIdEqual"] = liveAssetIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["dateEqual"] != nil {
			dateEqual = Int64("\(dict["dateEqual"]!)")
		}
		if dict["liveAssetIdEqual"] != nil {
			liveAssetIdEqual = Int64("\(dict["liveAssetIdEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(dateEqual != nil) {
			dict["dateEqual"] = dateEqual!
		}
		if(liveAssetIdEqual != nil) {
			dict["liveAssetIdEqual"] = liveAssetIdEqual!
		}
		return dict
	}
}

