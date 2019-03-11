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
		
		public var fileObjectNameEqual: BaseTokenizedObject {
			get {
				return self.append("fileObjectNameEqual") 
			}
		}
		
		public var createDateGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createDateGreaterThanOrEqual") 
			}
		}
		
		public var userIdEqualCurrent: BaseTokenizedObject {
			get {
				return self.append("userIdEqualCurrent") 
			}
		}
		
		public var shouldGetOnGoingBulkUploads: BaseTokenizedObject {
			get {
				return self.append("shouldGetOnGoingBulkUploads") 
			}
		}
	}

	/**  File&amp;#39;s objectType name (must be type of KalturaOTTObject)  */
	public var fileObjectNameEqual: String? = nil
	/**  upload date to search within (search in the last 60 days)  */
	public var createDateGreaterThanOrEqual: Int64? = nil
	/**  Indicates if to get the BulkUpload list that created by current user or by the
	  entire group.  */
	public var userIdEqualCurrent: Bool? = nil
	/**  Indicates if to get the BulkUpload list that are stil in OnGoing process or
	  finished.  */
	public var shouldGetOnGoingBulkUploads: Bool? = nil


	public func setMultiRequestToken(fileObjectNameEqual: String) {
		self.dict["fileObjectNameEqual"] = fileObjectNameEqual
	}
	
	public func setMultiRequestToken(createDateGreaterThanOrEqual: String) {
		self.dict["createDateGreaterThanOrEqual"] = createDateGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(userIdEqualCurrent: String) {
		self.dict["userIdEqualCurrent"] = userIdEqualCurrent
	}
	
	public func setMultiRequestToken(shouldGetOnGoingBulkUploads: String) {
		self.dict["shouldGetOnGoingBulkUploads"] = shouldGetOnGoingBulkUploads
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fileObjectNameEqual"] != nil {
			fileObjectNameEqual = dict["fileObjectNameEqual"] as? String
		}
		if dict["createDateGreaterThanOrEqual"] != nil {
			createDateGreaterThanOrEqual = Int64("\(dict["createDateGreaterThanOrEqual"]!)")
		}
		if dict["userIdEqualCurrent"] != nil {
			userIdEqualCurrent = dict["userIdEqualCurrent"] as? Bool
		}
		if dict["shouldGetOnGoingBulkUploads"] != nil {
			shouldGetOnGoingBulkUploads = dict["shouldGetOnGoingBulkUploads"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileObjectNameEqual != nil) {
			dict["fileObjectNameEqual"] = fileObjectNameEqual!
		}
		if(createDateGreaterThanOrEqual != nil) {
			dict["createDateGreaterThanOrEqual"] = createDateGreaterThanOrEqual!
		}
		if(userIdEqualCurrent != nil) {
			dict["userIdEqualCurrent"] = userIdEqualCurrent!
		}
		if(shouldGetOnGoingBulkUploads != nil) {
			dict["shouldGetOnGoingBulkUploads"] = shouldGetOnGoingBulkUploads!
		}
		return dict
	}
}

