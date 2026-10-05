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
  assetStruct  */
open class MetaFieldNameMap: ObjectBase {

	public class MetaFieldNameMapTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var genre: BaseTokenizedObject {
			get {
				return self.append("genre") 
			}
		}
		
		public var subGenre: BaseTokenizedObject {
			get {
				return self.append("subGenre") 
			}
		}
		
		public var sentiment: BaseTokenizedObject {
			get {
				return self.append("sentiment") 
			}
		}
		
		public var suggestedTitle: BaseTokenizedObject {
			get {
				return self.append("suggestedTitle") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var oneLiner: BaseTokenizedObject {
			get {
				return self.append("oneLiner") 
			}
		}
		
		public var keywords: BaseTokenizedObject {
			get {
				return self.append("keywords") 
			}
		}
		
		public var sensitiveContent: BaseTokenizedObject {
			get {
				return self.append("sensitiveContent") 
			}
		}
	}

	/**  map &amp;#39;genre&amp;#39; AI generated metadata name to assetStruct&amp;#39;s
	  meta systemName  */
	public var genre: String? = nil
	/**  map &amp;#39;subGenre&amp;#39; AI generated metadata name to
	  assetStruct&amp;#39;s meta systemName  */
	public var subGenre: String? = nil
	/**  map &amp;#39;sentiment&amp;#39; AI generated metadata name to
	  assetStruct&amp;#39;s meta systemName  */
	public var sentiment: String? = nil
	/**  map &amp;#39;suggestedTitle&amp;#39; AI generated metadata name to
	  assetStruct&amp;#39;s meta systemName  */
	public var suggestedTitle: String? = nil
	/**  map &amp;#39;Description&amp;#39; AI generated metadata name to
	  assetStruct&amp;#39;s meta systemName  */
	public var description: String? = nil
	/**  map &amp;#39;oneLiner&amp;#39; AI generated metadata name to
	  assetStruct&amp;#39;s meta systemName  */
	public var oneLiner: String? = nil
	/**  map &amp;#39;Keywords&amp;#39; AI generated metadata name to
	  assetStruct&amp;#39;s meta systemName  */
	public var keywords: String? = nil
	/**  map &amp;#39;sensitiveContent&amp;#39; AI generated metadata name to
	  assetStruct&amp;#39;s meta systemName  */
	public var sensitiveContent: String? = nil


	public func setMultiRequestToken(genre: String) {
		self.dict["genre"] = genre
	}
	
	public func setMultiRequestToken(subGenre: String) {
		self.dict["subGenre"] = subGenre
	}
	
	public func setMultiRequestToken(sentiment: String) {
		self.dict["sentiment"] = sentiment
	}
	
	public func setMultiRequestToken(suggestedTitle: String) {
		self.dict["suggestedTitle"] = suggestedTitle
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(oneLiner: String) {
		self.dict["oneLiner"] = oneLiner
	}
	
	public func setMultiRequestToken(keywords: String) {
		self.dict["keywords"] = keywords
	}
	
	public func setMultiRequestToken(sensitiveContent: String) {
		self.dict["sensitiveContent"] = sensitiveContent
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["genre"] != nil {
			genre = dict["genre"] as? String
		}
		if dict["subGenre"] != nil {
			subGenre = dict["subGenre"] as? String
		}
		if dict["sentiment"] != nil {
			sentiment = dict["sentiment"] as? String
		}
		if dict["suggestedTitle"] != nil {
			suggestedTitle = dict["suggestedTitle"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["oneLiner"] != nil {
			oneLiner = dict["oneLiner"] as? String
		}
		if dict["keywords"] != nil {
			keywords = dict["keywords"] as? String
		}
		if dict["sensitiveContent"] != nil {
			sensitiveContent = dict["sensitiveContent"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(genre != nil) {
			dict["genre"] = genre!
		}
		if(subGenre != nil) {
			dict["subGenre"] = subGenre!
		}
		if(sentiment != nil) {
			dict["sentiment"] = sentiment!
		}
		if(suggestedTitle != nil) {
			dict["suggestedTitle"] = suggestedTitle!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(oneLiner != nil) {
			dict["oneLiner"] = oneLiner!
		}
		if(keywords != nil) {
			dict["keywords"] = keywords!
		}
		if(sensitiveContent != nil) {
			dict["sensitiveContent"] = sensitiveContent!
		}
		return dict
	}
}

