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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Filtering recordings  */
open class RecordingFilter: Filter {

	public class RecordingFilterTokenizer: Filter.FilterTokenizer {
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var filterExpression: BaseTokenizedObject {
			get {
				return self.append("filterExpression") 
			}
		}
	}

	/**  Recording Statuses  */
	public var statusIn: String? = nil
	/**  KSQL expression  */
	public var filterExpression: String? = nil


	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(filterExpression: String) {
		self.dict["filterExpression"] = filterExpression
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["filterExpression"] != nil {
			filterExpression = dict["filterExpression"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(filterExpression != nil) {
			dict["filterExpression"] = filterExpression!
		}
		return dict
	}
}

