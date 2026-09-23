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

open class AggregatedIngestInfo: ObjectBase {

	public class AggregatedIngestInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var resultsCount: BaseTokenizedObject {
			get {
				return self.append("resultsCount") 
			}
		}
		
		public var totalFailureCount: BaseTokenizedObject {
			get {
				return self.append("totalFailureCount") 
			}
		}
		
		public var partialFailureCount: BaseTokenizedObject {
			get {
				return self.append("partialFailureCount") 
			}
		}
		
		public var warningsCount: BaseTokenizedObject {
			get {
				return self.append("warningsCount") 
			}
		}
	}

	/**  Number of results  */
	public var resultsCount: Int64? = nil
	/**  Number of results that include at least one error of severity TotalFailure  */
	public var totalFailureCount: Int64? = nil
	/**  Number of results that include no error with severity TotalFailure but at at
	  least one error of severity PartialFailure  */
	public var partialFailureCount: Int64? = nil
	/**  Number of results that include at least one warning  */
	public var warningsCount: Int64? = nil


	public func setMultiRequestToken(resultsCount: String) {
		self.dict["resultsCount"] = resultsCount
	}
	
	public func setMultiRequestToken(totalFailureCount: String) {
		self.dict["totalFailureCount"] = totalFailureCount
	}
	
	public func setMultiRequestToken(partialFailureCount: String) {
		self.dict["partialFailureCount"] = partialFailureCount
	}
	
	public func setMultiRequestToken(warningsCount: String) {
		self.dict["warningsCount"] = warningsCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["resultsCount"] != nil {
			resultsCount = Int64("\(dict["resultsCount"]!)")
		}
		if dict["totalFailureCount"] != nil {
			totalFailureCount = Int64("\(dict["totalFailureCount"]!)")
		}
		if dict["partialFailureCount"] != nil {
			partialFailureCount = Int64("\(dict["partialFailureCount"]!)")
		}
		if dict["warningsCount"] != nil {
			warningsCount = Int64("\(dict["warningsCount"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(resultsCount != nil) {
			dict["resultsCount"] = resultsCount!
		}
		if(totalFailureCount != nil) {
			dict["totalFailureCount"] = totalFailureCount!
		}
		if(partialFailureCount != nil) {
			dict["partialFailureCount"] = partialFailureCount!
		}
		if(warningsCount != nil) {
			dict["warningsCount"] = warningsCount!
		}
		return dict
	}
}

