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

open class GenerateProgramMetadatasByDescription: GenerateMetadataByDescription {

	public class GenerateProgramMetadatasByDescriptionTokenizer: GenerateMetadataByDescription.GenerateMetadataByDescriptionTokenizer {
		
		public var regenerate: BaseTokenizedObject {
			get {
				return self.append("regenerate") 
			}
		}
	}

	/**  A boolean flag that allows the API user to force the regeneration of metadata.  
	             If true, the service will run a new analysis even if enriched
	  metadata already exists for the program&amp;#39;s CRID.              If false
	  (default), the service will reuse existing metadata if available for the CRID.  */
	public var regenerate: Bool? = nil


	public func setMultiRequestToken(regenerate: String) {
		self.dict["regenerate"] = regenerate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["regenerate"] != nil {
			regenerate = dict["regenerate"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(regenerate != nil) {
			dict["regenerate"] = regenerate!
		}
		return dict
	}
}

