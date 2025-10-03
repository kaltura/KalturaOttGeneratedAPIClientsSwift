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

open class VodIngestAssetResultAggregation: ObjectBase {

	public class VodIngestAssetResultAggregationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var ingestDateFrom: BaseTokenizedObject {
			get {
				return self.append("ingestDateFrom") 
			}
		}
		
		public var ingestDateTo: BaseTokenizedObject {
			get {
				return self.append("ingestDateTo") 
			}
		}
		
		public var failureCount: BaseTokenizedObject {
			get {
				return self.append("failureCount") 
			}
		}
		
		public var successCount: BaseTokenizedObject {
			get {
				return self.append("successCount") 
			}
		}
		
		public var externalFailureCount: BaseTokenizedObject {
			get {
				return self.append("externalFailureCount") 
			}
		}
		
		public var successWithWarningCount: BaseTokenizedObject {
			get {
				return self.append("successWithWarningCount") 
			}
		}
		
		public var averageTotalProcessingDuration: BaseTokenizedObject {
			get {
				return self.append("averageTotalProcessingDuration") 
			}
		}
		
		public var averageTotalActiveProcessingDuration: BaseTokenizedObject {
			get {
				return self.append("averageTotalActiveProcessingDuration") 
			}
		}
		
		public var p95TotalProcessingDuration: BaseTokenizedObject {
			get {
				return self.append("p95TotalProcessingDuration") 
			}
		}
		
		public var p95TotalActiveProcessingDuration: BaseTokenizedObject {
			get {
				return self.append("p95TotalActiveProcessingDuration") 
			}
		}
	}

	/**  Ingest date of the first asset in the response list. Date and time represented
	  as epoch.  */
	public var ingestDateFrom: Int64? = nil
	/**  Ingest date of the last asset in the response list. Date and time represented as
	  epoch.  */
	public var ingestDateTo: Int64? = nil
	/**  Number of assets which failed ingest. Calculated on the assets returned
	  according to the applied filters.  */
	public var failureCount: Int? = nil
	/**  Number of assets which succeeded ingest without any warning. Calculated on the
	  assets returned according to the applied filters.  */
	public var successCount: Int? = nil
	/**  Number of files (not assets) which failed ingest and are reported by external
	  none-WS_ingest entity. Calculated on the failed files returned according to the
	  applied filters.  */
	public var externalFailureCount: Int? = nil
	/**  Number of assets which succeeded ingest, but with warnings. Calculated on the
	  assets returned according to the applied filters.  */
	public var successWithWarningCount: Int? = nil
	/**  Average calculated for the total processing duration of the assets returned
	  according to the applied filters.  */
	public var averageTotalProcessingDuration: Int64? = nil
	/**  Average calculated for the active processing duration of the assets returned
	  according to the applied filters.  */
	public var averageTotalActiveProcessingDuration: Int64? = nil
	/**  0.95 percentile calculated for the total processing duration of the assets
	  returned according to the applied filters.  */
	public var p95TotalProcessingDuration: Int64? = nil
	/**  0.95 percentile calculated for the active processing duration of the assets
	  returned according to the applied filters.  */
	public var p95TotalActiveProcessingDuration: Int64? = nil


	public func setMultiRequestToken(ingestDateFrom: String) {
		self.dict["ingestDateFrom"] = ingestDateFrom
	}
	
	public func setMultiRequestToken(ingestDateTo: String) {
		self.dict["ingestDateTo"] = ingestDateTo
	}
	
	public func setMultiRequestToken(failureCount: String) {
		self.dict["failureCount"] = failureCount
	}
	
	public func setMultiRequestToken(successCount: String) {
		self.dict["successCount"] = successCount
	}
	
	public func setMultiRequestToken(externalFailureCount: String) {
		self.dict["externalFailureCount"] = externalFailureCount
	}
	
	public func setMultiRequestToken(successWithWarningCount: String) {
		self.dict["successWithWarningCount"] = successWithWarningCount
	}
	
	public func setMultiRequestToken(averageTotalProcessingDuration: String) {
		self.dict["averageTotalProcessingDuration"] = averageTotalProcessingDuration
	}
	
	public func setMultiRequestToken(averageTotalActiveProcessingDuration: String) {
		self.dict["averageTotalActiveProcessingDuration"] = averageTotalActiveProcessingDuration
	}
	
	public func setMultiRequestToken(p95TotalProcessingDuration: String) {
		self.dict["p95TotalProcessingDuration"] = p95TotalProcessingDuration
	}
	
	public func setMultiRequestToken(p95TotalActiveProcessingDuration: String) {
		self.dict["p95TotalActiveProcessingDuration"] = p95TotalActiveProcessingDuration
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ingestDateFrom"] != nil {
			ingestDateFrom = Int64("\(dict["ingestDateFrom"]!)")
		}
		if dict["ingestDateTo"] != nil {
			ingestDateTo = Int64("\(dict["ingestDateTo"]!)")
		}
		if dict["failureCount"] != nil {
			failureCount = dict["failureCount"] as? Int
		}
		if dict["successCount"] != nil {
			successCount = dict["successCount"] as? Int
		}
		if dict["externalFailureCount"] != nil {
			externalFailureCount = dict["externalFailureCount"] as? Int
		}
		if dict["successWithWarningCount"] != nil {
			successWithWarningCount = dict["successWithWarningCount"] as? Int
		}
		if dict["averageTotalProcessingDuration"] != nil {
			averageTotalProcessingDuration = Int64("\(dict["averageTotalProcessingDuration"]!)")
		}
		if dict["averageTotalActiveProcessingDuration"] != nil {
			averageTotalActiveProcessingDuration = Int64("\(dict["averageTotalActiveProcessingDuration"]!)")
		}
		if dict["p95TotalProcessingDuration"] != nil {
			p95TotalProcessingDuration = Int64("\(dict["p95TotalProcessingDuration"]!)")
		}
		if dict["p95TotalActiveProcessingDuration"] != nil {
			p95TotalActiveProcessingDuration = Int64("\(dict["p95TotalActiveProcessingDuration"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ingestDateFrom != nil) {
			dict["ingestDateFrom"] = ingestDateFrom!
		}
		if(ingestDateTo != nil) {
			dict["ingestDateTo"] = ingestDateTo!
		}
		if(failureCount != nil) {
			dict["failureCount"] = failureCount!
		}
		if(successCount != nil) {
			dict["successCount"] = successCount!
		}
		if(externalFailureCount != nil) {
			dict["externalFailureCount"] = externalFailureCount!
		}
		if(successWithWarningCount != nil) {
			dict["successWithWarningCount"] = successWithWarningCount!
		}
		if(averageTotalProcessingDuration != nil) {
			dict["averageTotalProcessingDuration"] = averageTotalProcessingDuration!
		}
		if(averageTotalActiveProcessingDuration != nil) {
			dict["averageTotalActiveProcessingDuration"] = averageTotalActiveProcessingDuration!
		}
		if(p95TotalProcessingDuration != nil) {
			dict["p95TotalProcessingDuration"] = p95TotalProcessingDuration!
		}
		if(p95TotalActiveProcessingDuration != nil) {
			dict["p95TotalActiveProcessingDuration"] = p95TotalActiveProcessingDuration!
		}
		return dict
	}
}

