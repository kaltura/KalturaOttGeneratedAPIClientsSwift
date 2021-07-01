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

open class RegionChannelNumber: ObjectBase {

	public class RegionChannelNumberTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var regionId: BaseTokenizedObject {
			get {
				return self.append("regionId") 
			}
		}
		
		public var channelNumber: BaseTokenizedObject {
			get {
				return self.append("channelNumber") 
			}
		}
	}

	/**  The identifier of the region  */
	public var regionId: Int? = nil
	/**  The number of channel  */
	public var channelNumber: Int? = nil


	public func setMultiRequestToken(regionId: String) {
		self.dict["regionId"] = regionId
	}
	
	public func setMultiRequestToken(channelNumber: String) {
		self.dict["channelNumber"] = channelNumber
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["regionId"] != nil {
			regionId = dict["regionId"] as? Int
		}
		if dict["channelNumber"] != nil {
			channelNumber = dict["channelNumber"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(regionId != nil) {
			dict["regionId"] = regionId!
		}
		if(channelNumber != nil) {
			dict["channelNumber"] = channelNumber!
		}
		return dict
	}
}
