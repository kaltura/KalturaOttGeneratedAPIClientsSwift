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

/**  Partner configuration for semantic query generation.  */
open class SemanticQueryPartnerConfiguration: ObjectBase {

	public class SemanticQueryPartnerConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var subQueriesCount: BaseTokenizedObject {
			get {
				return self.append("subQueriesCount") 
			}
		}
		
		public var defaultQueriesCount: BaseTokenizedObject {
			get {
				return self.append("defaultQueriesCount") 
			}
		}
		
		public var assetsPerCollectionCount: BaseTokenizedObject {
			get {
				return self.append("assetsPerCollectionCount") 
			}
		}
	}

	/**  The number of sub-queries to generate, including the main (base) one. Optional,
	  Requires Admin role.  */
	public var subQueriesCount: Int? = nil
	/**  The number of default sub-queries to generate if the primary requested query is
	  empty. Optional, Requires Admin role.  */
	public var defaultQueriesCount: Int? = nil
	/**  The number of assets per suggested collection.  */
	public var assetsPerCollectionCount: Int? = nil


	public func setMultiRequestToken(subQueriesCount: String) {
		self.dict["subQueriesCount"] = subQueriesCount
	}
	
	public func setMultiRequestToken(defaultQueriesCount: String) {
		self.dict["defaultQueriesCount"] = defaultQueriesCount
	}
	
	public func setMultiRequestToken(assetsPerCollectionCount: String) {
		self.dict["assetsPerCollectionCount"] = assetsPerCollectionCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["subQueriesCount"] != nil {
			subQueriesCount = dict["subQueriesCount"] as? Int
		}
		if dict["defaultQueriesCount"] != nil {
			defaultQueriesCount = dict["defaultQueriesCount"] as? Int
		}
		if dict["assetsPerCollectionCount"] != nil {
			assetsPerCollectionCount = dict["assetsPerCollectionCount"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(subQueriesCount != nil) {
			dict["subQueriesCount"] = subQueriesCount!
		}
		if(defaultQueriesCount != nil) {
			dict["defaultQueriesCount"] = defaultQueriesCount!
		}
		if(assetsPerCollectionCount != nil) {
			dict["assetsPerCollectionCount"] = assetsPerCollectionCount!
		}
		return dict
	}
}

