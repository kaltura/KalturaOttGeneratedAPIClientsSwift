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

/**  Map a newly generated metadata field to an existing meta field on the
  assetStruct with configuration  */
open class MetadataFieldConfigurationMap: ObjectBase {

	public class MetadataFieldConfigurationMapTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func genre<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("genre"))
		}
		
		public func subGenre<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("subGenre"))
		}
		
		public func sentiment<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("sentiment"))
		}
		
		public func suggestedTitle<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("suggestedTitle"))
		}
		
		public func description<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("description"))
		}
		
		public func oneLiner<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("oneLiner"))
		}
		
		public func keywords<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("keywords"))
		}
		
		public func sensitiveContent<T: MetadataFieldConfig.MetadataFieldConfigTokenizer>() -> T {
			return T(self.append("sensitiveContent"))
		}
	}

	/**  Configuration for &amp;#39;genre&amp;#39; AI generated metadata field  */
	public var genre: MetadataFieldConfig? = nil
	/**  Configuration for &amp;#39;subGenre&amp;#39; AI generated metadata field  */
	public var subGenre: MetadataFieldConfig? = nil
	/**  Configuration for &amp;#39;sentiment&amp;#39; AI generated metadata field  */
	public var sentiment: MetadataFieldConfig? = nil
	/**  Configuration for &amp;#39;suggestedTitle&amp;#39; AI generated metadata field  */
	public var suggestedTitle: MetadataFieldConfig? = nil
	/**  Configuration for &amp;#39;Description&amp;#39; AI generated metadata field  */
	public var description: MetadataFieldConfig? = nil
	/**  Configuration for &amp;#39;oneLiner&amp;#39; AI generated metadata field  */
	public var oneLiner: MetadataFieldConfig? = nil
	/**  Configuration for &amp;#39;Keywords&amp;#39; AI generated metadata field  */
	public var keywords: MetadataFieldConfig? = nil
	/**  Configuration for &amp;#39;sensitiveContent&amp;#39; AI generated metadata field  */
	public var sensitiveContent: MetadataFieldConfig? = nil


	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["genre"] != nil {
		genre = try JSONParser.parse(object: dict["genre"] as! [String: Any])		}
		if dict["subGenre"] != nil {
		subGenre = try JSONParser.parse(object: dict["subGenre"] as! [String: Any])		}
		if dict["sentiment"] != nil {
		sentiment = try JSONParser.parse(object: dict["sentiment"] as! [String: Any])		}
		if dict["suggestedTitle"] != nil {
		suggestedTitle = try JSONParser.parse(object: dict["suggestedTitle"] as! [String: Any])		}
		if dict["description"] != nil {
		description = try JSONParser.parse(object: dict["description"] as! [String: Any])		}
		if dict["oneLiner"] != nil {
		oneLiner = try JSONParser.parse(object: dict["oneLiner"] as! [String: Any])		}
		if dict["keywords"] != nil {
		keywords = try JSONParser.parse(object: dict["keywords"] as! [String: Any])		}
		if dict["sensitiveContent"] != nil {
		sensitiveContent = try JSONParser.parse(object: dict["sensitiveContent"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(genre != nil) {
			dict["genre"] = genre!.toDictionary()
		}
		if(subGenre != nil) {
			dict["subGenre"] = subGenre!.toDictionary()
		}
		if(sentiment != nil) {
			dict["sentiment"] = sentiment!.toDictionary()
		}
		if(suggestedTitle != nil) {
			dict["suggestedTitle"] = suggestedTitle!.toDictionary()
		}
		if(description != nil) {
			dict["description"] = description!.toDictionary()
		}
		if(oneLiner != nil) {
			dict["oneLiner"] = oneLiner!.toDictionary()
		}
		if(keywords != nil) {
			dict["keywords"] = keywords!.toDictionary()
		}
		if(sensitiveContent != nil) {
			dict["sensitiveContent"] = sensitiveContent!.toDictionary()
		}
		return dict
	}
}

