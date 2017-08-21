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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Watch history asset info  */
open class AssetHistory: ObjectBase {

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


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = Int64((dict["assetId"] as? String)!)
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
			watchedDate = Int64((dict["watchedDate"] as? String)!)
		}
		if dict["finishedWatching"] != nil {
			finishedWatching = dict["finishedWatching"] as? Bool
		}

	}

}

