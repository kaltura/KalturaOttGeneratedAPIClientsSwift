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

/**  User interest topic  */
open class UserInterestTopic: ObjectBase {

	public class UserInterestTopicTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var metaId: BaseTokenizedObject {
			get {
				return self.append("metaId") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
		
		public func parentTopic<T: UserInterestTopic.UserInterestTopicTokenizer>() -> T {
			return T(self.append("parentTopic"))
		}
	}

	/**  Meta identifier  */
	public var metaId: String? = nil
	/**  Meta Value  */
	public var value: String? = nil
	/**  Parent topic  */
	public var parentTopic: UserInterestTopic? = nil


	public func setMultiRequestToken(metaId: String) {
		self.dict["metaId"] = metaId
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["metaId"] != nil {
			metaId = dict["metaId"] as? String
		}
		if dict["value"] != nil {
			value = dict["value"] as? String
		}
		if dict["parentTopic"] != nil {
		parentTopic = try JSONParser.parse(object: dict["parentTopic"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metaId != nil) {
			dict["metaId"] = metaId!
		}
		if(value != nil) {
			dict["value"] = value!
		}
		if(parentTopic != nil) {
			dict["parentTopic"] = parentTopic!.toDictionary()
		}
		return dict
	}
}

