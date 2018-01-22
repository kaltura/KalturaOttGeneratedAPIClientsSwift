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
// Copyright (C) 2006-2017  Kaltura Inc.
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

/**  Media file details  */
open class MediaFile: ObjectBase {

	public class MediaFileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var typeId: BaseTokenizedObject {
			get {
				return self.append("typeId") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
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
		
		public var altStreamingSuplierId: BaseTokenizedObject {
			get {
				return self.append("altStreamingSuplierId") 
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
		
		public var streamingSuplierId: BaseTokenizedObject {
			get {
				return self.append("streamingSuplierId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Unique identifier for the asset  */
	public var assetId: Int? = nil
	/**  File unique identifier  */
	public var id: Int? = nil
	/**  Device types identifier as defined in the system  */
	public var typeId: Int? = nil
	/**  URL of the media file to be played  */
	public var url: String? = nil
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
	/**  Alternative streaming supplier identifier  */
	public var altStreamingSuplierId: Int64? = nil
	/**  EndDate  */
	public var endDate: Int64? = nil
	/**  StartDate  */
	public var startDate: Int64? = nil
	/**  ExternalStoreId  */
	public var externalStoreId: Int64? = nil
	/**  IsDefaultLanguage  */
	public var isDefaultLanguage: Bool? = nil
	/**  Language  */
	public var language: String? = nil
	/**  OrderNum  */
	public var orderNum: Int? = nil
	/**  OutputProtecationLevel  */
	public var outputProtecationLevel: String? = nil
	/**  StreamingSuplierId  */
	public var streamingSuplierId: String? = nil
	/**  The media file status  */
	public var status: Bool? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(typeId: String) {
		self.dict["typeId"] = typeId
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
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
	
	public func setMultiRequestToken(altStreamingSuplierId: String) {
		self.dict["altStreamingSuplierId"] = altStreamingSuplierId
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
	
	public func setMultiRequestToken(streamingSuplierId: String) {
		self.dict["streamingSuplierId"] = streamingSuplierId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? Int
		}
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["typeId"] != nil {
			typeId = dict["typeId"] as? Int
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
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
		if dict["altStreamingSuplierId"] != nil {
			altStreamingSuplierId = Int64("\(dict["altStreamingSuplierId"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["externalStoreId"] != nil {
			externalStoreId = Int64("\(dict["externalStoreId"]!)")
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
		if dict["streamingSuplierId"] != nil {
			streamingSuplierId = dict["streamingSuplierId"] as? String
		}
		if dict["status"] != nil {
			status = dict["status"] as? Bool
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
		if(url != nil) {
			dict["url"] = url!
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
		if(altStreamingSuplierId != nil) {
			dict["altStreamingSuplierId"] = altStreamingSuplierId!
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
		if(streamingSuplierId != nil) {
			dict["streamingSuplierId"] = streamingSuplierId!
		}
		if(status != nil) {
			dict["status"] = status!
		}
		return dict
	}
}

