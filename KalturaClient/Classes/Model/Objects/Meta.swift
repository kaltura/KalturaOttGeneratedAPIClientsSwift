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

/**  Asset meta  */
open class Meta: ObjectBase {

	public class MetaTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var dataType: BaseTokenizedObject {
			get {
				return self.append("dataType") 
			}
		}
		
		public var multipleValue: BaseTokenizedObject {
			get {
				return self.append("multipleValue") 
			}
		}
		
		public var isProtected: BaseTokenizedObject {
			get {
				return self.append("isProtected") 
			}
		}
		
		public var helpText: BaseTokenizedObject {
			get {
				return self.append("helpText") 
			}
		}
		
		public var features: BaseTokenizedObject {
			get {
				return self.append("features") 
			}
		}
		
		public var parentId: BaseTokenizedObject {
			get {
				return self.append("parentId") 
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

	/**  Meta id  */
	public var id: String? = nil
	/**  Meta name for the partner  */
	public var name: String? = nil
	/**  Meta name for the partner  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  Meta system name for the partner  */
	public var systemName: String? = nil
	/**  Meta data type  */
	public var dataType: MetaDataType? = nil
	/**  Does the meta contain multiple values  */
	public var multipleValue: Bool? = nil
	/**  Is the meta protected by the system  */
	public var isProtected: Bool? = nil
	/**  The help text of the meta to be displayed on the UI.  */
	public var helpText: String? = nil
	/**  List of supported features  */
	public var features: String? = nil
	/**  Parent meta id  */
	public var parentId: String? = nil
	/**  Specifies when was the meta created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the meta last updated. Date and time represented as epoch.  */
	public var updateDate: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(dataType: String) {
		self.dict["dataType"] = dataType
	}
	
	public func setMultiRequestToken(multipleValue: String) {
		self.dict["multipleValue"] = multipleValue
	}
	
	public func setMultiRequestToken(isProtected: String) {
		self.dict["isProtected"] = isProtected
	}
	
	public func setMultiRequestToken(helpText: String) {
		self.dict["helpText"] = helpText
	}
	
	public func setMultiRequestToken(features: String) {
		self.dict["features"] = features
	}
	
	public func setMultiRequestToken(parentId: String) {
		self.dict["parentId"] = parentId
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
			id = dict["id"] as? String
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
		if dict["dataType"] != nil {
			dataType = MetaDataType(rawValue: "\(dict["dataType"]!)")
		}
		if dict["multipleValue"] != nil {
			multipleValue = dict["multipleValue"] as? Bool
		}
		if dict["isProtected"] != nil {
			isProtected = dict["isProtected"] as? Bool
		}
		if dict["helpText"] != nil {
			helpText = dict["helpText"] as? String
		}
		if dict["features"] != nil {
			features = dict["features"] as? String
		}
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? String
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
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(dataType != nil) {
			dict["dataType"] = dataType!.rawValue
		}
		if(multipleValue != nil) {
			dict["multipleValue"] = multipleValue!
		}
		if(isProtected != nil) {
			dict["isProtected"] = isProtected!
		}
		if(helpText != nil) {
			dict["helpText"] = helpText!
		}
		if(features != nil) {
			dict["features"] = features!
		}
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		return dict
	}
}

