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

open class ChannelsFilter: Filter {

	public class ChannelsFilterTokenizer: Filter.FilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var mediaIdEqual: BaseTokenizedObject {
			get {
				return self.append("mediaIdEqual") 
			}
		}
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
			}
		}
		
		public var nameStartsWith: BaseTokenizedObject {
			get {
				return self.append("nameStartsWith") 
			}
		}
	}

	/**  channel identifier to filter by  */
	public var idEqual: Int? = nil
	/**  media identifier to filter by  */
	public var mediaIdEqual: Int64? = nil
	/**  Exact channel name to filter by  */
	public var nameEqual: String? = nil
	/**  Channel name starts with (auto-complete)  */
	public var nameStartsWith: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(mediaIdEqual: String) {
		self.dict["mediaIdEqual"] = mediaIdEqual
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(nameStartsWith: String) {
		self.dict["nameStartsWith"] = nameStartsWith
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["mediaIdEqual"] != nil {
			mediaIdEqual = Int64("\(dict["mediaIdEqual"]!)")
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["nameStartsWith"] != nil {
			nameStartsWith = dict["nameStartsWith"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(mediaIdEqual != nil) {
			dict["mediaIdEqual"] = mediaIdEqual!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(nameStartsWith != nil) {
			dict["nameStartsWith"] = nameStartsWith!
		}
		return dict
	}
}

