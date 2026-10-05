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

open class DeviceReport: Report {

	public class DeviceReportTokenizer: Report.ReportTokenizer {
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var configurationGroupId: BaseTokenizedObject {
			get {
				return self.append("configurationGroupId") 
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public func pushParameters<T: PushParams.PushParamsTokenizer>() -> T {
			return T(self.append("pushParameters"))
		}
		
		public var versionNumber: BaseTokenizedObject {
			get {
				return self.append("versionNumber") 
			}
		}
		
		public var versionPlatform: BaseTokenizedObject {
			get {
				return self.append("versionPlatform") 
			}
		}
		
		public var versionAppName: BaseTokenizedObject {
			get {
				return self.append("versionAppName") 
			}
		}
		
		public var lastAccessIP: BaseTokenizedObject {
			get {
				return self.append("lastAccessIP") 
			}
		}
		
		public var lastAccessDate: BaseTokenizedObject {
			get {
				return self.append("lastAccessDate") 
			}
		}
		
		public var userAgent: BaseTokenizedObject {
			get {
				return self.append("userAgent") 
			}
		}
		
		public var operationSystem: BaseTokenizedObject {
			get {
				return self.append("operationSystem") 
			}
		}
	}

	/**  Partner unique identifier  */
	public var partnerId: Int? = nil
	/**  Configuration group identifier which the version configuration the device last
	  received belongs to  */
	public var configurationGroupId: String? = nil
	/**  Device unique identifier  */
	public var udid: String? = nil
	/**  Device-Application push parameters  */
	public var pushParameters: PushParams? = nil
	/**  Application version number  */
	public var versionNumber: String? = nil
	/**  Application version type  */
	public var versionPlatform: Platform? = nil
	/**  Application version name  */
	public var versionAppName: String? = nil
	/**  Last access IP  */
	public var lastAccessIP: String? = nil
	/**  Last device configuration request date  */
	public var lastAccessDate: Int64? = nil
	/**  request header property  */
	public var userAgent: String? = nil
	/**  Request header property              Incase value cannot be found - returns
	  &amp;quot;Unknown 0.0&amp;quot;  */
	public var operationSystem: String? = nil


	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(configurationGroupId: String) {
		self.dict["configurationGroupId"] = configurationGroupId
	}
	
	public func setMultiRequestToken(udid: String) {
		self.dict["udid"] = udid
	}
	
	public func setMultiRequestToken(versionNumber: String) {
		self.dict["versionNumber"] = versionNumber
	}
	
	public func setMultiRequestToken(versionPlatform: String) {
		self.dict["versionPlatform"] = versionPlatform
	}
	
	public func setMultiRequestToken(versionAppName: String) {
		self.dict["versionAppName"] = versionAppName
	}
	
	public func setMultiRequestToken(lastAccessIP: String) {
		self.dict["lastAccessIP"] = lastAccessIP
	}
	
	public func setMultiRequestToken(lastAccessDate: String) {
		self.dict["lastAccessDate"] = lastAccessDate
	}
	
	public func setMultiRequestToken(userAgent: String) {
		self.dict["userAgent"] = userAgent
	}
	
	public func setMultiRequestToken(operationSystem: String) {
		self.dict["operationSystem"] = operationSystem
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["configurationGroupId"] != nil {
			configurationGroupId = dict["configurationGroupId"] as? String
		}
		if dict["udid"] != nil {
			udid = dict["udid"] as? String
		}
		if dict["pushParameters"] != nil {
		pushParameters = try JSONParser.parse(object: dict["pushParameters"] as! [String: Any])		}
		if dict["versionNumber"] != nil {
			versionNumber = dict["versionNumber"] as? String
		}
		if dict["versionPlatform"] != nil {
			versionPlatform = Platform(rawValue: "\(dict["versionPlatform"]!)")
		}
		if dict["versionAppName"] != nil {
			versionAppName = dict["versionAppName"] as? String
		}
		if dict["lastAccessIP"] != nil {
			lastAccessIP = dict["lastAccessIP"] as? String
		}
		if dict["lastAccessDate"] != nil {
			lastAccessDate = Int64("\(dict["lastAccessDate"]!)")
		}
		if dict["userAgent"] != nil {
			userAgent = dict["userAgent"] as? String
		}
		if dict["operationSystem"] != nil {
			operationSystem = dict["operationSystem"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(configurationGroupId != nil) {
			dict["configurationGroupId"] = configurationGroupId!
		}
		if(udid != nil) {
			dict["udid"] = udid!
		}
		if(pushParameters != nil) {
			dict["pushParameters"] = pushParameters!.toDictionary()
		}
		if(versionNumber != nil) {
			dict["versionNumber"] = versionNumber!
		}
		if(versionPlatform != nil) {
			dict["versionPlatform"] = versionPlatform!.rawValue
		}
		if(versionAppName != nil) {
			dict["versionAppName"] = versionAppName!
		}
		if(lastAccessIP != nil) {
			dict["lastAccessIP"] = lastAccessIP!
		}
		if(lastAccessDate != nil) {
			dict["lastAccessDate"] = lastAccessDate!
		}
		if(userAgent != nil) {
			dict["userAgent"] = userAgent!
		}
		if(operationSystem != nil) {
			dict["operationSystem"] = operationSystem!
		}
		return dict
	}
}

