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

open class AssetStruct: ObjectBase {

	public class AssetStructTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var multilingualName: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualName"))
			} 
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var isProtected: BaseTokenizedObject {
			get {
				return self.append("isProtected") 
			}
		}
		
		public var metaIds: BaseTokenizedObject {
			get {
				return self.append("metaIds") 
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
		
		public var features: BaseTokenizedObject {
			get {
				return self.append("features") 
			}
		}
		
		public var pluralName: BaseTokenizedObject {
			get {
				return self.append("pluralName") 
			}
		}
		
		public var parentId: BaseTokenizedObject {
			get {
				return self.append("parentId") 
			}
		}
		
		public var connectingMetaId: BaseTokenizedObject {
			get {
				return self.append("connectingMetaId") 
			}
		}
		
		public var connectedParentMetaId: BaseTokenizedObject {
			get {
				return self.append("connectedParentMetaId") 
			}
		}
	}

	/**  Asset Struct id  */
	public var id: Int64? = nil
	/**  Asset struct name for the partner  */
	public var name: String? = nil
	/**  Asset struct name for the partner  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  Asset Struct system name for the partner  */
	public var systemName: String? = nil
	/**  Is the Asset Struct protected by the system  */
	public var isProtected: Bool? = nil
	/**  A list of comma separated meta ids associated with this asset struct, returned
	  according to the order.  */
	public var metaIds: String? = nil
	/**  Specifies when was the Asset Struct was created. Date and time represented as
	  epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the Asset Struct last updated. Date and time represented as
	  epoch.  */
	public var updateDate: Int64? = nil
	/**  List of supported features  */
	public var features: String? = nil
	/**  Plural Name  */
	public var pluralName: String? = nil
	/**  AssetStruct parent Id  */
	public var parentId: Int64? = nil
	/**  connectingMetaId  */
	public var connectingMetaId: Int64? = nil
	/**  connectedParentMetaId  */
	public var connectedParentMetaId: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(isProtected: String) {
		self.dict["isProtected"] = isProtected
	}
	
	public func setMultiRequestToken(metaIds: String) {
		self.dict["metaIds"] = metaIds
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(features: String) {
		self.dict["features"] = features
	}
	
	public func setMultiRequestToken(pluralName: String) {
		self.dict["pluralName"] = pluralName
	}
	
	public func setMultiRequestToken(parentId: String) {
		self.dict["parentId"] = parentId
	}
	
	public func setMultiRequestToken(connectingMetaId: String) {
		self.dict["connectingMetaId"] = connectingMetaId
	}
	
	public func setMultiRequestToken(connectedParentMetaId: String) {
		self.dict["connectedParentMetaId"] = connectedParentMetaId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["isProtected"] != nil {
			isProtected = dict["isProtected"] as? Bool
		}
		if dict["metaIds"] != nil {
			metaIds = dict["metaIds"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["features"] != nil {
			features = dict["features"] as? String
		}
		if dict["pluralName"] != nil {
			pluralName = dict["pluralName"] as? String
		}
		if dict["parentId"] != nil {
			parentId = Int64("\(dict["parentId"]!)")
		}
		if dict["connectingMetaId"] != nil {
			connectingMetaId = Int64("\(dict["connectingMetaId"]!)")
		}
		if dict["connectedParentMetaId"] != nil {
			connectedParentMetaId = Int64("\(dict["connectedParentMetaId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(isProtected != nil) {
			dict["isProtected"] = isProtected!
		}
		if(metaIds != nil) {
			dict["metaIds"] = metaIds!
		}
		if(features != nil) {
			dict["features"] = features!
		}
		if(pluralName != nil) {
			dict["pluralName"] = pluralName!
		}
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		if(connectingMetaId != nil) {
			dict["connectingMetaId"] = connectingMetaId!
		}
		if(connectedParentMetaId != nil) {
			dict["connectedParentMetaId"] = connectedParentMetaId!
		}
		return dict
	}
}

