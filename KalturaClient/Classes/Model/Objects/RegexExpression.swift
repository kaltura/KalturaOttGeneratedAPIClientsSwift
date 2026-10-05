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

/**  KalturaRegexExpression  */
open class RegexExpression: ObjectBase {

	public class RegexExpressionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var expression: BaseTokenizedObject {
			get {
				return self.append("expression") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
	}

	/**  regex expression  */
	public var expression: String? = nil
	/**  description  */
	public var description: String? = nil


	public func setMultiRequestToken(expression: String) {
		self.dict["expression"] = expression
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["expression"] != nil {
			expression = dict["expression"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(expression != nil) {
			dict["expression"] = expression!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		return dict
	}
}

