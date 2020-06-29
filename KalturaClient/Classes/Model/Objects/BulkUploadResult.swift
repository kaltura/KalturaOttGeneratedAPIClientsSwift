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

/**  Bulk Upload Result  */
open class BulkUploadResult: ObjectBase {

	public class BulkUploadResultTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var index: BaseTokenizedObject {
			get {
				return self.append("index") 
			}
		}
		
		public var bulkUploadId: BaseTokenizedObject {
			get {
				return self.append("bulkUploadId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var errors: ArrayTokenizedObject<Message.MessageTokenizer> {
			get {
				return ArrayTokenizedObject<Message.MessageTokenizer>(self.append("errors"))
			} 
		}
		
		public var warnings: ArrayTokenizedObject<Message.MessageTokenizer> {
			get {
				return ArrayTokenizedObject<Message.MessageTokenizer>(self.append("warnings"))
			} 
		}
	}

	/**  the result ObjectId (assetId, userId etc)  */
	public var objectId: Int64? = nil
	/**  result index  */
	public var index: Int? = nil
	/**  Bulk upload identifier  */
	public var bulkUploadId: Int64? = nil
	/**  status  */
	public var status: BulkUploadResultStatus? = nil
	/**  A list of errors  */
	public var errors: Array<Message>? = nil
	/**  A list of warnings  */
	public var warnings: Array<Message>? = nil


	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(index: String) {
		self.dict["index"] = index
	}
	
	public func setMultiRequestToken(bulkUploadId: String) {
		self.dict["bulkUploadId"] = bulkUploadId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["objectId"] != nil {
			objectId = Int64("\(dict["objectId"]!)")
		}
		if dict["index"] != nil {
			index = dict["index"] as? Int
		}
		if dict["bulkUploadId"] != nil {
			bulkUploadId = Int64("\(dict["bulkUploadId"]!)")
		}
		if dict["status"] != nil {
			status = BulkUploadResultStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["errors"] != nil {
			errors = try JSONParser.parse(array: dict["errors"] as! [Any])
		}
		if dict["warnings"] != nil {
			warnings = try JSONParser.parse(array: dict["warnings"] as! [Any])
		}

	}

}

