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

open class DefaultParentalSettingsPartnerConfig: PartnerConfiguration {

	public class DefaultParentalSettingsPartnerConfigTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var defaultMoviesParentalRuleId: BaseTokenizedObject {
			get {
				return self.append("defaultMoviesParentalRuleId") 
			}
		}
		
		public var defaultTvSeriesParentalRuleId: BaseTokenizedObject {
			get {
				return self.append("defaultTvSeriesParentalRuleId") 
			}
		}
		
		public var defaultParentalPin: BaseTokenizedObject {
			get {
				return self.append("defaultParentalPin") 
			}
		}
		
		public var defaultPurchasePin: BaseTokenizedObject {
			get {
				return self.append("defaultPurchasePin") 
			}
		}
		
		public var defaultPurchaseSettings: BaseTokenizedObject {
			get {
				return self.append("defaultPurchaseSettings") 
			}
		}
	}

	/**  defaultTvSeriesParentalRuleId  */
	public var defaultMoviesParentalRuleId: Int64? = nil
	/**  defaultTvSeriesParentalRuleId  */
	public var defaultTvSeriesParentalRuleId: Int64? = nil
	/**  defaultParentalPin  */
	public var defaultParentalPin: String? = nil
	/**  defaultPurchasePin  */
	public var defaultPurchasePin: String? = nil
	/**  defaultPurchaseSettings  */
	public var defaultPurchaseSettings: Int64? = nil


	public func setMultiRequestToken(defaultMoviesParentalRuleId: String) {
		self.dict["defaultMoviesParentalRuleId"] = defaultMoviesParentalRuleId
	}
	
	public func setMultiRequestToken(defaultTvSeriesParentalRuleId: String) {
		self.dict["defaultTvSeriesParentalRuleId"] = defaultTvSeriesParentalRuleId
	}
	
	public func setMultiRequestToken(defaultParentalPin: String) {
		self.dict["defaultParentalPin"] = defaultParentalPin
	}
	
	public func setMultiRequestToken(defaultPurchasePin: String) {
		self.dict["defaultPurchasePin"] = defaultPurchasePin
	}
	
	public func setMultiRequestToken(defaultPurchaseSettings: String) {
		self.dict["defaultPurchaseSettings"] = defaultPurchaseSettings
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["defaultMoviesParentalRuleId"] != nil {
			defaultMoviesParentalRuleId = Int64("\(dict["defaultMoviesParentalRuleId"]!)")
		}
		if dict["defaultTvSeriesParentalRuleId"] != nil {
			defaultTvSeriesParentalRuleId = Int64("\(dict["defaultTvSeriesParentalRuleId"]!)")
		}
		if dict["defaultParentalPin"] != nil {
			defaultParentalPin = dict["defaultParentalPin"] as? String
		}
		if dict["defaultPurchasePin"] != nil {
			defaultPurchasePin = dict["defaultPurchasePin"] as? String
		}
		if dict["defaultPurchaseSettings"] != nil {
			defaultPurchaseSettings = Int64("\(dict["defaultPurchaseSettings"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(defaultMoviesParentalRuleId != nil) {
			dict["defaultMoviesParentalRuleId"] = defaultMoviesParentalRuleId!
		}
		if(defaultTvSeriesParentalRuleId != nil) {
			dict["defaultTvSeriesParentalRuleId"] = defaultTvSeriesParentalRuleId!
		}
		if(defaultParentalPin != nil) {
			dict["defaultParentalPin"] = defaultParentalPin!
		}
		if(defaultPurchasePin != nil) {
			dict["defaultPurchasePin"] = defaultPurchasePin!
		}
		if(defaultPurchaseSettings != nil) {
			dict["defaultPurchaseSettings"] = defaultPurchaseSettings!
		}
		return dict
	}
}

