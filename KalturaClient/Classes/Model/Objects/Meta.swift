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
// Copyright (C) 2006-2018  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Asset meta  */
open class Meta: ObjectBase {

	public class MetaTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var fieldName: BaseTokenizedObject {
			get {
				return self.append("fieldName") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var assetType: BaseTokenizedObject {
			get {
				return self.append("assetType") 
			}
		}
		
		public var features: BaseTokenizedObject {
			get {
				return self.append("features") 
			}
		}
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var parentId: BaseTokenizedObject {
			get {
				return self.append("parentId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
	}

	/**  Meta name for the partner  */
	public var name: String? = nil
	/**  Meta system field name  */
	public var fieldName: MetaFieldName? = nil
	/**  Meta value type  */
	public var type: MetaType? = nil
	/**  Asset type this meta is related to  */
	public var assetType: AssetType? = nil
	/**  List of supported features  */
	public var features: String? = nil
	/**  Meta id  */
	public var id: String? = nil
	/**  Parent meta id  */
	public var parentId: String? = nil
	/**  Partner Id  */
	public var partnerId: Int? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(fieldName: String) {
		self.dict["fieldName"] = fieldName
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(assetType: String) {
		self.dict["assetType"] = assetType
	}
	
	public func setMultiRequestToken(features: String) {
		self.dict["features"] = features
	}
	
	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(parentId: String) {
		self.dict["parentId"] = parentId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["fieldName"] != nil {
			fieldName = MetaFieldName(rawValue: "\(dict["fieldName"]!)")
		}
		if dict["type"] != nil {
			type = MetaType(rawValue: "\(dict["type"]!)")
		}
		if dict["assetType"] != nil {
			assetType = AssetType(rawValue: "\(dict["assetType"]!)")
		}
		if dict["features"] != nil {
			features = dict["features"] as? String
		}
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(fieldName != nil) {
			dict["fieldName"] = fieldName!.rawValue
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(assetType != nil) {
			dict["assetType"] = assetType!.rawValue
		}
		if(features != nil) {
			dict["features"] = features!
		}
		if(id != nil) {
			dict["id"] = id!
		}
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		return dict
	}
}

