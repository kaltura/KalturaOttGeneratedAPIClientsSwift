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

/**  CDN Adapter  */
open class CDNAdapterProfile: ObjectBase {

	public class CDNAdapterProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var baseUrl: BaseTokenizedObject {
			get {
				return self.append("baseUrl") 
			}
		}
		
		public var settings: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("settings"))
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var sharedSecret: BaseTokenizedObject {
			get {
				return self.append("sharedSecret") 
			}
		}
	}

	/**  CDN adapter identifier  */
	public var id: Int? = nil
	/**  CDNR adapter name  */
	public var name: String? = nil
	/**  CDN adapter active status  */
	public var isActive: Bool? = nil
	/**  CDN adapter URL  */
	public var adapterUrl: String? = nil
	/**  CDN adapter base URL  */
	public var baseUrl: String? = nil
	/**  CDN adapter settings  */
	public var settings: Dictionary<String, StringValue>? = nil
	/**  CDN adapter alias  */
	public var systemName: String? = nil
	/**  CDN shared secret  */
	public var sharedSecret: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(adapterUrl: String) {
		self.dict["adapterUrl"] = adapterUrl
	}
	
	public func setMultiRequestToken(baseUrl: String) {
		self.dict["baseUrl"] = baseUrl
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(sharedSecret: String) {
		self.dict["sharedSecret"] = sharedSecret
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Bool
		}
		if dict["adapterUrl"] != nil {
			adapterUrl = dict["adapterUrl"] as? String
		}
		if dict["baseUrl"] != nil {
			baseUrl = dict["baseUrl"] as? String
		}
		if dict["settings"] != nil {
			settings = try JSONParser.parse(map: dict["settings"] as! [String: Any])
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["sharedSecret"] != nil {
			sharedSecret = dict["sharedSecret"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(adapterUrl != nil) {
			dict["adapterUrl"] = adapterUrl!
		}
		if(baseUrl != nil) {
			dict["baseUrl"] = baseUrl!
		}
		if(settings != nil) {
			dict["settings"] = settings!.toDictionary()
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		return dict
	}
}

