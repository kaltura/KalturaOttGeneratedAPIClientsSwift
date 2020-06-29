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

/**  Media concurrency rule  */
open class MediaConcurrencyRule: ObjectBase {

	public class MediaConcurrencyRuleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var concurrencyLimitationType: BaseTokenizedObject {
			get {
				return self.append("concurrencyLimitationType") 
			}
		}
		
		public var limitation: BaseTokenizedObject {
			get {
				return self.append("limitation") 
			}
		}
	}

	/**  Media concurrency rule  identifier  */
	public var id: String? = nil
	/**  Media concurrency rule  name  */
	public var name: String? = nil
	/**  Concurrency limitation type  */
	public var concurrencyLimitationType: ConcurrencyLimitationType? = nil
	/**  Limitation  */
	public var limitation: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(concurrencyLimitationType: String) {
		self.dict["concurrencyLimitationType"] = concurrencyLimitationType
	}
	
	public func setMultiRequestToken(limitation: String) {
		self.dict["limitation"] = limitation
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["concurrencyLimitationType"] != nil {
			concurrencyLimitationType = ConcurrencyLimitationType(rawValue: "\(dict["concurrencyLimitationType"]!)")
		}
		if dict["limitation"] != nil {
			limitation = dict["limitation"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(concurrencyLimitationType != nil) {
			dict["concurrencyLimitationType"] = concurrencyLimitationType!.rawValue
		}
		if(limitation != nil) {
			dict["limitation"] = limitation!
		}
		return dict
	}
}

