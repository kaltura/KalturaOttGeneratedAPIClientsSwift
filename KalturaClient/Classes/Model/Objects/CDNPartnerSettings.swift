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

open class CDNPartnerSettings: ObjectBase {

	public class CDNPartnerSettingsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var defaultAdapterId: BaseTokenizedObject {
			get {
				return self.append("defaultAdapterId") 
			}
		}
		
		public var defaultRecordingAdapterId: BaseTokenizedObject {
			get {
				return self.append("defaultRecordingAdapterId") 
			}
		}
	}

	/**  Default CDN adapter identifier  */
	public var defaultAdapterId: Int? = nil
	/**  Default recording CDN adapter identifier  */
	public var defaultRecordingAdapterId: Int? = nil


	public func setMultiRequestToken(defaultAdapterId: String) {
		self.dict["defaultAdapterId"] = defaultAdapterId
	}
	
	public func setMultiRequestToken(defaultRecordingAdapterId: String) {
		self.dict["defaultRecordingAdapterId"] = defaultRecordingAdapterId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["defaultAdapterId"] != nil {
			defaultAdapterId = dict["defaultAdapterId"] as? Int
		}
		if dict["defaultRecordingAdapterId"] != nil {
			defaultRecordingAdapterId = dict["defaultRecordingAdapterId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(defaultAdapterId != nil) {
			dict["defaultAdapterId"] = defaultAdapterId!
		}
		if(defaultRecordingAdapterId != nil) {
			dict["defaultRecordingAdapterId"] = defaultRecordingAdapterId!
		}
		return dict
	}
}

