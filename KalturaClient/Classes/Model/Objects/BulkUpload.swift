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
// Copyright (C) 2006-2019  Kaltura Inc.
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
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
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
		
		public var uploadTokenId: BaseTokenizedObject {
			get {
				return self.append("uploadTokenId") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var results: ArrayTokenizedObject<BulkUploadResult.BulkUploadResultTokenizer> {
			get {
				return ArrayTokenizedObject<BulkUploadResult.BulkUploadResultTokenizer>(self.append("results"))
			} 
		}
	}

	/**  Bulk identifier  */
	public var id: Int64? = nil
	/**  Status  */
	public var status: BatchUploadJobStatus? = nil
	/**  Specifies when was the bulk action created. Date and time represented as epoch  */
	public var createDate: Int64? = nil
	/**  Specifies when was the bulk action last updated. Date and time represented as
	  epoch  */
	public var updateDate: Int64? = nil
	/**  Upload Token Id  */
	public var uploadTokenId: String? = nil
	/**  Action  */
	public var action: BatchUploadJobAction? = nil
	/**  A list of results  */
	public var results: Array<BulkUploadResult>? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(uploadTokenId: String) {
		self.dict["uploadTokenId"] = uploadTokenId
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["status"] != nil {
			status = BatchUploadJobStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["uploadTokenId"] != nil {
			uploadTokenId = dict["uploadTokenId"] as? String
		}
		if dict["action"] != nil {
			action = BatchUploadJobAction(rawValue: "\(dict["action"]!)")
		}
		if dict["results"] != nil {
			results = try JSONParser.parse(array: dict["results"] as! [Any])
		}

	}

}

