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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  Channel order details  */
open class ChannelOrder: ObjectBase {

	public class ChannelOrderTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func dynamicOrderBy<T: DynamicOrderBy.DynamicOrderByTokenizer>() -> T {
			return T(self.append("dynamicOrderBy"))
		}
		
		public var orderBy: BaseTokenizedObject {
			get {
				return self.append("orderBy") 
			}
		}
		
		public var period: BaseTokenizedObject {
			get {
				return self.append("period") 
			}
		}
	}

	/**  Channel dynamic order by (meta)  */
	public var dynamicOrderBy: DynamicOrderBy? = nil
	/**  Channel order by  */
	public var orderBy: ChannelOrderBy? = nil
	/**  Sliding window period in minutes, used only when ordering by LIKES_DESC /
	  VOTES_DESC / RATINGS_DESC / VIEWS_DESC  */
	public var period: Int? = nil


	public func setMultiRequestToken(orderBy: String) {
		self.dict["orderBy"] = orderBy
	}
	
	public func setMultiRequestToken(period: String) {
		self.dict["period"] = period
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["dynamicOrderBy"] != nil {
		dynamicOrderBy = try JSONParser.parse(object: dict["dynamicOrderBy"] as! [String: Any])		}
		if dict["orderBy"] != nil {
			orderBy = ChannelOrderBy(rawValue: "\(dict["orderBy"]!)")
		}
		if dict["period"] != nil {
			period = dict["period"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(dynamicOrderBy != nil) {
			dict["dynamicOrderBy"] = dynamicOrderBy!.toDictionary()
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!.rawValue
		}
		if(period != nil) {
			dict["period"] = period!
		}
		return dict
	}
}

