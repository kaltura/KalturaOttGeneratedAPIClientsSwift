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

open class ExternalRecording: Recording {

	public class ExternalRecordingTokenizer: Recording.RecordingTokenizer {
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var metaData: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("metaData"))
			}
		}
		
		public var expiryDate: BaseTokenizedObject {
			get {
				return self.append("expiryDate") 
			}
		}
	}

	/**  External identifier for the recording  */
	public var externalId: String? = nil
	/**  key/value map field for extra data  */
	public var metaData: Dictionary<String, StringValue>? = nil
	/**  Specifies until when the recording is available. Date and time represented as
	  epoch.  */
	public var expiryDate: Int64? = nil


	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(expiryDate: String) {
		self.dict["expiryDate"] = expiryDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["metaData"] != nil {
			metaData = try JSONParser.parse(map: dict["metaData"] as! [String: Any])
		}
		if dict["expiryDate"] != nil {
			expiryDate = Int64("\(dict["expiryDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(metaData != nil) {
			dict["metaData"] = metaData!.toDictionary()
		}
		return dict
	}
}

