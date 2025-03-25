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

open class LicensedUrlEpgRequest: LicensedUrlMediaRequest {

	public class LicensedUrlEpgRequestTokenizer: LicensedUrlMediaRequest.LicensedUrlMediaRequestTokenizer {
		
		public var streamType: BaseTokenizedObject {
			get {
				return self.append("streamType") 
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
	}

	/**  The stream type to get the URL for  */
	public var streamType: StreamType? = nil
	/**  The start date of the stream (epoch)  */
	public var startDate: Int64? = nil


	public func setMultiRequestToken(streamType: String) {
		self.dict["streamType"] = streamType
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["streamType"] != nil {
			streamType = StreamType(rawValue: "\(dict["streamType"]!)")
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(streamType != nil) {
			dict["streamType"] = streamType!.rawValue
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		return dict
	}
}

