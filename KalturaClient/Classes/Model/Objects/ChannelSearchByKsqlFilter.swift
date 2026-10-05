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

open class ChannelSearchByKsqlFilter: ChannelsBaseFilter {

	public class ChannelSearchByKsqlFilterTokenizer: ChannelsBaseFilter.ChannelsBaseFilterTokenizer {
		
		public var kSql: BaseTokenizedObject {
			get {
				return self.append("kSql") 
			}
		}
		
		public var channelStructEqual: BaseTokenizedObject {
			get {
				return self.append("channelStructEqual") 
			}
		}
	}

	/**  KSQL expression  */
	public var kSql: String? = nil
	/**  channel struct  */
	public var channelStructEqual: ChannelStruct? = nil


	public func setMultiRequestToken(kSql: String) {
		self.dict["kSql"] = kSql
	}
	
	public func setMultiRequestToken(channelStructEqual: String) {
		self.dict["channelStructEqual"] = channelStructEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["kSql"] != nil {
			kSql = dict["kSql"] as? String
		}
		if dict["channelStructEqual"] != nil {
			channelStructEqual = ChannelStruct(rawValue: "\(dict["channelStructEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(kSql != nil) {
			dict["kSql"] = kSql!
		}
		if(channelStructEqual != nil) {
			dict["channelStructEqual"] = channelStructEqual!.rawValue
		}
		return dict
	}
}

