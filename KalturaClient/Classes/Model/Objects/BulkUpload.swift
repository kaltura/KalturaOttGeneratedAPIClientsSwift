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

/**  Bulk Upload  */
open class BulkUpload: ObjectBase {

	public class BulkUploadTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var numOfObjects: BaseTokenizedObject {
			get {
				return self.append("numOfObjects") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
		
		public var uploadedByUserId: BaseTokenizedObject {
			get {
				return self.append("uploadedByUserId") 
			}
		}
		
		public var results: ArrayTokenizedObject<BulkUploadResult.BulkUploadResultTokenizer> {
			get {
				return ArrayTokenizedObject<BulkUploadResult.BulkUploadResultTokenizer>(self.append("results"))
			} 
		}
		
		public var errors: ArrayTokenizedObject<Message.MessageTokenizer> {
			get {
				return ArrayTokenizedObject<Message.MessageTokenizer>(self.append("errors"))
			} 
		}
	}

	/**  Bulk identifier  */
	public var id: Int64? = nil
	/**  File Name  */
	public var fileName: String? = nil
	/**  Status  */
	public var status: BulkUploadJobStatus? = nil
	/**  Action  */
	public var action: BulkUploadJobAction? = nil
	/**  Total number of objects in file  */
	public var numOfObjects: Int? = nil
	/**  Specifies when was the bulk action created. Date and time represented as epoch  */
	public var createDate: Int64? = nil
	/**  Specifies when was the bulk action last updated. Date and time represented as
	  epoch  */
	public var updateDate: Int64? = nil
	/**  The user who uploaded this bulk  */
	public var uploadedByUserId: Int64? = nil
	/**  A list of results  */
	public var results: Array<BulkUploadResult>? = nil
	/**  A list of errors  */
	public var errors: Array<Message>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(fileName: String) {
		self.dict["fileName"] = fileName
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(numOfObjects: String) {
		self.dict["numOfObjects"] = numOfObjects
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(uploadedByUserId: String) {
		self.dict["uploadedByUserId"] = uploadedByUserId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["status"] != nil {
			status = BulkUploadJobStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["action"] != nil {
			action = BulkUploadJobAction(rawValue: "\(dict["action"]!)")
		}
		if dict["numOfObjects"] != nil {
			numOfObjects = dict["numOfObjects"] as? Int
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["uploadedByUserId"] != nil {
			uploadedByUserId = Int64("\(dict["uploadedByUserId"]!)")
		}
		if dict["results"] != nil {
			results = try JSONParser.parse(array: dict["results"] as! [Any])
		}
		if dict["errors"] != nil {
			errors = try JSONParser.parse(array: dict["errors"] as! [Any])
		}

	}

}

