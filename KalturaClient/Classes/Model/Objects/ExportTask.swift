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

/**  Bulk export task  */
open class ExportTask: ObjectBase {

	public class ExportTaskTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var alias: BaseTokenizedObject {
			get {
				return self.append("alias") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var dataType: BaseTokenizedObject {
			get {
				return self.append("dataType") 
			}
		}
		
		public var filter: BaseTokenizedObject {
			get {
				return self.append("filter") 
			}
		}
		
		public var exportType: BaseTokenizedObject {
			get {
				return self.append("exportType") 
			}
		}
		
		public var frequency: BaseTokenizedObject {
			get {
				return self.append("frequency") 
			}
		}
		
		public var notificationUrl: BaseTokenizedObject {
			get {
				return self.append("notificationUrl") 
			}
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
	}

	/**  Task identifier  */
	public var id: Int64? = nil
	/**  Alias for the task used to solicit an export using API  */
	public var alias: String? = nil
	/**  Task display name  */
	public var name: String? = nil
	/**  The data type exported in this task  */
	public var dataType: ExportDataType? = nil
	/**  Filter to apply on the export, utilize KSQL.              Note: KSQL currently
	  applies to media assets only. It cannot be used for USERS filtering  */
	public var filter: String? = nil
	/**  Type of export batch – full or incremental  */
	public var exportType: ExportType? = nil
	/**  How often the export should occur, reasonable minimum threshold should apply,
	  configurable in minutes  */
	public var frequency: Int64? = nil
	/**  The URL for sending a notification when the task&amp;#39;s export process is
	  done  */
	public var notificationUrl: String? = nil
	/**  Indicates if the task is active or not  */
	public var isActive: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(alias: String) {
		self.dict["alias"] = alias
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(dataType: String) {
		self.dict["dataType"] = dataType
	}
	
	public func setMultiRequestToken(filter: String) {
		self.dict["filter"] = filter
	}
	
	public func setMultiRequestToken(exportType: String) {
		self.dict["exportType"] = exportType
	}
	
	public func setMultiRequestToken(frequency: String) {
		self.dict["frequency"] = frequency
	}
	
	public func setMultiRequestToken(notificationUrl: String) {
		self.dict["notificationUrl"] = notificationUrl
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["alias"] != nil {
			alias = dict["alias"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["dataType"] != nil {
			dataType = ExportDataType(rawValue: "\(dict["dataType"]!)")
		}
		if dict["filter"] != nil {
			filter = dict["filter"] as? String
		}
		if dict["exportType"] != nil {
			exportType = ExportType(rawValue: "\(dict["exportType"]!)")
		}
		if dict["frequency"] != nil {
			frequency = Int64("\(dict["frequency"]!)")
		}
		if dict["notificationUrl"] != nil {
			notificationUrl = dict["notificationUrl"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(alias != nil) {
			dict["alias"] = alias!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(dataType != nil) {
			dict["dataType"] = dataType!.rawValue
		}
		if(filter != nil) {
			dict["filter"] = filter!
		}
		if(exportType != nil) {
			dict["exportType"] = exportType!.rawValue
		}
		if(frequency != nil) {
			dict["frequency"] = frequency!
		}
		if(notificationUrl != nil) {
			dict["notificationUrl"] = notificationUrl!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		return dict
	}
}

