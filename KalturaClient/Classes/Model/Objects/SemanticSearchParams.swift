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

/**  Parameters for unified semantic search across media and programs.             
  At least one of programParams or mediaParams must be provided.             
  Presence of a parameter object indicates inclusion in search results.  */
open class SemanticSearchParams: ObjectBase {

	public class SemanticSearchParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var query: BaseTokenizedObject {
			get {
				return self.append("query") 
			}
		}
		
		public var refineQuery: BaseTokenizedObject {
			get {
				return self.append("refineQuery") 
			}
		}
		
		public var size: BaseTokenizedObject {
			get {
				return self.append("size") 
			}
		}
		
		public func programParams<T: ProgramSemanticSearchParams.ProgramSemanticSearchParamsTokenizer>() -> T {
			return T(self.append("programParams"))
		}
		
		public func mediaParams<T: MediaSemanticSearchParams.MediaSemanticSearchParamsTokenizer>() -> T {
			return T(self.append("mediaParams"))
		}
	}

	/**  Search query text.  */
	public var query: String? = nil
	/**  Whether to refine the query using LLM.  */
	public var refineQuery: Bool? = nil
	/**  Maximum number of results to return.  */
	public var size: Int? = nil
	/**  Program-specific search parameters.              If provided, programs will be
	  included in search results.  */
	public var programParams: ProgramSemanticSearchParams? = nil
	/**  Media-specific search parameters.              If provided, media/VOD assets
	  will be included in search results.  */
	public var mediaParams: MediaSemanticSearchParams? = nil


	public func setMultiRequestToken(query: String) {
		self.dict["query"] = query
	}
	
	public func setMultiRequestToken(refineQuery: String) {
		self.dict["refineQuery"] = refineQuery
	}
	
	public func setMultiRequestToken(size: String) {
		self.dict["size"] = size
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["query"] != nil {
			query = dict["query"] as? String
		}
		if dict["refineQuery"] != nil {
			refineQuery = dict["refineQuery"] as? Bool
		}
		if dict["size"] != nil {
			size = dict["size"] as? Int
		}
		if dict["programParams"] != nil {
		programParams = try JSONParser.parse(object: dict["programParams"] as! [String: Any])		}
		if dict["mediaParams"] != nil {
		mediaParams = try JSONParser.parse(object: dict["mediaParams"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(query != nil) {
			dict["query"] = query!
		}
		if(refineQuery != nil) {
			dict["refineQuery"] = refineQuery!
		}
		if(size != nil) {
			dict["size"] = size!
		}
		if(programParams != nil) {
			dict["programParams"] = programParams!.toDictionary()
		}
		if(mediaParams != nil) {
			dict["mediaParams"] = mediaParams!.toDictionary()
		}
		return dict
	}
}

