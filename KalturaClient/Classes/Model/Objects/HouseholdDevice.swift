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

/**  Device details  */
open class HouseholdDevice: OTTObjectSupportNullable {

	public class HouseholdDeviceTokenizer: OTTObjectSupportNullable.OTTObjectSupportNullableTokenizer {
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var brandId: BaseTokenizedObject {
			get {
				return self.append("brandId") 
			}
		}
		
		public var activatedOn: BaseTokenizedObject {
			get {
				return self.append("activatedOn") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var deviceFamilyId: BaseTokenizedObject {
			get {
				return self.append("deviceFamilyId") 
			}
		}
		
		public func drm<T: CustomDrmPlaybackPluginData.CustomDrmPlaybackPluginDataTokenizer>() -> T {
			return T(self.append("drm"))
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var macAddress: BaseTokenizedObject {
			get {
				return self.append("macAddress") 
			}
		}
		
		public var model: BaseTokenizedObject {
			get {
				return self.append("model") 
			}
		}
		
		public var manufacturer: BaseTokenizedObject {
			get {
				return self.append("manufacturer") 
			}
		}
		
		public var manufacturerId: BaseTokenizedObject {
			get {
				return self.append("manufacturerId") 
			}
		}
	}

	/**  Household identifier  */
	public var householdId: Int? = nil
	/**  Device UDID  */
	public var udid: String? = nil
	/**  Device name  */
	public var name: String? = nil
	/**  Device brand identifier  */
	public var brandId: Int? = nil
	/**  Device activation date (epoch)  */
	public var activatedOn: Int64? = nil
	/**  Device state  */
	public var status: DeviceStatus? = nil
	/**  Device family id  */
	public var deviceFamilyId: Int64? = nil
	/**  Device DRM data  */
	public var drm: CustomDrmPlaybackPluginData? = nil
	/**  external Id  */
	public var externalId: String? = nil
	/**  mac address  */
	public var macAddress: String? = nil
	/**  model  */
	public var model: String? = nil
	/**  manufacturer  */
	public var manufacturer: String? = nil
	/**  manufacturer Id, read only  */
	public var manufacturerId: Int64? = nil


	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(udid: String) {
		self.dict["udid"] = udid
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(brandId: String) {
		self.dict["brandId"] = brandId
	}
	
	public func setMultiRequestToken(activatedOn: String) {
		self.dict["activatedOn"] = activatedOn
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(deviceFamilyId: String) {
		self.dict["deviceFamilyId"] = deviceFamilyId
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(macAddress: String) {
		self.dict["macAddress"] = macAddress
	}
	
	public func setMultiRequestToken(model: String) {
		self.dict["model"] = model
	}
	
	public func setMultiRequestToken(manufacturer: String) {
		self.dict["manufacturer"] = manufacturer
	}
	
	public func setMultiRequestToken(manufacturerId: String) {
		self.dict["manufacturerId"] = manufacturerId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["householdId"] != nil {
			householdId = dict["householdId"] as? Int
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["brandId"] != nil {
			brandId = dict["brandId"] as? Int
		}
		if dict["activatedOn"] != nil {
			activatedOn = Int64("\(dict["activatedOn"]!)")
		}
		if dict["status"] != nil {
			status = DeviceStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["deviceFamilyId"] != nil {
			deviceFamilyId = Int64("\(dict["deviceFamilyId"]!)")
		}
		if dict["drm"] != nil {
		drm = try JSONParser.parse(object: dict["drm"] as! [String: Any])		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["macAddress"] != nil {
			macAddress = dict["macAddress"] as? String
		}
		if dict["model"] != nil {
			model = dict["model"] as? String
		}
		if dict["manufacturer"] != nil {
			manufacturer = dict["manufacturer"] as? String
		}
		if dict["manufacturerId"] != nil {
			manufacturerId = Int64("\(dict["manufacturerId"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(householdId != nil) {
			dict["householdId"] = householdId!
		}
		if(udid != nil) {
			dict["udid"] = udid!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(brandId != nil) {
			dict["brandId"] = brandId!
		}
		if(activatedOn != nil) {
			dict["activatedOn"] = activatedOn!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(macAddress != nil) {
			dict["macAddress"] = macAddress!
		}
		if(model != nil) {
			dict["model"] = model!
		}
		if(manufacturer != nil) {
			dict["manufacturer"] = manufacturer!
		}
		return dict
	}
}

