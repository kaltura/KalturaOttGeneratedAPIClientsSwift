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

/**  Watch history asset info  */
open class StreamingDevice: ObjectBase {

	public class StreamingDeviceTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func asset<T: SlimAsset.SlimAssetTokenizer>() -> T {
			return T(self.append("asset"))
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	/**  Asset  */
	public var asset: SlimAsset? = nil
	/**  User identifier  */
	public var userId: String? = nil
	/**  Device UDID  */
	public var udid: String? = nil


	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(udid: String) {
		self.dict["udid"] = udid
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["asset"] != nil {
		asset = try JSONParser.parse(object: dict["asset"] as! [String: Any])		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(udid != nil) {
			dict["udid"] = udid!
		}
		return dict
	}
}

