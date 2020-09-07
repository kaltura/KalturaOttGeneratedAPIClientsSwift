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

/**  Sms adapter profile  */
open class SmsAdapterProfile: CrudObject {

	public class SmsAdapterProfileTokenizer: CrudObject.CrudObjectTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var adapterUrl: BaseTokenizedObject {
			get {
				return self.append("adapterUrl") 
			}
		}
		
		public var sharedSecret: BaseTokenizedObject {
			get {
				return self.append("sharedSecret") 
			}
		}
		
		public var isActive: BaseTokenizedObject {
			get {
				return self.append("isActive") 
			}
		}
		
		public var settings: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("settings"))
			}
		}
		
		public var externalIdentifier: BaseTokenizedObject {
			get {
				return self.append("externalIdentifier") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
	}

	/**  id  */
	public var id: Int64? = nil
	/**  adapter url  */
	public var adapterUrl: String? = nil
	/**  Shared Secret  */
	public var sharedSecret: String? = nil
	/**  SSO Adapter is active status  */
	public var isActive: Int? = nil
	/**  SSO Adapter extra parameters  */
	public var settings: Dictionary<String, StringValue>? = nil
	/**  SSO Adapter external identifier  */
	public var externalIdentifier: String? = nil
	/**  Name  */
	public var name: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(adapterUrl: String) {
		self.dict["adapterUrl"] = adapterUrl
	}
	
	public func setMultiRequestToken(sharedSecret: String) {
		self.dict["sharedSecret"] = sharedSecret
	}
	
	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(externalIdentifier: String) {
		self.dict["externalIdentifier"] = externalIdentifier
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["adapterUrl"] != nil {
			adapterUrl = dict["adapterUrl"] as? String
		}
		if dict["sharedSecret"] != nil {
			sharedSecret = dict["sharedSecret"] as? String
		}
		if dict["isActive"] != nil {
			isActive = dict["isActive"] as? Int
		}
		if dict["settings"] != nil {
			settings = try JSONParser.parse(map: dict["settings"] as! [String: Any])
		}
		if dict["externalIdentifier"] != nil {
			externalIdentifier = dict["externalIdentifier"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(adapterUrl != nil) {
			dict["adapterUrl"] = adapterUrl!
		}
		if(sharedSecret != nil) {
			dict["sharedSecret"] = sharedSecret!
		}
		if(isActive != nil) {
			dict["isActive"] = isActive!
		}
		if(settings != nil) {
			dict["settings"] = settings!.toDictionary()
		}
		if(externalIdentifier != nil) {
			dict["externalIdentifier"] = externalIdentifier!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		return dict
	}
}
