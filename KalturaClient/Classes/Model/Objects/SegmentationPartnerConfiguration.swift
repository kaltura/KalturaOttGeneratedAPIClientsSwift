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

/**  Partner configuration for segments configuration  */
open class SegmentationPartnerConfiguration: ObjectBase {

	public class SegmentationPartnerConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var maxCalculatedPeriod: BaseTokenizedObject {
			get {
				return self.append("maxCalculatedPeriod") 
			}
		}
		
		public var maxDynamicSegments: BaseTokenizedObject {
			get {
				return self.append("maxDynamicSegments") 
			}
		}
	}

	/**  The maximum number of past days to be calculated for dynamic segments,
	  default=180  */
	public var maxCalculatedPeriod: Int? = nil
	/**  How many dynamic segments (segments with conditions) the operator is allowed to
	  have, default=50  */
	public var maxDynamicSegments: Int? = nil


	public func setMultiRequestToken(maxCalculatedPeriod: String) {
		self.dict["maxCalculatedPeriod"] = maxCalculatedPeriod
	}
	
	public func setMultiRequestToken(maxDynamicSegments: String) {
		self.dict["maxDynamicSegments"] = maxDynamicSegments
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["maxCalculatedPeriod"] != nil {
			maxCalculatedPeriod = dict["maxCalculatedPeriod"] as? Int
		}
		if dict["maxDynamicSegments"] != nil {
			maxDynamicSegments = dict["maxDynamicSegments"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(maxCalculatedPeriod != nil) {
			dict["maxCalculatedPeriod"] = maxCalculatedPeriod!
		}
		if(maxDynamicSegments != nil) {
			dict["maxDynamicSegments"] = maxDynamicSegments!
		}
		return dict
	}
}

