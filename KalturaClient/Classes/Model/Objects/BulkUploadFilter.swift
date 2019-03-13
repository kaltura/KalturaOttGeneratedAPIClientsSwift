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

/**  Bulk Upload Filter  */
open class BulkUploadFilter: Filter {

	public class BulkUploadFilterTokenizer: Filter.FilterTokenizer {
		
		public var bulkObjectNameEqual: BaseTokenizedObject {
			get {
				return self.append("bulkObjectNameEqual") 
			}
		}
		
		public var createDateGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createDateGreaterThanOrEqual") 
			}
		}
		
		public var uploadedByUserIdEqualCurrent: BaseTokenizedObject {
			get {
				return self.append("uploadedByUserIdEqualCurrent") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
	}

	/**  bulk objects Type name (must be type of KalturaOTTObject)  */
	public var bulkObjectNameEqual: String? = nil
	/**  upload date to search within (search in the last 60 days)  */
	public var createDateGreaterThanOrEqual: Int64? = nil
	/**  Indicates if to get the BulkUpload list that created by current user or by the
	  entire group.  */
	public var uploadedByUserIdEqualCurrent: Bool? = nil
	/**  Comma separated list of BulkUpload Statuses to search\filter  */
	public var statusIn: String? = nil


	public func setMultiRequestToken(bulkObjectNameEqual: String) {
		self.dict["bulkObjectNameEqual"] = bulkObjectNameEqual
	}
	
	public func setMultiRequestToken(createDateGreaterThanOrEqual: String) {
		self.dict["createDateGreaterThanOrEqual"] = createDateGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(uploadedByUserIdEqualCurrent: String) {
		self.dict["uploadedByUserIdEqualCurrent"] = uploadedByUserIdEqualCurrent
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["bulkObjectNameEqual"] != nil {
			bulkObjectNameEqual = dict["bulkObjectNameEqual"] as? String
		}
		if dict["createDateGreaterThanOrEqual"] != nil {
			createDateGreaterThanOrEqual = Int64("\(dict["createDateGreaterThanOrEqual"]!)")
		}
		if dict["uploadedByUserIdEqualCurrent"] != nil {
			uploadedByUserIdEqualCurrent = dict["uploadedByUserIdEqualCurrent"] as? Bool
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(bulkObjectNameEqual != nil) {
			dict["bulkObjectNameEqual"] = bulkObjectNameEqual!
		}
		if(createDateGreaterThanOrEqual != nil) {
			dict["createDateGreaterThanOrEqual"] = createDateGreaterThanOrEqual!
		}
		if(uploadedByUserIdEqualCurrent != nil) {
			dict["uploadedByUserIdEqualCurrent"] = uploadedByUserIdEqualCurrent!
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		return dict
	}
}

