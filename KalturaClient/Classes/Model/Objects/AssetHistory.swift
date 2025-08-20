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
open class AssetHistory: ObjectBase {

	public class AssetHistoryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var assetType: BaseTokenizedObject {
			get {
				return self.append("assetType") 
			}
		}
		
		public var position: BaseTokenizedObject {
			get {
				return self.append("position") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var watchedDate: BaseTokenizedObject {
			get {
				return self.append("watchedDate") 
			}
		}
		
		public var finishedWatching: BaseTokenizedObject {
			get {
				return self.append("finishedWatching") 
			}
		}
	}

	/**  Asset identifier  */
	public var assetId: Int64? = nil
	/**  Asset identifier  */
	public var assetType: AssetType? = nil
	/**  Position in seconds of the relevant asset  */
	public var position: Int? = nil
	/**  Duration in seconds of the relevant asset  */
	public var duration: Int? = nil
	/**  The date when the media was last watched  */
	public var watchedDate: Int64? = nil
	/**  Boolean which specifies whether the user finished watching the movie or not  */
	public var finishedWatching: Bool? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(assetType: String) {
		self.dict["assetType"] = assetType
	}
	
	public func setMultiRequestToken(position: String) {
		self.dict["position"] = position
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(watchedDate: String) {
		self.dict["watchedDate"] = watchedDate
	}
	
	public func setMultiRequestToken(finishedWatching: String) {
		self.dict["finishedWatching"] = finishedWatching
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = Int64("\(dict["assetId"]!)")
		}
		if dict["assetType"] != nil {
			assetType = AssetType(rawValue: "\(dict["assetType"]!)")
		}
		if dict["position"] != nil {
			position = dict["position"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["watchedDate"] != nil {
			watchedDate = Int64("\(dict["watchedDate"]!)")
		}
		if dict["finishedWatching"] != nil {
			finishedWatching = dict["finishedWatching"] as? Bool
		}

	}

}

