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

/**  Asset statistics  */
open class AssetStructMeta: ObjectBase {

	public class AssetStructMetaTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var ingestReferencePath: BaseTokenizedObject {
			get {
				return self.append("ingestReferencePath") 
			}
		}
		
		public var protectFromIngest: BaseTokenizedObject {
			get {
				return self.append("protectFromIngest") 
			}
		}
		
		public var defaultIngestValue: BaseTokenizedObject {
			get {
				return self.append("defaultIngestValue") 
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
		
		public var isInherited: BaseTokenizedObject {
			get {
				return self.append("isInherited") 
			}
		}
	}

	/**  Asset Struct id (template_id)  */
	public var assetStructId: Int64? = nil
	/**  Meta id (topic_id)  */
	public var metaId: Int64? = nil
	/**  IngestReferencePath  */
	public var ingestReferencePath: String? = nil
	/**  ProtectFromIngest  */
	public var protectFromIngest: Bool? = nil
	/**  DefaultIngestValue  */
	public var defaultIngestValue: String? = nil
	/**  Specifies when was the Asset Struct Meta was created. Date and time represented
	  as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the Asset Struct Meta last updated. Date and time represented
	  as epoch.  */
	public var updateDate: Int64? = nil
	/**  Is inherited  */
	public var isInherited: Bool? = nil


	public func setMultiRequestToken(assetStructId: String) {
		self.dict["assetStructId"] = assetStructId
	}
	
	public func setMultiRequestToken(metaId: String) {
		self.dict["metaId"] = metaId
	}
	
	public func setMultiRequestToken(ingestReferencePath: String) {
		self.dict["ingestReferencePath"] = ingestReferencePath
	}
	
	public func setMultiRequestToken(protectFromIngest: String) {
		self.dict["protectFromIngest"] = protectFromIngest
	}
	
	public func setMultiRequestToken(defaultIngestValue: String) {
		self.dict["defaultIngestValue"] = defaultIngestValue
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(isInherited: String) {
		self.dict["isInherited"] = isInherited
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetStructId"] != nil {
			assetStructId = Int64("\(dict["assetStructId"]!)")
		}
		if dict["metaId"] != nil {
			metaId = Int64("\(dict["metaId"]!)")
		}
		if dict["ingestReferencePath"] != nil {
			ingestReferencePath = dict["ingestReferencePath"] as? String
		}
		if dict["protectFromIngest"] != nil {
			protectFromIngest = dict["protectFromIngest"] as? Bool
		}
		if dict["defaultIngestValue"] != nil {
			defaultIngestValue = dict["defaultIngestValue"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["isInherited"] != nil {
			isInherited = dict["isInherited"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ingestReferencePath != nil) {
			dict["ingestReferencePath"] = ingestReferencePath!
		}
		if(protectFromIngest != nil) {
			dict["protectFromIngest"] = protectFromIngest!
		}
		if(defaultIngestValue != nil) {
			dict["defaultIngestValue"] = defaultIngestValue!
		}
		if(isInherited != nil) {
			dict["isInherited"] = isInherited!
		}
		return dict
	}
}

