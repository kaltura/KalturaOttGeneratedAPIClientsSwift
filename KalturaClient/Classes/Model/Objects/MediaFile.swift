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

/**  Media file details  */
open class MediaFile: AssetFile {

	public class MediaFileTokenizer: AssetFile.AssetFileTokenizer {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var typeId: BaseTokenizedObject {
			get {
				return self.append("typeId") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var altExternalId: BaseTokenizedObject {
			get {
				return self.append("altExternalId") 
			}
		}
		
		public var fileSize: BaseTokenizedObject {
			get {
				return self.append("fileSize") 
			}
		}
		
		public var additionalData: BaseTokenizedObject {
			get {
				return self.append("additionalData") 
			}
		}
		
		public var altStreamingCode: BaseTokenizedObject {
			get {
				return self.append("altStreamingCode") 
			}
		}
		
		public var alternativeCdnAdapaterProfileId: BaseTokenizedObject {
			get {
				return self.append("alternativeCdnAdapaterProfileId") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var externalStoreId: BaseTokenizedObject {
			get {
				return self.append("externalStoreId") 
			}
		}
		
		public var isDefaultLanguage: BaseTokenizedObject {
			get {
				return self.append("isDefaultLanguage") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var orderNum: BaseTokenizedObject {
			get {
				return self.append("orderNum") 
			}
		}
		
		public var outputProtecationLevel: BaseTokenizedObject {
			get {
				return self.append("outputProtecationLevel") 
			}
		}
		
		public var cdnAdapaterProfileId: BaseTokenizedObject {
			get {
				return self.append("cdnAdapaterProfileId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var catalogEndDate: BaseTokenizedObject {
			get {
				return self.append("catalogEndDate") 
			}
		}
	}

	/**  Unique identifier for the asset  */
	public var assetId: Int? = nil
	/**  File unique identifier  */
	public var id: Int? = nil
	/**  Deprecated - Device types as defined in the system  */
	public var type: String? = nil
	/**  Device types identifier as defined in the system  */
	public var typeId: Int? = nil
	/**  Duration of the media file  */
	public var duration: Int64? = nil
	/**  External identifier for the media file  */
	public var externalId: String? = nil
	/**  Alternative external identifier for the media file  */
	public var altExternalId: String? = nil
	/**  File size  */
	public var fileSize: Int64? = nil
	/**  Additional Data  */
	public var additionalData: String? = nil
	/**  Alternative streaming code  */
	public var altStreamingCode: String? = nil
	/**  Alternative cdn adapter profile identifier  */
	public var alternativeCdnAdapaterProfileId: Int64? = nil
	/**  EndDate  */
	public var endDate: Int64? = nil
	/**  StartDate  */
	public var startDate: Int64? = nil
	/**  ExternalStoreId  */
	public var externalStoreId: String? = nil
	/**  IsDefaultLanguage  */
	public var isDefaultLanguage: Bool? = nil
	/**  Language  */
	public var language: String? = nil
	/**  OrderNum  */
	public var orderNum: Int? = nil
	/**  OutputProtecationLevel  */
	public var outputProtecationLevel: String? = nil
	/**  cdn adapter profile identifier  */
	public var cdnAdapaterProfileId: Int64? = nil
	/**  The media file status  */
	public var status: Bool? = nil
	/**  Catalog end date  */
	public var catalogEndDate: Int64? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(typeId: String) {
		self.dict["typeId"] = typeId
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(altExternalId: String) {
		self.dict["altExternalId"] = altExternalId
	}
	
	public func setMultiRequestToken(fileSize: String) {
		self.dict["fileSize"] = fileSize
	}
	
	public func setMultiRequestToken(additionalData: String) {
		self.dict["additionalData"] = additionalData
	}
	
	public func setMultiRequestToken(altStreamingCode: String) {
		self.dict["altStreamingCode"] = altStreamingCode
	}
	
	public func setMultiRequestToken(alternativeCdnAdapaterProfileId: String) {
		self.dict["alternativeCdnAdapaterProfileId"] = alternativeCdnAdapaterProfileId
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(externalStoreId: String) {
		self.dict["externalStoreId"] = externalStoreId
	}
	
	public func setMultiRequestToken(isDefaultLanguage: String) {
		self.dict["isDefaultLanguage"] = isDefaultLanguage
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(orderNum: String) {
		self.dict["orderNum"] = orderNum
	}
	
	public func setMultiRequestToken(outputProtecationLevel: String) {
		self.dict["outputProtecationLevel"] = outputProtecationLevel
	}
	
	public func setMultiRequestToken(cdnAdapaterProfileId: String) {
		self.dict["cdnAdapaterProfileId"] = cdnAdapaterProfileId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(catalogEndDate: String) {
		self.dict["catalogEndDate"] = catalogEndDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? Int
		}
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["typeId"] != nil {
			typeId = dict["typeId"] as? Int
		}
		if dict["duration"] != nil {
			duration = Int64("\(dict["duration"]!)")
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["altExternalId"] != nil {
			altExternalId = dict["altExternalId"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = Int64("\(dict["fileSize"]!)")
		}
		if dict["additionalData"] != nil {
			additionalData = dict["additionalData"] as? String
		}
		if dict["altStreamingCode"] != nil {
			altStreamingCode = dict["altStreamingCode"] as? String
		}
		if dict["alternativeCdnAdapaterProfileId"] != nil {
			alternativeCdnAdapaterProfileId = Int64("\(dict["alternativeCdnAdapaterProfileId"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["externalStoreId"] != nil {
			externalStoreId = dict["externalStoreId"] as? String
		}
		if dict["isDefaultLanguage"] != nil {
			isDefaultLanguage = dict["isDefaultLanguage"] as? Bool
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["orderNum"] != nil {
			orderNum = dict["orderNum"] as? Int
		}
		if dict["outputProtecationLevel"] != nil {
			outputProtecationLevel = dict["outputProtecationLevel"] as? String
		}
		if dict["cdnAdapaterProfileId"] != nil {
			cdnAdapaterProfileId = Int64("\(dict["cdnAdapaterProfileId"]!)")
		}
		if dict["status"] != nil {
			status = dict["status"] as? Bool
		}
		if dict["catalogEndDate"] != nil {
			catalogEndDate = Int64("\(dict["catalogEndDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(typeId != nil) {
			dict["typeId"] = typeId!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(altExternalId != nil) {
			dict["altExternalId"] = altExternalId!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		if(additionalData != nil) {
			dict["additionalData"] = additionalData!
		}
		if(altStreamingCode != nil) {
			dict["altStreamingCode"] = altStreamingCode!
		}
		if(alternativeCdnAdapaterProfileId != nil) {
			dict["alternativeCdnAdapaterProfileId"] = alternativeCdnAdapaterProfileId!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(externalStoreId != nil) {
			dict["externalStoreId"] = externalStoreId!
		}
		if(isDefaultLanguage != nil) {
			dict["isDefaultLanguage"] = isDefaultLanguage!
		}
		if(language != nil) {
			dict["language"] = language!
		}
		if(orderNum != nil) {
			dict["orderNum"] = orderNum!
		}
		if(outputProtecationLevel != nil) {
			dict["outputProtecationLevel"] = outputProtecationLevel!
		}
		if(cdnAdapaterProfileId != nil) {
			dict["cdnAdapaterProfileId"] = cdnAdapaterProfileId!
		}
		if(status != nil) {
			dict["status"] = status!
		}
		if(catalogEndDate != nil) {
			dict["catalogEndDate"] = catalogEndDate!
		}
		return dict
	}
}

