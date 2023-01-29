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

open class BulkUploadProgramAssetResult: BulkUploadResult {

	public class BulkUploadProgramAssetResultTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
		public var programId: BaseTokenizedObject {
			get {
				return self.append("programId") 
			}
		}
		
		public var programExternalId: BaseTokenizedObject {
			get {
				return self.append("programExternalId") 
			}
		}
		
		public var liveAssetId: BaseTokenizedObject {
			get {
				return self.append("liveAssetId") 
			}
		}
	}

	/**  The programID that was created  */
	public var programId: Int? = nil
	/**  The external program Id as was sent in the bulk xml file  */
	public var programExternalId: String? = nil
	/**  The  live asset Id that was identified according liveAssetExternalId that was
	  sent in bulk xml file  */
	public var liveAssetId: Int? = nil


	public func setMultiRequestToken(programId: String) {
		self.dict["programId"] = programId
	}
	
	public func setMultiRequestToken(programExternalId: String) {
		self.dict["programExternalId"] = programExternalId
	}
	
	public func setMultiRequestToken(liveAssetId: String) {
		self.dict["liveAssetId"] = liveAssetId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["programId"] != nil {
			programId = dict["programId"] as? Int
		}
		if dict["programExternalId"] != nil {
			programExternalId = dict["programExternalId"] as? String
		}
		if dict["liveAssetId"] != nil {
			liveAssetId = dict["liveAssetId"] as? Int
		}

	}

}

