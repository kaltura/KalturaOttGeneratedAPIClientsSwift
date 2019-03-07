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
		
		public var uploadedOnEqual: BaseTokenizedObject {
			get {
				return self.append("uploadedOnEqual") 
			}
		}
		
		public var dateComparisonType: BaseTokenizedObject {
			get {
				return self.append("dateComparisonType") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var userIdEqualCurrent: BaseTokenizedObject {
			get {
				return self.append("userIdEqualCurrent") 
			}
		}
	}

	/**  upload date to search within.  */
	public var uploadedOnEqual: Int64? = nil
	/**  Date Comparison Type.  */
	public var dateComparisonType: DateComparisonType? = nil
	/**  List of KalturaBulkUploadJobStatus to search within.  */
	public var statusIn: String? = nil
	/**  Indicates if to get the BulkUpload list that created by current user or by the
	  entire group.  */
	public var userIdEqualCurrent: Bool? = nil


	public func setMultiRequestToken(uploadedOnEqual: String) {
		self.dict["uploadedOnEqual"] = uploadedOnEqual
	}
	
	public func setMultiRequestToken(dateComparisonType: String) {
		self.dict["dateComparisonType"] = dateComparisonType
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(userIdEqualCurrent: String) {
		self.dict["userIdEqualCurrent"] = userIdEqualCurrent
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["uploadedOnEqual"] != nil {
			uploadedOnEqual = Int64("\(dict["uploadedOnEqual"]!)")
		}
		if dict["dateComparisonType"] != nil {
			dateComparisonType = DateComparisonType(rawValue: "\(dict["dateComparisonType"]!)")
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["userIdEqualCurrent"] != nil {
			userIdEqualCurrent = dict["userIdEqualCurrent"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(uploadedOnEqual != nil) {
			dict["uploadedOnEqual"] = uploadedOnEqual!
		}
		if(dateComparisonType != nil) {
			dict["dateComparisonType"] = dateComparisonType!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(userIdEqualCurrent != nil) {
			dict["userIdEqualCurrent"] = userIdEqualCurrent!
		}
		return dict
	}
}

