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

open class WatchBasedRecommendationsProfile: ObjectBase {

	public class WatchBasedRecommendationsProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var topicIds: BaseTokenizedObject {
			get {
				return self.append("topicIds") 
			}
		}
		
		public var analysisMediaTypeIds: BaseTokenizedObject {
			get {
				return self.append("analysisMediaTypeIds") 
			}
		}
		
		public var userInterestPlayThresholdInPercentages: BaseTokenizedObject {
			get {
				return self.append("userInterestPlayThresholdInPercentages") 
			}
		}
		
		public var numberOfInterests: BaseTokenizedObject {
			get {
				return self.append("numberOfInterests") 
			}
		}
		
		public var fallbackChannelId: BaseTokenizedObject {
			get {
				return self.append("fallbackChannelId") 
			}
		}
		
		public var minPlaybacks: BaseTokenizedObject {
			get {
				return self.append("minPlaybacks") 
			}
		}
		
		public var maxPlaybacks: BaseTokenizedObject {
			get {
				return self.append("maxPlaybacks") 
			}
		}
		
		public var allowedRecommendationsKsql: BaseTokenizedObject {
			get {
				return self.append("allowedRecommendationsKsql") 
			}
		}
		
		public var playbackInterestsCalculationPeriodDays: BaseTokenizedObject {
			get {
				return self.append("playbackInterestsCalculationPeriodDays") 
			}
		}
		
		public var analyzeCatchUps: BaseTokenizedObject {
			get {
				return self.append("analyzeCatchUps") 
			}
		}
		
		public var analyzeLinearEvents: BaseTokenizedObject {
			get {
				return self.append("analyzeLinearEvents") 
			}
		}
		
		public var userInterestPlayThresholdForEventInMinutes: BaseTokenizedObject {
			get {
				return self.append("userInterestPlayThresholdForEventInMinutes") 
			}
		}
		
		public var maximumEventsPerSession: BaseTokenizedObject {
			get {
				return self.append("maximumEventsPerSession") 
			}
		}
	}

	/**  Unique identifier for the profile  */
	public var id: Int64? = nil
	/**  Friendly name for the profile  */
	public var name: String? = nil
	/**  List of comma seperated topic ids considered for recommendations calculation.  */
	public var topicIds: String? = nil
	/**  List of comma seperated type ids considered for recommendations calculation.  */
	public var analysisMediaTypeIds: String? = nil
	/**  The minimum coverage in percentages that media is considered viewed.  */
	public var userInterestPlayThresholdInPercentages: Int? = nil
	/**  The number of interests that will be selected per user.  */
	public var numberOfInterests: Int? = nil
	/**  Reference to partner default recommendations (first 30 assets that are included
	  in the referred KalturaChannel).  */
	public var fallbackChannelId: Int64? = nil
	/**  Minimum number of media assets that user shall watch to trigger user interests
	  calculation.  */
	public var minPlaybacks: Int? = nil
	/**  Maximum number of assets that watched by a user and will be considered for
	  recommendations calculation (the last maxPlaybacks shall be used in the
	  analysis).  */
	public var maxPlaybacks: Int? = nil
	/**  A kSql is used to filter the “user interests“ recommendations. Only asset
	  properties, metas, or tags are allowed ti be included in this ksql.  */
	public var allowedRecommendationsKsql: String? = nil
	/**  The number of days the user interests are considered to be up-to-date.  */
	public var playbackInterestsCalculationPeriodDays: Int? = nil
	/**  Determines whether catch-up viewing data should be included in the
	  user&amp;#39;s interest analysis.  */
	public var analyzeCatchUps: Bool? = nil
	/**  Determines whether linear events viewing data should be included in the
	  user&amp;#39;s interest analysis.  */
	public var analyzeLinearEvents: Bool? = nil
	/**  Minimum required viewing time per session (in minutes) for live content to be
	  considered in the analysis.  */
	public var userInterestPlayThresholdForEventInMinutes: Int? = nil
	/**  Minimum required viewing time per session (in minutes) for live content to be
	  considered in the analysis.  */
	public var maximumEventsPerSession: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(topicIds: String) {
		self.dict["topicIds"] = topicIds
	}
	
	public func setMultiRequestToken(analysisMediaTypeIds: String) {
		self.dict["analysisMediaTypeIds"] = analysisMediaTypeIds
	}
	
	public func setMultiRequestToken(userInterestPlayThresholdInPercentages: String) {
		self.dict["userInterestPlayThresholdInPercentages"] = userInterestPlayThresholdInPercentages
	}
	
	public func setMultiRequestToken(numberOfInterests: String) {
		self.dict["numberOfInterests"] = numberOfInterests
	}
	
	public func setMultiRequestToken(fallbackChannelId: String) {
		self.dict["fallbackChannelId"] = fallbackChannelId
	}
	
	public func setMultiRequestToken(minPlaybacks: String) {
		self.dict["minPlaybacks"] = minPlaybacks
	}
	
	public func setMultiRequestToken(maxPlaybacks: String) {
		self.dict["maxPlaybacks"] = maxPlaybacks
	}
	
	public func setMultiRequestToken(allowedRecommendationsKsql: String) {
		self.dict["allowedRecommendationsKsql"] = allowedRecommendationsKsql
	}
	
	public func setMultiRequestToken(playbackInterestsCalculationPeriodDays: String) {
		self.dict["playbackInterestsCalculationPeriodDays"] = playbackInterestsCalculationPeriodDays
	}
	
	public func setMultiRequestToken(analyzeCatchUps: String) {
		self.dict["analyzeCatchUps"] = analyzeCatchUps
	}
	
	public func setMultiRequestToken(analyzeLinearEvents: String) {
		self.dict["analyzeLinearEvents"] = analyzeLinearEvents
	}
	
	public func setMultiRequestToken(userInterestPlayThresholdForEventInMinutes: String) {
		self.dict["userInterestPlayThresholdForEventInMinutes"] = userInterestPlayThresholdForEventInMinutes
	}
	
	public func setMultiRequestToken(maximumEventsPerSession: String) {
		self.dict["maximumEventsPerSession"] = maximumEventsPerSession
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["topicIds"] != nil {
			topicIds = dict["topicIds"] as? String
		}
		if dict["analysisMediaTypeIds"] != nil {
			analysisMediaTypeIds = dict["analysisMediaTypeIds"] as? String
		}
		if dict["userInterestPlayThresholdInPercentages"] != nil {
			userInterestPlayThresholdInPercentages = dict["userInterestPlayThresholdInPercentages"] as? Int
		}
		if dict["numberOfInterests"] != nil {
			numberOfInterests = dict["numberOfInterests"] as? Int
		}
		if dict["fallbackChannelId"] != nil {
			fallbackChannelId = Int64("\(dict["fallbackChannelId"]!)")
		}
		if dict["minPlaybacks"] != nil {
			minPlaybacks = dict["minPlaybacks"] as? Int
		}
		if dict["maxPlaybacks"] != nil {
			maxPlaybacks = dict["maxPlaybacks"] as? Int
		}
		if dict["allowedRecommendationsKsql"] != nil {
			allowedRecommendationsKsql = dict["allowedRecommendationsKsql"] as? String
		}
		if dict["playbackInterestsCalculationPeriodDays"] != nil {
			playbackInterestsCalculationPeriodDays = dict["playbackInterestsCalculationPeriodDays"] as? Int
		}
		if dict["analyzeCatchUps"] != nil {
			analyzeCatchUps = dict["analyzeCatchUps"] as? Bool
		}
		if dict["analyzeLinearEvents"] != nil {
			analyzeLinearEvents = dict["analyzeLinearEvents"] as? Bool
		}
		if dict["userInterestPlayThresholdForEventInMinutes"] != nil {
			userInterestPlayThresholdForEventInMinutes = dict["userInterestPlayThresholdForEventInMinutes"] as? Int
		}
		if dict["maximumEventsPerSession"] != nil {
			maximumEventsPerSession = dict["maximumEventsPerSession"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(topicIds != nil) {
			dict["topicIds"] = topicIds!
		}
		if(analysisMediaTypeIds != nil) {
			dict["analysisMediaTypeIds"] = analysisMediaTypeIds!
		}
		if(userInterestPlayThresholdInPercentages != nil) {
			dict["userInterestPlayThresholdInPercentages"] = userInterestPlayThresholdInPercentages!
		}
		if(numberOfInterests != nil) {
			dict["numberOfInterests"] = numberOfInterests!
		}
		if(fallbackChannelId != nil) {
			dict["fallbackChannelId"] = fallbackChannelId!
		}
		if(minPlaybacks != nil) {
			dict["minPlaybacks"] = minPlaybacks!
		}
		if(maxPlaybacks != nil) {
			dict["maxPlaybacks"] = maxPlaybacks!
		}
		if(allowedRecommendationsKsql != nil) {
			dict["allowedRecommendationsKsql"] = allowedRecommendationsKsql!
		}
		if(playbackInterestsCalculationPeriodDays != nil) {
			dict["playbackInterestsCalculationPeriodDays"] = playbackInterestsCalculationPeriodDays!
		}
		if(analyzeCatchUps != nil) {
			dict["analyzeCatchUps"] = analyzeCatchUps!
		}
		if(analyzeLinearEvents != nil) {
			dict["analyzeLinearEvents"] = analyzeLinearEvents!
		}
		if(userInterestPlayThresholdForEventInMinutes != nil) {
			dict["userInterestPlayThresholdForEventInMinutes"] = userInterestPlayThresholdForEventInMinutes!
		}
		if(maximumEventsPerSession != nil) {
			dict["maximumEventsPerSession"] = maximumEventsPerSession!
		}
		return dict
	}
}

