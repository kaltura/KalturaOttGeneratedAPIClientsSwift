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

open class DefaultPlaybackAdapters: ObjectBase {

	public class DefaultPlaybackAdaptersTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var mediaAdapterId: BaseTokenizedObject {
			get {
				return self.append("mediaAdapterId") 
			}
		}
		
		public var epgAdapterId: BaseTokenizedObject {
			get {
				return self.append("epgAdapterId") 
			}
		}
		
		public var recordingAdapterId: BaseTokenizedObject {
			get {
				return self.append("recordingAdapterId") 
			}
		}
	}

	/**  Default adapter identifier for media  */
	public var mediaAdapterId: Int64? = nil
	/**  Default adapter identifier for epg  */
	public var epgAdapterId: Int64? = nil
	/**  Default adapter identifier for recording  */
	public var recordingAdapterId: Int64? = nil


	public func setMultiRequestToken(mediaAdapterId: String) {
		self.dict["mediaAdapterId"] = mediaAdapterId
	}
	
	public func setMultiRequestToken(epgAdapterId: String) {
		self.dict["epgAdapterId"] = epgAdapterId
	}
	
	public func setMultiRequestToken(recordingAdapterId: String) {
		self.dict["recordingAdapterId"] = recordingAdapterId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mediaAdapterId"] != nil {
			mediaAdapterId = Int64("\(dict["mediaAdapterId"]!)")
		}
		if dict["epgAdapterId"] != nil {
			epgAdapterId = Int64("\(dict["epgAdapterId"]!)")
		}
		if dict["recordingAdapterId"] != nil {
			recordingAdapterId = Int64("\(dict["recordingAdapterId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mediaAdapterId != nil) {
			dict["mediaAdapterId"] = mediaAdapterId!
		}
		if(epgAdapterId != nil) {
			dict["epgAdapterId"] = epgAdapterId!
		}
		if(recordingAdapterId != nil) {
			dict["recordingAdapterId"] = recordingAdapterId!
		}
		return dict
	}
}

