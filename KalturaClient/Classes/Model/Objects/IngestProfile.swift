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

/**  Ingest profile  */
open class IngestProfile: ObjectBase {

	public class IngestProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var assetTypeId: BaseTokenizedObject {
			get {
				return self.append("assetTypeId") 
			}
		}
		
		public var transformationAdapterUrl: BaseTokenizedObject {
			get {
				return self.append("transformationAdapterUrl") 
			}
		}
		
		public var transformationAdapterSettings: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("transformationAdapterSettings"))
			}
		}
		
		public var transformationAdapterSharedSecret: BaseTokenizedObject {
			get {
				return self.append("transformationAdapterSharedSecret") 
			}
		}
		
		public var defaultAutoFillPolicy: BaseTokenizedObject {
			get {
				return self.append("defaultAutoFillPolicy") 
			}
		}
		
		public var defaultOverlapPolicy: BaseTokenizedObject {
			get {
				return self.append("defaultOverlapPolicy") 
			}
		}
		
		public var overlapChannels: BaseTokenizedObject {
			get {
				return self.append("overlapChannels") 
			}
		}
	}

	/**  Ingest profile identifier  */
	public var id: Int? = nil
	/**  Ingest profile name  */
	public var name: String? = nil
	/**  Ingest profile externalId  */
	public var externalId: String? = nil
	/**  Type of assets that this profile suppose to ingest: 0 - EPG, 1 - MEDIA  */
	public var assetTypeId: Int? = nil
	/**  Transformation Adapter URL  */
	public var transformationAdapterUrl: String? = nil
	/**  Transformation Adapter settings  */
	public var transformationAdapterSettings: Dictionary<String, StringValue>? = nil
	/**  Transformation Adapter shared secret  */
	public var transformationAdapterSharedSecret: String? = nil
	/**  Ingest profile default Auto-fill policy  */
	public var defaultAutoFillPolicy: IngestProfileAutofillPolicy? = nil
	/**  Ingest profile default Overlap policy  */
	public var defaultOverlapPolicy: IngestProfileOverlapPolicy? = nil
	/**  Ingest profile overlap channels  */
	public var overlapChannels: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(assetTypeId: String) {
		self.dict["assetTypeId"] = assetTypeId
	}
	
	public func setMultiRequestToken(transformationAdapterUrl: String) {
		self.dict["transformationAdapterUrl"] = transformationAdapterUrl
	}
	
	public func setMultiRequestToken(transformationAdapterSharedSecret: String) {
		self.dict["transformationAdapterSharedSecret"] = transformationAdapterSharedSecret
	}
	
	public func setMultiRequestToken(defaultAutoFillPolicy: String) {
		self.dict["defaultAutoFillPolicy"] = defaultAutoFillPolicy
	}
	
	public func setMultiRequestToken(defaultOverlapPolicy: String) {
		self.dict["defaultOverlapPolicy"] = defaultOverlapPolicy
	}
	
	public func setMultiRequestToken(overlapChannels: String) {
		self.dict["overlapChannels"] = overlapChannels
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
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["assetTypeId"] != nil {
			assetTypeId = dict["assetTypeId"] as? Int
		}
		if dict["transformationAdapterUrl"] != nil {
			transformationAdapterUrl = dict["transformationAdapterUrl"] as? String
		}
		if dict["transformationAdapterSettings"] != nil {
			transformationAdapterSettings = try JSONParser.parse(map: dict["transformationAdapterSettings"] as! [String: Any])
		}
		if dict["transformationAdapterSharedSecret"] != nil {
			transformationAdapterSharedSecret = dict["transformationAdapterSharedSecret"] as? String
		}
		if dict["defaultAutoFillPolicy"] != nil {
			defaultAutoFillPolicy = IngestProfileAutofillPolicy(rawValue: "\(dict["defaultAutoFillPolicy"]!)")
		}
		if dict["defaultOverlapPolicy"] != nil {
			defaultOverlapPolicy = IngestProfileOverlapPolicy(rawValue: "\(dict["defaultOverlapPolicy"]!)")
		}
		if dict["overlapChannels"] != nil {
			overlapChannels = dict["overlapChannels"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		if(assetTypeId != nil) {
			dict["assetTypeId"] = assetTypeId!
		}
		if(transformationAdapterUrl != nil) {
			dict["transformationAdapterUrl"] = transformationAdapterUrl!
		}
		if(transformationAdapterSettings != nil) {
			dict["transformationAdapterSettings"] = transformationAdapterSettings!.toDictionary()
		}
		if(transformationAdapterSharedSecret != nil) {
			dict["transformationAdapterSharedSecret"] = transformationAdapterSharedSecret!
		}
		if(defaultAutoFillPolicy != nil) {
			dict["defaultAutoFillPolicy"] = defaultAutoFillPolicy!.rawValue
		}
		if(defaultOverlapPolicy != nil) {
			dict["defaultOverlapPolicy"] = defaultOverlapPolicy!.rawValue
		}
		if(overlapChannels != nil) {
			dict["overlapChannels"] = overlapChannels!
		}
		return dict
	}
}

