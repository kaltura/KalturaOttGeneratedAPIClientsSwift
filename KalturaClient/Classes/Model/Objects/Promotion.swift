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

open class Promotion: ObjectBase {

	public class PromotionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var link: BaseTokenizedObject {
			get {
				return self.append("link") 
			}
		}
		
		public var text: BaseTokenizedObject {
			get {
				return self.append("text") 
			}
		}
		
		public var startTime: BaseTokenizedObject {
			get {
				return self.append("startTime") 
			}
		}
		
		public var endTime: BaseTokenizedObject {
			get {
				return self.append("endTime") 
			}
		}
	}

	/**  Link  */
	public var link: String? = nil
	/**  Text  */
	public var text: String? = nil
	/**  StartTime  */
	public var startTime: Int64? = nil
	/**  EndTime  */
	public var endTime: Int64? = nil


	public func setMultiRequestToken(link: String) {
		self.dict["link"] = link
	}
	
	public func setMultiRequestToken(text: String) {
		self.dict["text"] = text
	}
	
	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["link"] != nil {
			link = dict["link"] as? String
		}
		if dict["text"] != nil {
			text = dict["text"] as? String
		}
		if dict["startTime"] != nil {
			startTime = Int64("\(dict["startTime"]!)")
		}
		if dict["endTime"] != nil {
			endTime = Int64("\(dict["endTime"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(link != nil) {
			dict["link"] = link!
		}
		if(text != nil) {
			dict["text"] = text!
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		return dict
	}
}

