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

open class SocialAction: ObjectBase {

	public class SocialActionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var actionType: BaseTokenizedObject {
			get {
				return self.append("actionType") 
			}
		}
		
		public var time: BaseTokenizedObject {
			get {
				return self.append("time") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var assetType: BaseTokenizedObject {
			get {
				return self.append("assetType") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	/**  social action document id  */
	public var id: String? = nil
	/**  Action type  */
	public var actionType: SocialActionType? = nil
	/**  EPOC based timestamp for when the action occurred  */
	public var time: Int64? = nil
	/**  ID of the asset that was acted upon  */
	public var assetId: Int64? = nil
	/**  Type of the asset that was acted upon, currently only VOD (media)  */
	public var assetType: AssetType? = nil
	/**  The value of the url  */
	public var url: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(actionType: String) {
		self.dict["actionType"] = actionType
	}
	
	public func setMultiRequestToken(time: String) {
		self.dict["time"] = time
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(assetType: String) {
		self.dict["assetType"] = assetType
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["actionType"] != nil {
			actionType = SocialActionType(rawValue: "\(dict["actionType"]!)")
		}
		if dict["time"] != nil {
			time = Int64("\(dict["time"]!)")
		}
		if dict["assetId"] != nil {
			assetId = Int64("\(dict["assetId"]!)")
		}
		if dict["assetType"] != nil {
			assetType = AssetType(rawValue: "\(dict["assetType"]!)")
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(actionType != nil) {
			dict["actionType"] = actionType!.rawValue
		}
		if(time != nil) {
			dict["time"] = time!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(assetType != nil) {
			dict["assetType"] = assetType!.rawValue
		}
		if(url != nil) {
			dict["url"] = url!
		}
		return dict
	}
}

