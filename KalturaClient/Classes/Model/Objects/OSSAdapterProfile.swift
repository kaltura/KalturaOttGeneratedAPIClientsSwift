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

/**  OSS Adapter  */
open class OSSAdapterProfile: OSSAdapterBaseProfile {

	public class OSSAdapterProfileTokenizer: OSSAdapterBaseProfile.OSSAdapterBaseProfileTokenizer {
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public var adapterUrl: BaseTokenizedObject {
			get {
				return self.append("adapterUrl") 
			}
		}
		
		public var ossAdapterSettings: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("ossAdapterSettings"))
			}
		}
		
		public var externalIdentifier: BaseTokenizedObject {
			get {
				return self.append("externalIdentifier") 
			}
		}
		
		public var sharedSecret: BaseTokenizedObject {
			get {
				return self.append("sharedSecret") 
			}
		}
	}

	/**  OSS adapter active status  */
	public var isActive: Bool? = nil
	/**  OSS adapter adapter URL  */
	public var adapterUrl: String? = nil
	/**  OSS adapter extra parameters  */
	public var ossAdapterSettings: Dictionary<String, StringValue>? = nil
	/**  OSS adapter external identifier  */
	public var externalIdentifier: String? = nil
	/**  Shared Secret  */
	public var sharedSecret: String? = nil


	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(adapterUrl: String) {
		self.dict["adapterUrl"] = adapterUrl
	}
	
	public func setMultiRequestToken(externalIdentifier: String) {
		self.dict["externalIdentifier"] = externalIdentifier
	}
	
	public func setMultiRequestToken(sharedSecret: String) {
		self.dict["sharedSecret"] = sharedSecret
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["adapterUrl"] != nil {
			adapterUrl = dict["adapterUrl"] as? String
		}
		if dict["ossAdapterSettings"] != nil {
			ossAdapterSettings = try JSONParser.parse(map: dict["ossAdapterSettings"] as! [String: Any])
		}
		if dict["externalIdentifier"] != nil {
			externalIdentifier = dict["externalIdentifier"] as? String
		}
		if dict["sharedSecret"] != nil {
			sharedSecret = dict["sharedSecret"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(adapterUrl != nil) {
			dict["adapterUrl"] = adapterUrl!
		}
		if(ossAdapterSettings != nil) {
			dict["ossAdapterSettings"] = ossAdapterSettings!.toDictionary()
		}
		if(externalIdentifier != nil) {
			dict["externalIdentifier"] = externalIdentifier!
		}
		return dict
	}
}

