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

/**  Configuration for a specific metadata field including system name and update
  operation.  */
open class MetadataFieldConfig: ObjectBase {

	public class MetadataFieldConfigTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var operation: BaseTokenizedObject {
			get {
				return self.append("operation") 
			}
		}
	}

	/**  The system name of the metadata field in the asset struct.  */
	public var systemName: String? = nil
	/**  The update operation to be performed on this metadata field.  */
	public var operation: MetadataUpdateOperation? = nil


	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(operation: String) {
		self.dict["operation"] = operation
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["operation"] != nil {
			operation = MetadataUpdateOperation(rawValue: "\(dict["operation"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(operation != nil) {
			dict["operation"] = operation!.rawValue
		}
		return dict
	}
}

