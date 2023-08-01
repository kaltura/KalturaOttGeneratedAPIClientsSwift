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

open class IngestEpg: ObjectBase {

	public class IngestEpgTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var ingestId: BaseTokenizedObject {
			get {
				return self.append("ingestId") 
			}
		}
		
		public var ingestName: BaseTokenizedObject {
			get {
				return self.append("ingestName") 
			}
		}
		
		public var ingestFilenameExtension: BaseTokenizedObject {
			get {
				return self.append("ingestFilenameExtension") 
			}
		}
		
		public var createdDate: BaseTokenizedObject {
			get {
				return self.append("createdDate") 
			}
		}
		
		public var ingestedByUserId: BaseTokenizedObject {
			get {
				return self.append("ingestedByUserId") 
			}
		}
		
		public var completedDate: BaseTokenizedObject {
			get {
				return self.append("completedDate") 
			}
		}
		
		public var ingestProfileId: BaseTokenizedObject {
			get {
				return self.append("ingestProfileId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Unique id of the ingest job in question  */
	public var ingestId: Int64? = nil
	/**  The ingested file name without its extention  */
	public var ingestName: String? = nil
	/**  The ingested file name extention  */
	public var ingestFilenameExtension: String? = nil
	/**  The ingest job created date and time. Date and time represented as epoch.  */
	public var createdDate: Int64? = nil
	/**  The user id of the addFromBulkUpload caller.  */
	public var ingestedByUserId: Int64? = nil
	/**  The ingest job completed date and time. Date and time represented as epoch.  */
	public var completedDate: Int64? = nil
	/**  The ingest profile id that of the ingest job.  */
	public var ingestProfileId: Int64? = nil
	/**  The ingest profile id that of the ingest job.  */
	public var status: IngestStatus? = nil


	public func setMultiRequestToken(ingestId: String) {
		self.dict["ingestId"] = ingestId
	}
	
	public func setMultiRequestToken(ingestName: String) {
		self.dict["ingestName"] = ingestName
	}
	
	public func setMultiRequestToken(ingestFilenameExtension: String) {
		self.dict["ingestFilenameExtension"] = ingestFilenameExtension
	}
	
	public func setMultiRequestToken(createdDate: String) {
		self.dict["createdDate"] = createdDate
	}
	
	public func setMultiRequestToken(ingestedByUserId: String) {
		self.dict["ingestedByUserId"] = ingestedByUserId
	}
	
	public func setMultiRequestToken(completedDate: String) {
		self.dict["completedDate"] = completedDate
	}
	
	public func setMultiRequestToken(ingestProfileId: String) {
		self.dict["ingestProfileId"] = ingestProfileId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ingestId"] != nil {
			ingestId = Int64("\(dict["ingestId"]!)")
		}
		if dict["ingestName"] != nil {
			ingestName = dict["ingestName"] as? String
		}
		if dict["ingestFilenameExtension"] != nil {
			ingestFilenameExtension = dict["ingestFilenameExtension"] as? String
		}
		if dict["createdDate"] != nil {
			createdDate = Int64("\(dict["createdDate"]!)")
		}
		if dict["ingestedByUserId"] != nil {
			ingestedByUserId = Int64("\(dict["ingestedByUserId"]!)")
		}
		if dict["completedDate"] != nil {
			completedDate = Int64("\(dict["completedDate"]!)")
		}
		if dict["ingestProfileId"] != nil {
			ingestProfileId = Int64("\(dict["ingestProfileId"]!)")
		}
		if dict["status"] != nil {
			status = IngestStatus(rawValue: "\(dict["status"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ingestName != nil) {
			dict["ingestName"] = ingestName!
		}
		if(ingestFilenameExtension != nil) {
			dict["ingestFilenameExtension"] = ingestFilenameExtension!
		}
		if(createdDate != nil) {
			dict["createdDate"] = createdDate!
		}
		if(ingestedByUserId != nil) {
			dict["ingestedByUserId"] = ingestedByUserId!
		}
		if(completedDate != nil) {
			dict["completedDate"] = completedDate!
		}
		if(ingestProfileId != nil) {
			dict["ingestProfileId"] = ingestProfileId!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		return dict
	}
}

