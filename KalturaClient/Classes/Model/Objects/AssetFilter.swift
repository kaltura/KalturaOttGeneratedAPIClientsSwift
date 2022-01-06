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

open class AssetFilter: PersistedFilter {

	public class AssetFilterTokenizer: PersistedFilter.PersistedFilterTokenizer {
		
		public func dynamicOrderBy<T: DynamicOrderBy.DynamicOrderByTokenizer>() -> T {
			return T(self.append("dynamicOrderBy"))
		}
		
		public var trendingDaysEqual: BaseTokenizedObject {
			get {
				return self.append("trendingDaysEqual") 
			}
		}
		
		public var shouldApplyPriorityGroupsEqual: BaseTokenizedObject {
			get {
				return self.append("shouldApplyPriorityGroupsEqual") 
			}
		}
	}

	/**  dynamicOrderBy - order by Meta  */
	public var dynamicOrderBy: DynamicOrderBy? = nil
	/**  Trending Days Equal  */
	public var trendingDaysEqual: Int? = nil
	/**  Should apply priority groups filter or not.  */
	public var shouldApplyPriorityGroupsEqual: Bool? = nil


	public func setMultiRequestToken(trendingDaysEqual: String) {
		self.dict["trendingDaysEqual"] = trendingDaysEqual
	}
	
	public func setMultiRequestToken(shouldApplyPriorityGroupsEqual: String) {
		self.dict["shouldApplyPriorityGroupsEqual"] = shouldApplyPriorityGroupsEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["dynamicOrderBy"] != nil {
		dynamicOrderBy = try JSONParser.parse(object: dict["dynamicOrderBy"] as! [String: Any])		}
		if dict["trendingDaysEqual"] != nil {
			trendingDaysEqual = dict["trendingDaysEqual"] as? Int
		}
		if dict["shouldApplyPriorityGroupsEqual"] != nil {
			shouldApplyPriorityGroupsEqual = dict["shouldApplyPriorityGroupsEqual"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(dynamicOrderBy != nil) {
			dict["dynamicOrderBy"] = dynamicOrderBy!.toDictionary()
		}
		if(trendingDaysEqual != nil) {
			dict["trendingDaysEqual"] = trendingDaysEqual!
		}
		if(shouldApplyPriorityGroupsEqual != nil) {
			dict["shouldApplyPriorityGroupsEqual"] = shouldApplyPriorityGroupsEqual!
		}
		return dict
	}
}

