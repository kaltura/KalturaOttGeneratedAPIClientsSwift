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

/**  Channel details  */
open class Channel: BaseChannel {

	/**  Cannel description  */
	public var description: String? = nil
	/**  Channel images  */
	public var images: Array<MediaImage>? = nil
	/**  Asset types in the channel.              -26 is EPG  */
	public var assetTypes: Array<IntegerValue>? = nil
	/**  Filter expression  */
	public var filterExpression: String? = nil
	/**  active status  */
	public var isActive: Bool? = nil
	/**  Channel order  */
	public var order: AssetOrderBy? = nil
	/**  Channel group by  */
	public var groupBy: AssetGroupBy? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["images"] != nil {
			images = try JSONParser.parse(array: dict["images"] as! [Any])
		}
		if dict["assetTypes"] != nil {
			assetTypes = try JSONParser.parse(array: dict["assetTypes"] as! [Any])
		}
		if dict["filterExpression"] != nil {
			filterExpression = dict["filterExpression"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["order"] != nil {
			order = AssetOrderBy(rawValue: "\(dict["order"]!)")
		}
		if dict["groupBy"] != nil {
		groupBy = try JSONParser.parse(object: dict["groupBy"] as! [String: Any])		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(description != nil) {
			dict["description"] = description!
		}
		if(images != nil) {
			dict["images"] = images!.map { value in value.toDictionary() }
		}
		if(assetTypes != nil) {
			dict["assetTypes"] = assetTypes!.map { value in value.toDictionary() }
		}
		if(filterExpression != nil) {
			dict["filterExpression"] = filterExpression!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(order != nil) {
			dict["order"] = order!.rawValue
		}
		if(groupBy != nil) {
			dict["groupBy"] = groupBy!.toDictionary()
		}
		return dict
	}
}

