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

open class IngestByCompoundFilter: Filter {

	public class IngestByCompoundFilterTokenizer: Filter.FilterTokenizer {
		
		public var ingestNameContains: BaseTokenizedObject {
			get {
				return self.append("ingestNameContains") 
			}
		}
		
		public var ingestedByUserIdIn: BaseTokenizedObject {
			get {
				return self.append("ingestedByUserIdIn") 
			}
		}
		
		public var ingestStatusIn: BaseTokenizedObject {
			get {
				return self.append("ingestStatusIn") 
			}
		}
		
		public var createdDateGreaterThan: BaseTokenizedObject {
			get {
				return self.append("createdDateGreaterThan") 
			}
		}
		
		public var createdDateSmallerThan: BaseTokenizedObject {
			get {
				return self.append("createdDateSmallerThan") 
			}
		}
	}

	/**  A string that is included in the ingest file name  */
	public var ingestNameContains: String? = nil
	/**  Comma seperated user ids  */
	public var ingestedByUserIdIn: String? = nil
	/**  Comma seperated valid stutuses  */
	public var ingestStatusIn: String? = nil
	/**  Ingest created date greater then this value. . Date and time represented as
	  epoch.  */
	public var createdDateGreaterThan: Int64? = nil
	/**  Ingest created date smaller than this value. Date and time represented as epoch.  */
	public var createdDateSmallerThan: Int64? = nil


	public func setMultiRequestToken(ingestNameContains: String) {
		self.dict["ingestNameContains"] = ingestNameContains
	}
	
	public func setMultiRequestToken(ingestedByUserIdIn: String) {
		self.dict["ingestedByUserIdIn"] = ingestedByUserIdIn
	}
	
	public func setMultiRequestToken(ingestStatusIn: String) {
		self.dict["ingestStatusIn"] = ingestStatusIn
	}
	
	public func setMultiRequestToken(createdDateGreaterThan: String) {
		self.dict["createdDateGreaterThan"] = createdDateGreaterThan
	}
	
	public func setMultiRequestToken(createdDateSmallerThan: String) {
		self.dict["createdDateSmallerThan"] = createdDateSmallerThan
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ingestNameContains"] != nil {
			ingestNameContains = dict["ingestNameContains"] as? String
		}
		if dict["ingestedByUserIdIn"] != nil {
			ingestedByUserIdIn = dict["ingestedByUserIdIn"] as? String
		}
		if dict["ingestStatusIn"] != nil {
			ingestStatusIn = dict["ingestStatusIn"] as? String
		}
		if dict["createdDateGreaterThan"] != nil {
			createdDateGreaterThan = Int64("\(dict["createdDateGreaterThan"]!)")
		}
		if dict["createdDateSmallerThan"] != nil {
			createdDateSmallerThan = Int64("\(dict["createdDateSmallerThan"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ingestNameContains != nil) {
			dict["ingestNameContains"] = ingestNameContains!
		}
		if(ingestedByUserIdIn != nil) {
			dict["ingestedByUserIdIn"] = ingestedByUserIdIn!
		}
		if(ingestStatusIn != nil) {
			dict["ingestStatusIn"] = ingestStatusIn!
		}
		if(createdDateGreaterThan != nil) {
			dict["createdDateGreaterThan"] = createdDateGreaterThan!
		}
		if(createdDateSmallerThan != nil) {
			dict["createdDateSmallerThan"] = createdDateSmallerThan!
		}
		return dict
	}
}

