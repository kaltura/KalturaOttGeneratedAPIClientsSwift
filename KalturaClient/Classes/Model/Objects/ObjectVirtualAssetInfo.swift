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

open class ObjectVirtualAssetInfo: ObjectBase {

	public class ObjectVirtualAssetInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetStructId: BaseTokenizedObject {
			get {
				return self.append("assetStructId") 
			}
		}
		
		public var metaId: BaseTokenizedObject {
			get {
				return self.append("metaId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var extendedTypes: DictionaryTokenizedObject<LongValue.LongValueTokenizer> {
			get {
				return DictionaryTokenizedObject<LongValue.LongValueTokenizer>(self.append("extendedTypes"))
			}
		}
	}

	/**  Asset struct identifier  */
	public var assetStructId: Int? = nil
	/**  Meta identifier  */
	public var metaId: Int? = nil
	/**  Object virtual asset info type  */
	public var type: ObjectVirtualAssetInfoType? = nil
	/**  Extended types mapping  */
	public var extendedTypes: Dictionary<String, LongValue>? = nil


	public func setMultiRequestToken(assetStructId: String) {
		self.dict["assetStructId"] = assetStructId
	}
	
	public func setMultiRequestToken(metaId: String) {
		self.dict["metaId"] = metaId
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetStructId"] != nil {
			assetStructId = dict["assetStructId"] as? Int
		}
		if dict["metaId"] != nil {
			metaId = dict["metaId"] as? Int
		}
		if dict["type"] != nil {
			type = ObjectVirtualAssetInfoType(rawValue: "\(dict["type"]!)")
		}
		if dict["extendedTypes"] != nil {
			extendedTypes = try JSONParser.parse(map: dict["extendedTypes"] as! [String: Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetStructId != nil) {
			dict["assetStructId"] = assetStructId!
		}
		if(metaId != nil) {
			dict["metaId"] = metaId!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(extendedTypes != nil) {
			dict["extendedTypes"] = extendedTypes!.toDictionary()
		}
		return dict
	}
}

