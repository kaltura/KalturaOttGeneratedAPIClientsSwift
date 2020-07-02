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

/**  Media-file type  */
open class MediaFileType: ObjectBase {

	public class MediaFileTypeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
		
		public var isTrailer: BaseTokenizedObject {
			get {
				return self.append("isTrailer") 
			}
		}
		
		public var streamerType: BaseTokenizedObject {
			get {
				return self.append("streamerType") 
			}
		}
		
		public var drmProfileId: BaseTokenizedObject {
			get {
				return self.append("drmProfileId") 
			}
		}
		
		public var quality: BaseTokenizedObject {
			get {
				return self.append("quality") 
			}
		}
		
		public var videoCodecs: BaseTokenizedObject {
			get {
				return self.append("videoCodecs") 
			}
		}
		
		public var audioCodecs: BaseTokenizedObject {
			get {
				return self.append("audioCodecs") 
			}
		}
	}

	/**  Unique identifier  */
	public var id: Int? = nil
	/**  Unique name  */
	public var name: String? = nil
	/**  Unique description  */
	public var description: String? = nil
	/**  Indicates if media-file type is active or disabled  */
	public var status: Bool? = nil
	/**  Specifies when was the type was created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the type last updated. Date and time represented as epoch.  */
	public var updateDate: Int64? = nil
	/**  Specifies whether playback as trailer is allowed  */
	public var isTrailer: Bool? = nil
	/**  Defines playback streamer type  */
	public var streamerType: MediaFileStreamerType? = nil
	/**  DRM adapter-profile identifier, use -1 for uDRM, 0 for no DRM.  */
	public var drmProfileId: Int? = nil
	/**  Media file type quality  */
	public var quality: MediaFileTypeQuality? = nil
	/**  List of comma separated video codecs  */
	public var videoCodecs: String? = nil
	/**  List of comma separated audio codecs  */
	public var audioCodecs: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(isTrailer: String) {
		self.dict["isTrailer"] = isTrailer
	}
	
	public func setMultiRequestToken(streamerType: String) {
		self.dict["streamerType"] = streamerType
	}
	
	public func setMultiRequestToken(drmProfileId: String) {
		self.dict["drmProfileId"] = drmProfileId
	}
	
	public func setMultiRequestToken(quality: String) {
		self.dict["quality"] = quality
	}
	
	public func setMultiRequestToken(videoCodecs: String) {
		self.dict["videoCodecs"] = videoCodecs
	}
	
	public func setMultiRequestToken(audioCodecs: String) {
		self.dict["audioCodecs"] = audioCodecs
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["status"] != nil {
			status = dict["status"] as? Bool
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["isTrailer"] != nil {
			isTrailer = dict["isTrailer"] as? Bool
		}
		if dict["streamerType"] != nil {
			streamerType = MediaFileStreamerType(rawValue: "\(dict["streamerType"]!)")
		}
		if dict["drmProfileId"] != nil {
			drmProfileId = dict["drmProfileId"] as? Int
		}
		if dict["quality"] != nil {
			quality = MediaFileTypeQuality(rawValue: "\(dict["quality"]!)")
		}
		if dict["videoCodecs"] != nil {
			videoCodecs = dict["videoCodecs"] as? String
		}
		if dict["audioCodecs"] != nil {
			audioCodecs = dict["audioCodecs"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(status != nil) {
			dict["status"] = status!
		}
		if(isTrailer != nil) {
			dict["isTrailer"] = isTrailer!
		}
		if(streamerType != nil) {
			dict["streamerType"] = streamerType!.rawValue
		}
		if(drmProfileId != nil) {
			dict["drmProfileId"] = drmProfileId!
		}
		if(quality != nil) {
			dict["quality"] = quality!.rawValue
		}
		if(videoCodecs != nil) {
			dict["videoCodecs"] = videoCodecs!
		}
		if(audioCodecs != nil) {
			dict["audioCodecs"] = audioCodecs!
		}
		return dict
	}
}

