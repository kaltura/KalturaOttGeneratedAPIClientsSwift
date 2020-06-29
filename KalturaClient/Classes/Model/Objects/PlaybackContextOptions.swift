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

open class PlaybackContextOptions: ObjectBase {

	public class PlaybackContextOptionsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var mediaProtocol: BaseTokenizedObject {
			get {
				return self.append("mediaProtocol") 
			}
		}
		
		public var streamerType: BaseTokenizedObject {
			get {
				return self.append("streamerType") 
			}
		}
		
		public var assetFileIds: BaseTokenizedObject {
			get {
				return self.append("assetFileIds") 
			}
		}
		
		public var adapterData: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("adapterData"))
			}
		}
		
		public var context: BaseTokenizedObject {
			get {
				return self.append("context") 
			}
		}
		
		public var urlType: BaseTokenizedObject {
			get {
				return self.append("urlType") 
			}
		}
	}

	/**  Protocol of the specific media object (http / https).  */
	public var mediaProtocol: String? = nil
	/**  Playback streamer type: applehttp, mpegdash, url, smothstreaming, none  */
	public var streamerType: String? = nil
	/**  List of comma separated media file IDs  */
	public var assetFileIds: String? = nil
	/**  key/value map field for extra data  */
	public var adapterData: Dictionary<String, StringValue>? = nil
	/**  Playback context type  */
	public var context: PlaybackContextType? = nil
	/**  Url type  */
	public var urlType: UrlType? = nil


	public func setMultiRequestToken(mediaProtocol: String) {
		self.dict["mediaProtocol"] = mediaProtocol
	}
	
	public func setMultiRequestToken(streamerType: String) {
		self.dict["streamerType"] = streamerType
	}
	
	public func setMultiRequestToken(assetFileIds: String) {
		self.dict["assetFileIds"] = assetFileIds
	}
	
	public func setMultiRequestToken(context: String) {
		self.dict["context"] = context
	}
	
	public func setMultiRequestToken(urlType: String) {
		self.dict["urlType"] = urlType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
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
		if dict["adapterData"] != nil {
			adapterData = try JSONParser.parse(map: dict["adapterData"] as! [String: Any])
		}
		if dict["context"] != nil {
			context = PlaybackContextType(rawValue: "\(dict["context"]!)")
		}
		if dict["urlType"] != nil {
			urlType = UrlType(rawValue: "\(dict["urlType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
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
		if(adapterData != nil) {
			dict["adapterData"] = adapterData!.toDictionary()
		}
		if(context != nil) {
			dict["context"] = context!.rawValue
		}
		if(urlType != nil) {
			dict["urlType"] = urlType!.rawValue
		}
		return dict
	}
}

