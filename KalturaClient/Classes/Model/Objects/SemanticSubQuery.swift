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

/**  The generated sub-query and its properties.  */
open class SemanticSubQuery: ObjectBase {

	public class SemanticSubQueryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var text: BaseTokenizedObject {
			get {
				return self.append("text") 
			}
		}
		
		public func name<T: TranslationToken.TranslationTokenTokenizer>() -> T {
			return T(self.append("name"))
		}
	}

	/**  The text generated for the sub-query.  */
	public var text: String? = nil
	/**  The name generated for the sub-query, using the account&amp;#39;s Primary
	  language.  */
	public var name: TranslationToken? = nil


	public func setMultiRequestToken(text: String) {
		self.dict["text"] = text
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["text"] != nil {
			text = dict["text"] as? String
		}
		if dict["name"] != nil {
		name = try JSONParser.parse(object: dict["name"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(text != nil) {
			dict["text"] = text!
		}
		if(name != nil) {
			dict["name"] = name!.toDictionary()
		}
		return dict
	}
}

