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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class PlaybackSource: MediaFile {

	public class PlaybackSourceTokenizer: MediaFile.MediaFileTokenizer {
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var protocols: BaseTokenizedObject {
			get {
				return self.append("protocols") 
			}
		}
		
		public var drm: ArrayTokenizedObject<DrmPlaybackPluginData.DrmPlaybackPluginDataTokenizer> {
			get {
				return ArrayTokenizedObject<DrmPlaybackPluginData.DrmPlaybackPluginDataTokenizer>(self.append("drm"))
			} 
		}
	}

	/**  Source format according to delivery profile streamer type (applehttp, mpegdash
	  etc.)  */
	public var format: String? = nil
	/**  Comma separated string according to deliveryProfile media protocols
	  (&amp;#39;http,https&amp;#39; etc.)  */
	public var protocols: String? = nil
	/**  DRM data object containing relevant license URL ,scheme name and certificate  */
	public var drm: Array<DrmPlaybackPluginData>? = nil


	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(protocols: String) {
		self.dict["protocols"] = protocols
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["format"] != nil {
			format = dict["format"] as? String
		}
		if dict["protocols"] != nil {
			protocols = dict["protocols"] as? String
		}
		if dict["drm"] != nil {
			drm = try JSONParser.parse(array: dict["drm"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(format != nil) {
			dict["format"] = format!
		}
		if(protocols != nil) {
			dict["protocols"] = protocols!
		}
		if(drm != nil) {
			dict["drm"] = drm!.map { value in value.toDictionary() }
		}
		return dict
	}
}

