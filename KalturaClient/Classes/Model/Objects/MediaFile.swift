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
// Copyright (C) 2006-2019  Kaltura Inc.
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
		
		public var billingType: BaseTokenizedObject {
			get {
				return self.append("billingType") 
			}
		}
		
		public var quality: BaseTokenizedObject {
			get {
				return self.append("quality") 
			}
		}
		
		public var handlingType: BaseTokenizedObject {
			get {
				return self.append("handlingType") 
			}
		}
		
		public var cdnName: BaseTokenizedObject {
			get {
				return self.append("cdnName") 
			}
		}
		
		public var cdnCode: BaseTokenizedObject {
			get {
				return self.append("cdnCode") 
			}
		}
		
		public var altCdnCode: BaseTokenizedObject {
			get {
				return self.append("altCdnCode") 
			}
		}
		
		public func ppvModules<T: StringValueArray.StringValueArrayTokenizer>() -> T {
			return T(self.append("ppvModules"))
		}
		
		public var productCode: BaseTokenizedObject {
			get {
				return self.append("productCode") 
			}
		}
		
		public var fileSize: BaseTokenizedObject {
			get {
				return self.append("fileSize") 
			}
		}
	}

	/**  Unique identifier for the asset  */
	public var assetId: Int? = nil
	/**  File unique identifier  */
	public var id: Int? = nil
	/**  Device types as defined in the system  */
	public var type: String? = nil
	/**  Duration of the media file  */
	public var duration: Int64? = nil
	/**  External identifier for the media file  */
	public var externalId: String? = nil
	/**  Billing type  */
	public var billingType: String? = nil
	/**  Quality  */
	public var quality: String? = nil
	/**  Handling type  */
	public var handlingType: String? = nil
	/**  CDN name  */
	public var cdnName: String? = nil
	/**  CDN code  */
	public var cdnCode: String? = nil
	/**  Alt CDN code  */
	public var altCdnCode: String? = nil
	/**  PPV Module  */
	public var ppvModules: StringValueArray? = nil
	/**  Product code  */
	public var productCode: String? = nil
	/**  File size  */
	public var fileSize: Int64? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(billingType: String) {
		self.dict["billingType"] = billingType
	}
	
	public func setMultiRequestToken(quality: String) {
		self.dict["quality"] = quality
	}
	
	public func setMultiRequestToken(handlingType: String) {
		self.dict["handlingType"] = handlingType
	}
	
	public func setMultiRequestToken(cdnName: String) {
		self.dict["cdnName"] = cdnName
	}
	
	public func setMultiRequestToken(cdnCode: String) {
		self.dict["cdnCode"] = cdnCode
	}
	
	public func setMultiRequestToken(altCdnCode: String) {
		self.dict["altCdnCode"] = altCdnCode
	}
	
	public func setMultiRequestToken(productCode: String) {
		self.dict["productCode"] = productCode
	}
	
	public func setMultiRequestToken(fileSize: String) {
		self.dict["fileSize"] = fileSize
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
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["duration"] != nil {
			duration = Int64("\(dict["duration"]!)")
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["billingType"] != nil {
			billingType = dict["billingType"] as? String
		}
		if dict["quality"] != nil {
			quality = dict["quality"] as? String
		}
		if dict["handlingType"] != nil {
			handlingType = dict["handlingType"] as? String
		}
		if dict["cdnName"] != nil {
			cdnName = dict["cdnName"] as? String
		}
		if dict["cdnCode"] != nil {
			cdnCode = dict["cdnCode"] as? String
		}
		if dict["altCdnCode"] != nil {
			altCdnCode = dict["altCdnCode"] as? String
		}
		if dict["ppvModules"] != nil {
		ppvModules = try JSONParser.parse(object: dict["ppvModules"] as! [String: Any])		}
		if dict["productCode"] != nil {
			productCode = dict["productCode"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = Int64("\(dict["fileSize"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(type != nil) {
			dict["type"] = type!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(billingType != nil) {
			dict["billingType"] = billingType!
		}
		if(quality != nil) {
			dict["quality"] = quality!
		}
		if(handlingType != nil) {
			dict["handlingType"] = handlingType!
		}
		if(cdnName != nil) {
			dict["cdnName"] = cdnName!
		}
		if(cdnCode != nil) {
			dict["cdnCode"] = cdnCode!
		}
		if(altCdnCode != nil) {
			dict["altCdnCode"] = altCdnCode!
		}
		if(ppvModules != nil) {
			dict["ppvModules"] = ppvModules!.toDictionary()
		}
		if(productCode != nil) {
			dict["productCode"] = productCode!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		return dict
	}
}

