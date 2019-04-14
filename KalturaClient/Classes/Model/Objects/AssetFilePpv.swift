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

/**  Asset file ppv  */
open class AssetFilePpv: ObjectBase {

	public class AssetFilePpvTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetFileId: BaseTokenizedObject {
			get {
				return self.append("assetFileId") 
			}
		}
		
		public var ppvModuleId: BaseTokenizedObject {
			get {
				return self.append("ppvModuleId") 
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
	}

	/**  Asset file identifier  */
	public var assetFileId: Int64? = nil
	/**  Ppv module identifier  */
	public var ppvModuleId: Int64? = nil
	/**  Start date and time represented as epoch.  */
	public var startDate: Int64? = nil
	/**  End date and time represented as epoch.  */
	public var endDate: Int64? = nil


	public func setMultiRequestToken(assetFileId: String) {
		self.dict["assetFileId"] = assetFileId
	}
	
	public func setMultiRequestToken(ppvModuleId: String) {
		self.dict["ppvModuleId"] = ppvModuleId
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetFileId"] != nil {
			assetFileId = Int64("\(dict["assetFileId"]!)")
		}
		if dict["ppvModuleId"] != nil {
			ppvModuleId = Int64("\(dict["ppvModuleId"]!)")
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetFileId != nil) {
			dict["assetFileId"] = assetFileId!
		}
		if(ppvModuleId != nil) {
			dict["ppvModuleId"] = ppvModuleId!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		return dict
	}
}

