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

open class AssetStatisticsOrder: BaseAssetOrder {

	public class AssetStatisticsOrderTokenizer: BaseAssetOrder.BaseAssetOrderTokenizer {
		
		public var trendingDaysEqual: BaseTokenizedObject {
			get {
				return self.append("trendingDaysEqual") 
			}
		}
		
		public var orderBy: BaseTokenizedObject {
			get {
				return self.append("orderBy") 
			}
		}
	}

	/**  Trending Days Equal  */
	public var trendingDaysEqual: Int? = nil
	/**  order by meta asc/desc  */
	public var orderBy: AssetOrderByStatistics? = nil


	public func setMultiRequestToken(trendingDaysEqual: String) {
		self.dict["trendingDaysEqual"] = trendingDaysEqual
	}
	
	public func setMultiRequestToken(orderBy: String) {
		self.dict["orderBy"] = orderBy
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["trendingDaysEqual"] != nil {
			trendingDaysEqual = dict["trendingDaysEqual"] as? Int
		}
		if dict["orderBy"] != nil {
			orderBy = AssetOrderByStatistics(rawValue: "\(dict["orderBy"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(trendingDaysEqual != nil) {
			dict["trendingDaysEqual"] = trendingDaysEqual!
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!.rawValue
		}
		return dict
	}
}

