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

/**  Asset info  */
open class Asset: ObjectBase {

	public class AssetTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var multilingualName: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualName"))
			} 
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var multilingualDescription: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualDescription"))
			} 
		}
		
		public var images: ArrayTokenizedObject<MediaImage.MediaImageTokenizer> {
			get {
				return ArrayTokenizedObject<MediaImage.MediaImageTokenizer>(self.append("images"))
			} 
		}
		
		public var mediaFiles: ArrayTokenizedObject<MediaFile.MediaFileTokenizer> {
			get {
				return ArrayTokenizedObject<MediaFile.MediaFileTokenizer>(self.append("mediaFiles"))
			} 
		}
		
		public var metas: DictionaryTokenizedObject<Value.ValueTokenizer> {
			get {
				return DictionaryTokenizedObject<Value.ValueTokenizer>(self.append("metas"))
			}
		}
		
		public var tags: DictionaryTokenizedObject<MultilingualStringValueArray.MultilingualStringValueArrayTokenizer> {
			get {
				return DictionaryTokenizedObject<MultilingualStringValueArray.MultilingualStringValueArrayTokenizer>(self.append("tags"))
			}
		}
		
		public var relatedEntities: DictionaryTokenizedObject<RelatedEntityArray.RelatedEntityArrayTokenizer> {
			get {
				return DictionaryTokenizedObject<RelatedEntityArray.RelatedEntityArrayTokenizer>(self.append("relatedEntities"))
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public var indexStatus: BaseTokenizedObject {
			get {
				return self.append("indexStatus") 
			}
		}
	}

	/**  Unique identifier for the asset  */
	public var id: Int64? = nil
	/**  Identifies the asset type (EPG, Recording, Movie, TV Series, etc).              
	  Possible values: 0 – EPG linear programs, 1 - Recording; or any asset type ID
	  according to the asset types IDs defined in the system.  */
	public var type: Int? = nil
	/**  Asset name  */
	public var name: String? = nil
	/**  Asset name  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  Asset description  */
	public var description: String? = nil
	/**  Asset description  */
	public var multilingualDescription: Array<TranslationToken>? = nil
	/**  Collection of images details that can be used to represent this asset  */
	public var images: Array<MediaImage>? = nil
	/**  Files  */
	public var mediaFiles: Array<MediaFile>? = nil
	/**  Dynamic collection of key-value pairs according to the String Meta defined in
	  the system  */
	public var metas: Dictionary<String, Value>? = nil
	/**  Dynamic collection of key-value pairs according to the Tag Types defined in the
	  system  */
	public var tags: Dictionary<String, MultilingualStringValueArray>? = nil
	/**  Dynamic collection of key-value pairs according to the related entity defined in
	  the system  */
	public var relatedEntities: Dictionary<String, RelatedEntityArray>? = nil
	/**  Date and time represented as epoch. For VOD – since when the asset is
	  available in the catalog. For EPG/Linear – when the program is aired (can be
	  in the future).  */
	public var startDate: Int64? = nil
	/**  Date and time represented as epoch. For VOD – till when the asset be available
	  in the catalog. For EPG/Linear – program end time and date  */
	public var endDate: Int64? = nil
	/**  Specifies when was the Asset was created. Date and time represented as epoch.  */
	public var createDate: Int64? = nil
	/**  Specifies when was the Asset last updated. Date and time represented as epoch.  */
	public var updateDate: Int64? = nil
	/**  External identifier for the asset  */
	public var externalId: String? = nil
	/**  The media asset index status  */
	public var indexStatus: AssetIndexStatus? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public func setMultiRequestToken(externalId: String) {
		self.dict["externalId"] = externalId
	}
	
	public func setMultiRequestToken(indexStatus: String) {
		self.dict["indexStatus"] = indexStatus
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["type"] != nil {
			type = dict["type"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["multilingualDescription"] != nil {
			multilingualDescription = try JSONParser.parse(array: dict["multilingualDescription"] as! [Any])
		}
		if dict["images"] != nil {
			images = try JSONParser.parse(array: dict["images"] as! [Any])
		}
		if dict["mediaFiles"] != nil {
			mediaFiles = try JSONParser.parse(array: dict["mediaFiles"] as! [Any])
		}
		if dict["metas"] != nil {
			metas = try JSONParser.parse(map: dict["metas"] as! [String: Any])
		}
		if dict["tags"] != nil {
			tags = try JSONParser.parse(map: dict["tags"] as! [String: Any])
		}
		if dict["relatedEntities"] != nil {
			relatedEntities = try JSONParser.parse(map: dict["relatedEntities"] as! [String: Any])
		}
		if dict["startDate"] != nil {
			startDate = Int64("\(dict["startDate"]!)")
		}
		if dict["endDate"] != nil {
			endDate = Int64("\(dict["endDate"]!)")
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}
		if dict["indexStatus"] != nil {
			indexStatus = AssetIndexStatus(rawValue: "\(dict["indexStatus"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.map { value in value.toDictionary() }
		}
		if(metas != nil) {
			dict["metas"] = metas!.toDictionary()
		}
		if(tags != nil) {
			dict["tags"] = tags!.toDictionary()
		}
		if(relatedEntities != nil) {
			dict["relatedEntities"] = relatedEntities!.toDictionary()
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		return dict
	}
}

