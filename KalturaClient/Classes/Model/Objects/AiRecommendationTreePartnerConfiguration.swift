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

/**  A class representing the partner-specific configuration for TV Genie
  recommendation trees.  */
open class AiRecommendationTreePartnerConfiguration: ObjectBase {

	public class AiRecommendationTreePartnerConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var activeMetadataTypes: DictionaryTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return DictionaryTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("activeMetadataTypes"))
			}
		}
		
		public var topLevelQuestions: BaseTokenizedObject {
			get {
				return self.append("topLevelQuestions") 
			}
		}
		
		public var answersPerQuestion: BaseTokenizedObject {
			get {
				return self.append("answersPerQuestion") 
			}
		}
		
		public var levels: BaseTokenizedObject {
			get {
				return self.append("levels") 
			}
		}
		
		public var specialAnswers: BaseTokenizedObject {
			get {
				return self.append("specialAnswers") 
			}
		}
		
		public var numOfRecommendedAssets: BaseTokenizedObject {
			get {
				return self.append("numOfRecommendedAssets") 
			}
		}
		
		public var treeGenerationFrequency: BaseTokenizedObject {
			get {
				return self.append("treeGenerationFrequency") 
			}
		}
		
		public var activeTreeId: BaseTokenizedObject {
			get {
				return self.append("activeTreeId") 
			}
		}
		
		public var featureType: BaseTokenizedObject {
			get {
				return self.append("featureType") 
			}
		}
	}

	/**  Dictionary of metadata types to base questions on (genre, actor, director, etc.)
	  with their respective counts.  */
	public var activeMetadataTypes: Dictionary<String, IntegerValue>? = nil
	/**  Number of top-level questions to generate (range: 5-30).  */
	public var topLevelQuestions: Int? = nil
	/**  Number of regular answers per question (range: 2-4).  */
	public var answersPerQuestion: Int? = nil
	/**  Maximum depth of the decision tree (range: 1-4).  */
	public var levels: Int? = nil
	/**  Whether to include special answers (e.g., &amp;quot;I don&amp;#39;t
	  know&amp;quot;, &amp;quot;Surprise me&amp;quot;) in the tree.  */
	public var specialAnswers: Bool? = nil
	/**  Number of assets to include in each recommendation set (max limit is 50).  */
	public var numOfRecommendedAssets: Int? = nil
	/**  Cron expression for scheduling tree regeneration.  */
	public var treeGenerationFrequency: String? = nil
	/**  Identifier for the tree that is currently marked as Active (can be only one at a
	  time)  */
	public var activeTreeId: String? = nil
	/**  Feature level of the recommendation tree (e.g., Basic, Premium).  */
	public var featureType: AiRecommendationTreeFeatureLevel? = nil


	public func setMultiRequestToken(topLevelQuestions: String) {
		self.dict["topLevelQuestions"] = topLevelQuestions
	}
	
	public func setMultiRequestToken(answersPerQuestion: String) {
		self.dict["answersPerQuestion"] = answersPerQuestion
	}
	
	public func setMultiRequestToken(levels: String) {
		self.dict["levels"] = levels
	}
	
	public func setMultiRequestToken(specialAnswers: String) {
		self.dict["specialAnswers"] = specialAnswers
	}
	
	public func setMultiRequestToken(numOfRecommendedAssets: String) {
		self.dict["numOfRecommendedAssets"] = numOfRecommendedAssets
	}
	
	public func setMultiRequestToken(treeGenerationFrequency: String) {
		self.dict["treeGenerationFrequency"] = treeGenerationFrequency
	}
	
	public func setMultiRequestToken(activeTreeId: String) {
		self.dict["activeTreeId"] = activeTreeId
	}
	
	public func setMultiRequestToken(featureType: String) {
		self.dict["featureType"] = featureType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["activeMetadataTypes"] != nil {
			activeMetadataTypes = try JSONParser.parse(map: dict["activeMetadataTypes"] as! [String: Any])
		}
		if dict["topLevelQuestions"] != nil {
			topLevelQuestions = dict["topLevelQuestions"] as? Int
		}
		if dict["answersPerQuestion"] != nil {
			answersPerQuestion = dict["answersPerQuestion"] as? Int
		}
		if dict["levels"] != nil {
			levels = dict["levels"] as? Int
		}
		if dict["specialAnswers"] != nil {
			specialAnswers = dict["specialAnswers"] as? Bool
		}
		if dict["numOfRecommendedAssets"] != nil {
			numOfRecommendedAssets = dict["numOfRecommendedAssets"] as? Int
		}
		if dict["treeGenerationFrequency"] != nil {
			treeGenerationFrequency = dict["treeGenerationFrequency"] as? String
		}
		if dict["activeTreeId"] != nil {
			activeTreeId = dict["activeTreeId"] as? String
		}
		if dict["featureType"] != nil {
			featureType = AiRecommendationTreeFeatureLevel(rawValue: "\(dict["featureType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(activeMetadataTypes != nil) {
			dict["activeMetadataTypes"] = activeMetadataTypes!.toDictionary()
		}
		if(topLevelQuestions != nil) {
			dict["topLevelQuestions"] = topLevelQuestions!
		}
		if(answersPerQuestion != nil) {
			dict["answersPerQuestion"] = answersPerQuestion!
		}
		if(levels != nil) {
			dict["levels"] = levels!
		}
		if(specialAnswers != nil) {
			dict["specialAnswers"] = specialAnswers!
		}
		if(numOfRecommendedAssets != nil) {
			dict["numOfRecommendedAssets"] = numOfRecommendedAssets!
		}
		if(treeGenerationFrequency != nil) {
			dict["treeGenerationFrequency"] = treeGenerationFrequency!
		}
		return dict
	}
}

