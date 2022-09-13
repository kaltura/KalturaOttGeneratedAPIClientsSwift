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

open class IngestProgramResultsByRefineFilter: IngestEpgProgramResultFilter {

	public class IngestProgramResultsByRefineFilterTokenizer: IngestEpgProgramResultFilter.IngestEpgProgramResultFilterTokenizer {
		
		public var ingestStatusIn: BaseTokenizedObject {
			get {
				return self.append("ingestStatusIn") 
			}
		}
		
		public var startDateGreaterThan: BaseTokenizedObject {
			get {
				return self.append("startDateGreaterThan") 
			}
		}
		
		public var startDateSmallerThan: BaseTokenizedObject {
			get {
				return self.append("startDateSmallerThan") 
			}
		}
	}

	/**  Comma seperated valid statuses - only &amp;#39;FAILURE&amp;#39;,
	  &amp;#39;WARNING&amp;#39; and &amp;#39;SUCCESS&amp;#39; are valid strings. No
	  repetitions are allowed.  */
	public var ingestStatusIn: String? = nil
	/**  Program EPG start date greater then this value. Date and time represented as
	  epoch.  */
	public var startDateGreaterThan: Int64? = nil
	/**  Program EPG start date smaller than this value. Date and time represented as
	  epoch.  */
	public var startDateSmallerThan: Int64? = nil


	public func setMultiRequestToken(ingestStatusIn: String) {
		self.dict["ingestStatusIn"] = ingestStatusIn
	}
	
	public func setMultiRequestToken(startDateGreaterThan: String) {
		self.dict["startDateGreaterThan"] = startDateGreaterThan
	}
	
	public func setMultiRequestToken(startDateSmallerThan: String) {
		self.dict["startDateSmallerThan"] = startDateSmallerThan
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ingestStatusIn"] != nil {
			ingestStatusIn = dict["ingestStatusIn"] as? String
		}
		if dict["startDateGreaterThan"] != nil {
			startDateGreaterThan = Int64("\(dict["startDateGreaterThan"]!)")
		}
		if dict["startDateSmallerThan"] != nil {
			startDateSmallerThan = Int64("\(dict["startDateSmallerThan"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ingestStatusIn != nil) {
			dict["ingestStatusIn"] = ingestStatusIn!
		}
		if(startDateGreaterThan != nil) {
			dict["startDateGreaterThan"] = startDateGreaterThan!
		}
		if(startDateSmallerThan != nil) {
			dict["startDateSmallerThan"] = startDateSmallerThan!
		}
		return dict
	}
}

