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

/**  A class representing the response from the getNextNodeAndRecommendation API.    
           Contains the next question, possible answers, and content
  recommendations.  */
open class TreeNextNodeResponse: ObjectBase {

	public class TreeNextNodeResponseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var treeId: BaseTokenizedObject {
			get {
				return self.append("treeId") 
			}
		}
		
		public func question<T: TreeQuestion.TreeQuestionTokenizer>() -> T {
			return T(self.append("question"))
		}
		
		public var totalLevelQuestions: BaseTokenizedObject {
			get {
				return self.append("totalLevelQuestions") 
			}
		}
		
		public var answers: ArrayTokenizedObject<TreeAnswer.TreeAnswerTokenizer> {
			get {
				return ArrayTokenizedObject<TreeAnswer.TreeAnswerTokenizer>(self.append("answers"))
			} 
		}
		
		public func recommendations<T: TreeRecommendations.TreeRecommendationsTokenizer>() -> T {
			return T(self.append("recommendations"))
		}
	}

	/**  The tree id whom this node belongs to.  */
	public var treeId: String? = nil
	/**  The next question to present to the user, or null for terminal nodes.  */
	public var question: TreeQuestion? = nil
	/**  Number of total questions in the level.  */
	public var totalLevelQuestions: Int? = nil
	/**  Array of possible answer options for the question.  */
	public var answers: Array<TreeAnswer>? = nil
	/**  Content recommendations based on the current path.  */
	public var recommendations: TreeRecommendations? = nil


	public func setMultiRequestToken(treeId: String) {
		self.dict["treeId"] = treeId
	}
	
	public func setMultiRequestToken(totalLevelQuestions: String) {
		self.dict["totalLevelQuestions"] = totalLevelQuestions
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["treeId"] != nil {
			treeId = dict["treeId"] as? String
		}
		if dict["question"] != nil {
		question = try JSONParser.parse(object: dict["question"] as! [String: Any])		}
		if dict["totalLevelQuestions"] != nil {
			totalLevelQuestions = dict["totalLevelQuestions"] as? Int
		}
		if dict["answers"] != nil {
			answers = try JSONParser.parse(array: dict["answers"] as! [Any])
		}
		if dict["recommendations"] != nil {
		recommendations = try JSONParser.parse(object: dict["recommendations"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(treeId != nil) {
			dict["treeId"] = treeId!
		}
		if(question != nil) {
			dict["question"] = question!.toDictionary()
		}
		if(totalLevelQuestions != nil) {
			dict["totalLevelQuestions"] = totalLevelQuestions!
		}
		if(answers != nil) {
			dict["answers"] = answers!.map { value in value.toDictionary() }
		}
		if(recommendations != nil) {
			dict["recommendations"] = recommendations!.toDictionary()
		}
		return dict
	}
}

