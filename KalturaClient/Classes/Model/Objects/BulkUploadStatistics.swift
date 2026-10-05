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

/**  Bulk Upload Statistics  */
open class BulkUploadStatistics: ObjectBase {

	public class BulkUploadStatisticsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var pending: BaseTokenizedObject {
			get {
				return self.append("pending") 
			}
		}
		
		public var uploaded: BaseTokenizedObject {
			get {
				return self.append("uploaded") 
			}
		}
		
		public var queued: BaseTokenizedObject {
			get {
				return self.append("queued") 
			}
		}
		
		public var parsing: BaseTokenizedObject {
			get {
				return self.append("parsing") 
			}
		}
		
		public var processing: BaseTokenizedObject {
			get {
				return self.append("processing") 
			}
		}
		
		public var processed: BaseTokenizedObject {
			get {
				return self.append("processed") 
			}
		}
		
		public var success: BaseTokenizedObject {
			get {
				return self.append("success") 
			}
		}
		
		public var partial: BaseTokenizedObject {
			get {
				return self.append("partial") 
			}
		}
		
		public var failed: BaseTokenizedObject {
			get {
				return self.append("failed") 
			}
		}
		
		public var fatal: BaseTokenizedObject {
			get {
				return self.append("fatal") 
			}
		}
	}

	/**  count of bulk upload in pending status  */
	public var pending: Int64? = nil
	/**  count of bulk Uploaded in uploaded status  */
	public var uploaded: Int64? = nil
	/**  count of bulk upload in queued status  */
	public var queued: Int64? = nil
	/**  count of bulk upload in parsing status  */
	public var parsing: Int64? = nil
	/**  count of bulk upload in processing status  */
	public var processing: Int64? = nil
	/**  count of bulk upload in processed status  */
	public var processed: Int64? = nil
	/**  count of bulk upload in success status  */
	public var success: Int64? = nil
	/**  count of bulk upload in partial status  */
	public var partial: Int64? = nil
	/**  count of bulk upload in failed status  */
	public var failed: Int64? = nil
	/**  count of bulk upload in fatal status  */
	public var fatal: Int64? = nil


	public func setMultiRequestToken(pending: String) {
		self.dict["pending"] = pending
	}
	
	public func setMultiRequestToken(uploaded: String) {
		self.dict["uploaded"] = uploaded
	}
	
	public func setMultiRequestToken(queued: String) {
		self.dict["queued"] = queued
	}
	
	public func setMultiRequestToken(parsing: String) {
		self.dict["parsing"] = parsing
	}
	
	public func setMultiRequestToken(processing: String) {
		self.dict["processing"] = processing
	}
	
	public func setMultiRequestToken(processed: String) {
		self.dict["processed"] = processed
	}
	
	public func setMultiRequestToken(success: String) {
		self.dict["success"] = success
	}
	
	public func setMultiRequestToken(partial: String) {
		self.dict["partial"] = partial
	}
	
	public func setMultiRequestToken(failed: String) {
		self.dict["failed"] = failed
	}
	
	public func setMultiRequestToken(fatal: String) {
		self.dict["fatal"] = fatal
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pending"] != nil {
			pending = Int64("\(dict["pending"]!)")
		}
		if dict["uploaded"] != nil {
			uploaded = Int64("\(dict["uploaded"]!)")
		}
		if dict["queued"] != nil {
			queued = Int64("\(dict["queued"]!)")
		}
		if dict["parsing"] != nil {
			parsing = Int64("\(dict["parsing"]!)")
		}
		if dict["processing"] != nil {
			processing = Int64("\(dict["processing"]!)")
		}
		if dict["processed"] != nil {
			processed = Int64("\(dict["processed"]!)")
		}
		if dict["success"] != nil {
			success = Int64("\(dict["success"]!)")
		}
		if dict["partial"] != nil {
			partial = Int64("\(dict["partial"]!)")
		}
		if dict["failed"] != nil {
			failed = Int64("\(dict["failed"]!)")
		}
		if dict["fatal"] != nil {
			fatal = Int64("\(dict["fatal"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(pending != nil) {
			dict["pending"] = pending!
		}
		if(uploaded != nil) {
			dict["uploaded"] = uploaded!
		}
		if(queued != nil) {
			dict["queued"] = queued!
		}
		if(parsing != nil) {
			dict["parsing"] = parsing!
		}
		if(processing != nil) {
			dict["processing"] = processing!
		}
		if(processed != nil) {
			dict["processed"] = processed!
		}
		if(success != nil) {
			dict["success"] = success!
		}
		if(partial != nil) {
			dict["partial"] = partial!
		}
		if(failed != nil) {
			dict["failed"] = failed!
		}
		if(fatal != nil) {
			dict["fatal"] = fatal!
		}
		return dict
	}
}

