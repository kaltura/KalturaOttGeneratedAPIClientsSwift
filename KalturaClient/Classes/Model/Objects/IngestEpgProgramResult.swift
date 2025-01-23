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

open class IngestEpgProgramResult: ObjectBase {

	public class IngestEpgProgramResultTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var programId: BaseTokenizedObject {
			get {
				return self.append("programId") 
			}
		}
		
		public var externalProgramId: BaseTokenizedObject {
			get {
				return self.append("externalProgramId") 
			}
		}
		
		public var linearChannelId: BaseTokenizedObject {
			get {
				return self.append("linearChannelId") 
			}
		}
		
		public var indexInFile: BaseTokenizedObject {
			get {
				return self.append("indexInFile") 
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var errors: ArrayTokenizedObject<EpgIngestErrorMessage.EpgIngestErrorMessageTokenizer> {
			get {
				return ArrayTokenizedObject<EpgIngestErrorMessage.EpgIngestErrorMessageTokenizer>(self.append("errors"))
			} 
		}
		
		public var warnings: ArrayTokenizedObject<Message.MessageTokenizer> {
			get {
				return ArrayTokenizedObject<Message.MessageTokenizer>(self.append("warnings"))
			} 
		}
	}

	/**  The unique ingested program id  */
	public var programId: Int64? = nil
	/**  An external program id  */
	public var externalProgramId: String? = nil
	/**  The id of the linear channel asset that the program belongs to  */
	public var linearChannelId: Int64? = nil
	/**  The index of the program in the ingested file  */
	public var indexInFile: Int64? = nil
	/**  Program EPG start date. Date and time represented as epoch  */
	public var startDate: Int64? = nil
	/**  Program EPG end date. Date and time represented as epoch  */
	public var endDate: Int64? = nil
	/**  The program status  */
	public var status: IngestEpgProgramStatus? = nil
	/**  List of errors. Note: error cause the data in question or the whole ingest to
	  fail  */
	public var errors: Array<EpgIngestErrorMessage>? = nil
	/**  List of warnings. Note: warning cause no failure  */
	public var warnings: Array<Message>? = nil


	public func setMultiRequestToken(programId: String) {
		self.dict["programId"] = programId
	}
	
	public func setMultiRequestToken(externalProgramId: String) {
		self.dict["externalProgramId"] = externalProgramId
	}
	
	public func setMultiRequestToken(linearChannelId: String) {
		self.dict["linearChannelId"] = linearChannelId
	}
	
	public func setMultiRequestToken(indexInFile: String) {
		self.dict["indexInFile"] = indexInFile
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["programId"] != nil {
			programId = Int64("\(dict["programId"]!)")
		}
		if dict["externalProgramId"] != nil {
			externalProgramId = dict["externalProgramId"] as? String
		}
		if dict["linearChannelId"] != nil {
			linearChannelId = Int64("\(dict["linearChannelId"]!)")
		}
		if dict["indexInFile"] != nil {
			indexInFile = Int64("\(dict["indexInFile"]!)")
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["status"] != nil {
			status = IngestEpgProgramStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["errors"] != nil {
			errors = try JSONParser.parse(array: dict["errors"] as! [Any])
		}
		if dict["warnings"] != nil {
			warnings = try JSONParser.parse(array: dict["warnings"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(programId != nil) {
			dict["programId"] = programId!
		}
		if(externalProgramId != nil) {
			dict["externalProgramId"] = externalProgramId!
		}
		if(linearChannelId != nil) {
			dict["linearChannelId"] = linearChannelId!
		}
		if(indexInFile != nil) {
			dict["indexInFile"] = indexInFile!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(errors != nil) {
			dict["errors"] = errors!.map { value in value.toDictionary() }
		}
		if(warnings != nil) {
			dict["warnings"] = warnings!.map { value in value.toDictionary() }
		}
		return dict
	}
}

