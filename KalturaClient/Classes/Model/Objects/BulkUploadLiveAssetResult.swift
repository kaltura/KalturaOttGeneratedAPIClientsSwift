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

open class BulkUploadLiveAssetResult: BulkUploadResult {

	public class BulkUploadLiveAssetResultTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var externalEpgIngestId: BaseTokenizedObject {
			get {
				return self.append("externalEpgIngestId") 
			}
		}
		
		public var programs: ArrayTokenizedObject<BulkUploadProgramAssetResult.BulkUploadProgramAssetResultTokenizer> {
			get {
				return ArrayTokenizedObject<BulkUploadProgramAssetResult.BulkUploadProgramAssetResultTokenizer>(self.append("programs"))
			} 
		}
	}

	/**  The internal kaltura channel id  */
	public var id: Int? = nil
	/**  Indicates the epg asset object id in the bulk file  */
	public var externalEpgIngestId: String? = nil
	/**  List of programs that were ingested to the channel  */
	public var programs: Array<BulkUploadProgramAssetResult>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(externalEpgIngestId: String) {
		self.dict["externalEpgIngestId"] = externalEpgIngestId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["externalEpgIngestId"] != nil {
			externalEpgIngestId = dict["externalEpgIngestId"] as? String
		}
		if dict["programs"] != nil {
			programs = try JSONParser.parse(array: dict["programs"] as! [Any])
		}

	}

}

