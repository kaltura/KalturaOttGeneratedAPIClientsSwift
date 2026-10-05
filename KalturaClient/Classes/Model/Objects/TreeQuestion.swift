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

/**  A class representing a question in the decision tree.  */
open class TreeQuestion: ObjectBase {

	public class TreeQuestionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var questionId: BaseTokenizedObject {
			get {
				return self.append("questionId") 
			}
		}
		
		public var text: BaseTokenizedObject {
			get {
				return self.append("text") 
			}
		}
		
		public var level: BaseTokenizedObject {
			get {
				return self.append("level") 
			}
		}
	}

	/**  Unique identifier for the question.  */
	public var questionId: String? = nil
	/**  The question text to display to the user.  */
	public var text: String? = nil
	/**  The depth level in the tree (1 for top-level).  */
	public var level: Int? = nil


	public func setMultiRequestToken(questionId: String) {
		self.dict["questionId"] = questionId
	}
	
	public func setMultiRequestToken(text: String) {
		self.dict["text"] = text
	}
	
	public func setMultiRequestToken(level: String) {
		self.dict["level"] = level
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["questionId"] != nil {
			questionId = dict["questionId"] as? String
		}
		if dict["text"] != nil {
			text = dict["text"] as? String
		}
		if dict["level"] != nil {
			level = dict["level"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(questionId != nil) {
			dict["questionId"] = questionId!
		}
		if(text != nil) {
			dict["text"] = text!
		}
		if(level != nil) {
			dict["level"] = level!
		}
		return dict
	}
}

