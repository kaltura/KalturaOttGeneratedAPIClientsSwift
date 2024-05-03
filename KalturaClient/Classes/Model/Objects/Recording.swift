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

open class Recording: ObjectBase {

	public class RecordingTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var viewableUntilDate: BaseTokenizedObject {
			get {
				return self.append("viewableUntilDate") 
			}
		}
		
		public var isProtected: BaseTokenizedObject {
			get {
				return self.append("isProtected") 
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
	}

	/**  Kaltura unique ID representing the recording identifier  */
	public var id: Int64? = nil
	/**  Recording state: scheduled/recording/recorded/canceled/failed/deleted  */
	public var status: RecordingStatus? = nil
	/**  Kaltura unique ID representing the program identifier  */
	public var assetId: Int64? = nil
	/**  Recording Type: single/season/series  */
	public var type: RecordingType? = nil
	/**  Specifies until when the recording is available for viewing. Date and time
	  represented as epoch.  */
	public var viewableUntilDate: Int64? = nil
	/**  Specifies whether or not the recording is protected  */
	public var isProtected: Bool? = nil
	/**  Specifies when was the recording created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the recording last updated. Date and time represented as
	  epoch.  */
	public var updateDate: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(viewableUntilDate: String) {
		self.dict["viewableUntilDate"] = viewableUntilDate
	}
	
	public func setMultiRequestToken(isProtected: String) {
		self.dict["isProtected"] = isProtected
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["status"] != nil {
			status = RecordingStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["assetId"] != nil {
			assetId = Int64("\(dict["assetId"]!)")
		}
		if dict["type"] != nil {
			type = RecordingType(rawValue: "\(dict["type"]!)")
		}
		if dict["viewableUntilDate"] != nil {
			viewableUntilDate = Int64("\(dict["viewableUntilDate"]!)")
		}
		if dict["isProtected"] != nil {
			isProtected = dict["isProtected"] as? Bool
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(viewableUntilDate != nil) {
			dict["viewableUntilDate"] = viewableUntilDate!
		}
		if(isProtected != nil) {
			dict["isProtected"] = isProtected!
		}
		return dict
	}
}

