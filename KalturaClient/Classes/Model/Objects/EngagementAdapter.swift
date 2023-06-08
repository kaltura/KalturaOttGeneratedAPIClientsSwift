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

/**  Engagement Adapter  */
open class EngagementAdapter: EngagementAdapterBase {

	public class EngagementAdapterTokenizer: EngagementAdapterBase.EngagementAdapterBaseTokenizer {
		
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
		
		public var providerUrl: BaseTokenizedObject {
			get {
				return self.append("providerUrl") 
			}
		}
		
		public var engagementAdapterSettings: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("engagementAdapterSettings"))
			}
		}
		
		public var sharedSecret: BaseTokenizedObject {
			get {
				return self.append("sharedSecret") 
			}
		}
	}

	/**  Engagement adapter active status  */
	public var isActive: Bool? = nil
	/**  Engagement adapter adapter URL  */
	public var adapterUrl: String? = nil
	/**  Engagement provider adapter URL  */
	public var providerUrl: String? = nil
	/**  Engagement adapter extra parameters  */
	public var engagementAdapterSettings: Dictionary<String, StringValue>? = nil
	/**  Shared Secret  */
	public var sharedSecret: String? = nil


	public func setMultiRequestToken(isActive: String) {
		self.dict["isActive"] = isActive
	}
	
	public func setMultiRequestToken(adapterUrl: String) {
		self.dict["adapterUrl"] = adapterUrl
	}
	
	public func setMultiRequestToken(providerUrl: String) {
		self.dict["providerUrl"] = providerUrl
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
		if dict["providerUrl"] != nil {
			providerUrl = dict["providerUrl"] as? String
		}
		if dict["engagementAdapterSettings"] != nil {
			engagementAdapterSettings = try JSONParser.parse(map: dict["engagementAdapterSettings"] as! [String: Any])
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
		if(providerUrl != nil) {
			dict["providerUrl"] = providerUrl!
		}
		if(engagementAdapterSettings != nil) {
			dict["engagementAdapterSettings"] = engagementAdapterSettings!.toDictionary()
		}
		return dict
	}
}

