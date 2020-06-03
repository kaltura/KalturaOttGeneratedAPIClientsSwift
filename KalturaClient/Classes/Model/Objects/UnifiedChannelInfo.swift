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

open class UnifiedChannelInfo: UnifiedChannel {

	public class UnifiedChannelInfoTokenizer: UnifiedChannel.UnifiedChannelTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var startDateInSeconds: BaseTokenizedObject {
			get {
				return self.append("startDateInSeconds") 
			}
		}
		
		public var endDateInSeconds: BaseTokenizedObject {
			get {
				return self.append("endDateInSeconds") 
			}
		}
	}

	/**  Channel&amp;#160;name  */
	public var name: String? = nil
	/**  Start date in seconds  */
	public var startDateInSeconds: Int64? = nil
	/**  End date in seconds  */
	public var endDateInSeconds: Int64? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(startDateInSeconds: String) {
		self.dict["startDateInSeconds"] = startDateInSeconds
	}
	
	public func setMultiRequestToken(endDateInSeconds: String) {
		self.dict["endDateInSeconds"] = endDateInSeconds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["startDateInSeconds"] != nil {
			startDateInSeconds = Int64("\(dict["startDateInSeconds"]!)")
		}
		if dict["endDateInSeconds"] != nil {
			endDateInSeconds = Int64("\(dict["endDateInSeconds"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(startDateInSeconds != nil) {
			dict["startDateInSeconds"] = startDateInSeconds!
		}
		if(endDateInSeconds != nil) {
			dict["endDateInSeconds"] = endDateInSeconds!
		}
		return dict
	}
}

