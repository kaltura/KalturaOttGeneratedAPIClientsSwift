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

/**  Filtering recordings  */
open class RecordingFilter: Filter {

	public class RecordingFilterTokenizer: Filter.FilterTokenizer {
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var externalRecordingIdIn: BaseTokenizedObject {
			get {
				return self.append("externalRecordingIdIn") 
			}
		}
		
		public var kSql: BaseTokenizedObject {
			get {
				return self.append("kSql") 
			}
		}
	}

	/**  Recording Statuses  */
	public var statusIn: String? = nil
	/**  Comma separated external identifiers  */
	public var externalRecordingIdIn: String? = nil
	/**  KSQL expression  */
	public var kSql: String? = nil


	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(externalRecordingIdIn: String) {
		self.dict["externalRecordingIdIn"] = externalRecordingIdIn
	}
	
	public func setMultiRequestToken(kSql: String) {
		self.dict["kSql"] = kSql
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["externalRecordingIdIn"] != nil {
			externalRecordingIdIn = dict["externalRecordingIdIn"] as? String
		}
		if dict["kSql"] != nil {
			kSql = dict["kSql"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(externalRecordingIdIn != nil) {
			dict["externalRecordingIdIn"] = externalRecordingIdIn!
		}
		if(kSql != nil) {
			dict["kSql"] = kSql!
		}
		return dict
	}
}

