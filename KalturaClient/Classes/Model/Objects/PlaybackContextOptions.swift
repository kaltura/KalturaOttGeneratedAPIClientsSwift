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

open class PlaybackContextOptions: ObjectBase {

	/**  Protocol of the specific media object (http / https).  */
	public var mediaProtocol: String? = nil
	/**  Playback streamer type: applehttp, mpegdash, url.  */
	public var streamerType: String? = nil
	/**  List of comma separated media file IDs  */
	public var assetFileIds: String? = nil
	/**  Playback context type  */
	public var context: PlaybackContextType? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mediaProtocol"] != nil {
			mediaProtocol = dict["mediaProtocol"] as? String
		}
		if dict["streamerType"] != nil {
			streamerType = dict["streamerType"] as? String
		}
		if dict["assetFileIds"] != nil {
			assetFileIds = dict["assetFileIds"] as? String
		}
		if dict["context"] != nil {
			context = PlaybackContextType(rawValue: "\(dict["context"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mediaProtocol != nil) {
			dict["mediaProtocol"] = mediaProtocol!
		}
		if(streamerType != nil) {
			dict["streamerType"] = streamerType!
		}
		if(assetFileIds != nil) {
			dict["assetFileIds"] = assetFileIds!
		}
		if(context != nil) {
			dict["context"] = context!.rawValue
		}
		return dict
	}
}

