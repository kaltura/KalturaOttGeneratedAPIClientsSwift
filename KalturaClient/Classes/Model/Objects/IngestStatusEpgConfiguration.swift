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

open class IngestStatusEpgConfiguration: ObjectBase {

	public class IngestStatusEpgConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var isSupported: BaseTokenizedObject {
			get {
				return self.append("isSupported") 
			}
		}
		
		public var retainingPeriod: BaseTokenizedObject {
			get {
				return self.append("retainingPeriod") 
			}
		}
	}

	/**  Defines whether partner in question enabled core ingest status service.  */
	public var isSupported: Bool? = nil
	/**  Defines the time in seconds that the service retain information about ingest
	  status.  */
	public var retainingPeriod: Int? = nil


	public func setMultiRequestToken(isSupported: String) {
		self.dict["isSupported"] = isSupported
	}
	
	public func setMultiRequestToken(retainingPeriod: String) {
		self.dict["retainingPeriod"] = retainingPeriod
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isSupported"] != nil {
			isSupported = dict["isSupported"] as? Bool
		}
		if dict["retainingPeriod"] != nil {
			retainingPeriod = dict["retainingPeriod"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isSupported != nil) {
			dict["isSupported"] = isSupported!
		}
		if(retainingPeriod != nil) {
			dict["retainingPeriod"] = retainingPeriod!
		}
		return dict
	}
}

