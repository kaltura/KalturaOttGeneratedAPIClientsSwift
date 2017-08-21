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

/**  Media-asset info  */
open class MediaAsset: Asset {

	/**  External identifiers  */
	public var externalIds: String? = nil
	/**  Catch-up buffer  */
	public var catchUpBuffer: Int64? = nil
	/**  Trick-play buffer  */
	public var trickPlayBuffer: Int64? = nil
	/**  Enable Recording playback for non entitled channel  */
	public var enableRecordingPlaybackNonEntitledChannel: Bool? = nil
	/**  Asset type description  */
	public var typeDescription: String? = nil
	/**  Entry Identifier  */
	public var entryId: String? = nil
	/**  Device rule  */
	public var deviceRule: String? = nil
	/**  Geo block rule  */
	public var geoBlockRule: String? = nil
	/**  Watch permission rule  */
	public var watchPermissionRule: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["externalIds"] != nil {
			externalIds = dict["externalIds"] as? String
		}
		if dict["catchUpBuffer"] != nil {
			catchUpBuffer = Int64((dict["catchUpBuffer"] as? String)!)
		}
		if dict["trickPlayBuffer"] != nil {
			trickPlayBuffer = Int64((dict["trickPlayBuffer"] as? String)!)
		}
		if dict["enableRecordingPlaybackNonEntitledChannel"] != nil {
			enableRecordingPlaybackNonEntitledChannel = dict["enableRecordingPlaybackNonEntitledChannel"] as? Bool
		}
		if dict["typeDescription"] != nil {
			typeDescription = dict["typeDescription"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["deviceRule"] != nil {
			deviceRule = dict["deviceRule"] as? String
		}
		if dict["geoBlockRule"] != nil {
			geoBlockRule = dict["geoBlockRule"] as? String
		}
		if dict["watchPermissionRule"] != nil {
			watchPermissionRule = dict["watchPermissionRule"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalIds != nil) {
			dict["externalIds"] = externalIds!
		}
		if(catchUpBuffer != nil) {
			dict["catchUpBuffer"] = catchUpBuffer!
		}
		if(trickPlayBuffer != nil) {
			dict["trickPlayBuffer"] = trickPlayBuffer!
		}
		if(typeDescription != nil) {
			dict["typeDescription"] = typeDescription!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(deviceRule != nil) {
			dict["deviceRule"] = deviceRule!
		}
		if(geoBlockRule != nil) {
			dict["geoBlockRule"] = geoBlockRule!
		}
		if(watchPermissionRule != nil) {
			dict["watchPermissionRule"] = watchPermissionRule!
		}
		return dict
	}
}

