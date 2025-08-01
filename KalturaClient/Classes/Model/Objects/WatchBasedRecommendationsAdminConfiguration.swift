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

open class WatchBasedRecommendationsAdminConfiguration: ObjectBase {

	public class WatchBasedRecommendationsAdminConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var maxProfiles: BaseTokenizedObject {
			get {
				return self.append("maxProfiles") 
			}
		}
		
		public var activeUserDurationDays: BaseTokenizedObject {
			get {
				return self.append("activeUserDurationDays") 
			}
		}
		
		public var recommendationsCachingTimeDays: BaseTokenizedObject {
			get {
				return self.append("recommendationsCachingTimeDays") 
			}
		}
	}

	/**  The maximum number of profiles.  */
	public var maxProfiles: Int? = nil
	/**  The duration that a user is considered active after his last playback.  */
	public var activeUserDurationDays: Int? = nil
	/**  The number of days the recommendations will be cached.  */
	public var recommendationsCachingTimeDays: Int? = nil


	public func setMultiRequestToken(maxProfiles: String) {
		self.dict["maxProfiles"] = maxProfiles
	}
	
	public func setMultiRequestToken(activeUserDurationDays: String) {
		self.dict["activeUserDurationDays"] = activeUserDurationDays
	}
	
	public func setMultiRequestToken(recommendationsCachingTimeDays: String) {
		self.dict["recommendationsCachingTimeDays"] = recommendationsCachingTimeDays
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["maxProfiles"] != nil {
			maxProfiles = dict["maxProfiles"] as? Int
		}
		if dict["activeUserDurationDays"] != nil {
			activeUserDurationDays = dict["activeUserDurationDays"] as? Int
		}
		if dict["recommendationsCachingTimeDays"] != nil {
			recommendationsCachingTimeDays = dict["recommendationsCachingTimeDays"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(maxProfiles != nil) {
			dict["maxProfiles"] = maxProfiles!
		}
		if(activeUserDurationDays != nil) {
			dict["activeUserDurationDays"] = activeUserDurationDays!
		}
		if(recommendationsCachingTimeDays != nil) {
			dict["recommendationsCachingTimeDays"] = recommendationsCachingTimeDays!
		}
		return dict
	}
}

