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

/**  Asset Comment  */
open class AssetComment: SocialComment {

	public class AssetCommentTokenizer: SocialComment.SocialCommentTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
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
		
		public var subHeader: BaseTokenizedObject {
			get {
				return self.append("subHeader") 
			}
		}
	}

	/**  Comment ID  */
	public var id: Int? = nil
	/**  Asset identifier  */
	public var assetId: Int? = nil
	/**  Asset Type  */
	public var assetType: AssetType? = nil
	/**  Sub Header  */
	public var subHeader: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(assetType: String) {
		self.dict["assetType"] = assetType
	}
	
	public func setMultiRequestToken(subHeader: String) {
		self.dict["subHeader"] = subHeader
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? Int
		}
		if dict["assetType"] != nil {
			assetType = AssetType(rawValue: "\(dict["assetType"]!)")
		}
		if dict["subHeader"] != nil {
			subHeader = dict["subHeader"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(assetType != nil) {
			dict["assetType"] = assetType!.rawValue
		}
		if(subHeader != nil) {
			dict["subHeader"] = subHeader!
		}
		return dict
	}
}

