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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Asset info  */
open class Asset: ObjectBase {

	/**  Unique identifier for the asset  */
	public var id: Int64? = nil
	/**  Identifies the asset type (EPG, Recording, Movie, TV Series, etc).              
	  Possible values: 0 – EPG linear programs, 1 - Recording; or any asset type ID
	  according to the asset types IDs defined in the system.  */
	public var type: Int? = nil
	/**  Asset name  */
	public var name: String? = nil
	/**  Asset name  */
	public var multilingualName: MultilingualString? = nil
	/**  Asset description  */
	public var description: String? = nil
	/**  Asset description  */
	public var multilingualDescription: MultilingualString? = nil
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
	/**  Date and time represented as epoch. For VOD – since when the asset is
	  available in the catalog. For EPG/Linear – when the program is aired (can be
	  in the future).  */
	public var startDate: Int64? = nil
	/**  Date and time represented as epoch. For VOD – till when the asset be available
	  in the catalog. For EPG/Linear – program end time and date  */
	public var endDate: Int64? = nil
	/**  Enable cDVR  */
	public var enableCdvr: Bool? = nil
	/**  Enable catch-up  */
	public var enableCatchUp: Bool? = nil
	/**  Enable start over  */
	public var enableStartOver: Bool? = nil
	/**  Enable trick-play  */
	public var enableTrickPlay: Bool? = nil
	/**  External identifier for the media file  */
	public var externalId: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int64
		}
		if dict["type"] != nil {
			type = dict["type"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
		multilingualName = try JSONParser.parse(object: dict["multilingualName"] as! [String: Any])		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["multilingualDescription"] != nil {
		multilingualDescription = try JSONParser.parse(object: dict["multilingualDescription"] as! [String: Any])		}
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
		if dict["startDate"] != nil {
			startDate = dict["startDate"] as? Int64
		}
		if dict["endDate"] != nil {
			endDate = dict["endDate"] as? Int64
		}
		if dict["enableCdvr"] != nil {
			enableCdvr = dict["enableCdvr"] as? Bool
		}
		if dict["enableCatchUp"] != nil {
			enableCatchUp = dict["enableCatchUp"] as? Bool
		}
		if dict["enableStartOver"] != nil {
			enableStartOver = dict["enableStartOver"] as? Bool
		}
		if dict["enableTrickPlay"] != nil {
			enableTrickPlay = dict["enableTrickPlay"] as? Bool
		}
		if dict["externalId"] != nil {
			externalId = dict["externalId"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.toDictionary()
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.toDictionary()
		}
		if(images != nil) {
			dict["images"] = images!.map { value in value.toDictionary() }
		}
		if(mediaFiles != nil) {
			dict["mediaFiles"] = mediaFiles!.map { value in value.toDictionary() }
		}
		if(metas != nil) {
			dict["metas"] = metas!.map { key, value in (key, value.toDictionary()) }
		}
		if(tags != nil) {
			dict["tags"] = tags!.map { key, value in (key, value.toDictionary()) }
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(enableCdvr != nil) {
			dict["enableCdvr"] = enableCdvr!
		}
		if(enableCatchUp != nil) {
			dict["enableCatchUp"] = enableCatchUp!
		}
		if(enableStartOver != nil) {
			dict["enableStartOver"] = enableStartOver!
		}
		if(enableTrickPlay != nil) {
			dict["enableTrickPlay"] = enableTrickPlay!
		}
		if(externalId != nil) {
			dict["externalId"] = externalId!
		}
		return dict
	}
}

