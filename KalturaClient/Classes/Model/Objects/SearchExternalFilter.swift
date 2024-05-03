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

open class SearchExternalFilter: AssetFilter {

	public class SearchExternalFilterTokenizer: AssetFilter.AssetFilterTokenizer {
		
		public var query: BaseTokenizedObject {
			get {
				return self.append("query") 
			}
		}
		
		public var utcOffsetEqual: BaseTokenizedObject {
			get {
				return self.append("utcOffsetEqual") 
			}
		}
		
		public var typeIn: BaseTokenizedObject {
			get {
				return self.append("typeIn") 
			}
		}
	}

	/**  Query  */
	public var query: String? = nil
	/**  UtcOffsetEqual  */
	public var utcOffsetEqual: Int? = nil
	/**  Comma separated list of asset types to search within.               Possible
	  values: 0 – EPG linear programs entries, any media type ID (according to media
	  type IDs defined dynamically in the system).              If omitted – all
	  types should be included.  */
	public var typeIn: String? = nil


	public func setMultiRequestToken(query: String) {
		self.dict["query"] = query
	}
	
	public func setMultiRequestToken(utcOffsetEqual: String) {
		self.dict["utcOffsetEqual"] = utcOffsetEqual
	}
	
	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["query"] != nil {
			query = dict["query"] as? String
		}
		if dict["utcOffsetEqual"] != nil {
			utcOffsetEqual = dict["utcOffsetEqual"] as? Int
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(query != nil) {
			dict["query"] = query!
		}
		if(utcOffsetEqual != nil) {
			dict["utcOffsetEqual"] = utcOffsetEqual!
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		return dict
	}
}

