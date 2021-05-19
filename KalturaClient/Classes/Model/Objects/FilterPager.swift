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

/**  The KalturaFilterPager object enables paging management to be applied upon
  service list actions  */
open class FilterPager: ObjectBase {

	public class FilterPagerTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var pageSize: BaseTokenizedObject {
			get {
				return self.append("pageSize") 
			}
		}
		
		public var pageIndex: BaseTokenizedObject {
			get {
				return self.append("pageIndex") 
			}
		}
	}

	/**  The number of objects to retrieve. Possible range 1 ≤ value ≤ 50. If omitted
	  or value &amp;lt; 1 - will be set to 25. If a value &amp;gt; 50 provided –
	  will be set to 50  */
	public var pageSize: Int? = nil
	/**  The page number for which {pageSize} of objects should be retrieved  */
	public var pageIndex: Int? = nil


	public func setMultiRequestToken(pageSize: String) {
		self.dict["pageSize"] = pageSize
	}
	
	public func setMultiRequestToken(pageIndex: String) {
		self.dict["pageIndex"] = pageIndex
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pageSize"] != nil {
			pageSize = dict["pageSize"] as? Int
		}
		if dict["pageIndex"] != nil {
			pageIndex = dict["pageIndex"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(pageSize != nil) {
			dict["pageSize"] = pageSize!
		}
		if(pageIndex != nil) {
			dict["pageIndex"] = pageIndex!
		}
		return dict
	}
}

