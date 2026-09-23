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

/**  Program-specific semantic search parameters.              Presence of this
  object indicates programs should be included in search results.  */
open class ProgramSemanticSearchParams: ObjectBase {

	public class ProgramSemanticSearchParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var endsBefore: BaseTokenizedObject {
			get {
				return self.append("endsBefore") 
			}
		}
		
		public var expiresAfter: BaseTokenizedObject {
			get {
				return self.append("expiresAfter") 
			}
		}
	}

	/**  Only include programs that end before this timestamp (Unix epoch seconds).      
	         Optional filter.  */
	public var endsBefore: Int64? = nil
	/**  Only include programs that expire after this timestamp (Unix epoch seconds).    
	           Optional filter.  */
	public var expiresAfter: Int64? = nil


	public func setMultiRequestToken(endsBefore: String) {
		self.dict["endsBefore"] = endsBefore
	}
	
	public func setMultiRequestToken(expiresAfter: String) {
		self.dict["expiresAfter"] = expiresAfter
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["endsBefore"] != nil {
			endsBefore = Int64("\(dict["endsBefore"]!)")
		}
		if dict["expiresAfter"] != nil {
			expiresAfter = Int64("\(dict["expiresAfter"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(endsBefore != nil) {
			dict["endsBefore"] = endsBefore!
		}
		if(expiresAfter != nil) {
			dict["expiresAfter"] = expiresAfter!
		}
		return dict
	}
}

