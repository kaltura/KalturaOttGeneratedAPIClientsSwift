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

/**  Partner General configuration  */
open class GeneralPartnerConfig: PartnerConfiguration {

	public class GeneralPartnerConfigTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var partnerName: BaseTokenizedObject {
			get {
				return self.append("partnerName") 
			}
		}
		
		public var mainLanguage: BaseTokenizedObject {
			get {
				return self.append("mainLanguage") 
			}
		}
		
		public var secondaryLanguages: BaseTokenizedObject {
			get {
				return self.append("secondaryLanguages") 
			}
		}
		
		public var deleteMediaPolicy: BaseTokenizedObject {
			get {
				return self.append("deleteMediaPolicy") 
			}
		}
		
		public var mainCurrency: BaseTokenizedObject {
			get {
				return self.append("mainCurrency") 
			}
		}
		
		public var secondaryCurrencies: BaseTokenizedObject {
			get {
				return self.append("secondaryCurrencies") 
			}
		}
		
		public var downgradePolicy: BaseTokenizedObject {
			get {
				return self.append("downgradePolicy") 
			}
		}
		
		public var mailSettings: BaseTokenizedObject {
			get {
				return self.append("mailSettings") 
			}
		}
		
		public var dateFormat: BaseTokenizedObject {
			get {
				return self.append("dateFormat") 
			}
		}
		
		public var householdLimitationModule: BaseTokenizedObject {
			get {
				return self.append("householdLimitationModule") 
			}
		}
		
		public var enableRegionFiltering: BaseTokenizedObject {
			get {
				return self.append("enableRegionFiltering") 
			}
		}
		
		public var defaultRegion: BaseTokenizedObject {
			get {
				return self.append("defaultRegion") 
			}
		}
	}

	/**  Partner name  */
	public var partnerName: String? = nil
	/**  Main metadata language  */
	public var mainLanguage: Int? = nil
	/**  A list of comma separated languages ids.  */
	public var secondaryLanguages: String? = nil
	/**  Delete media policy  */
	public var deleteMediaPolicy: DeleteMediaPolicy? = nil
	/**  Main currency  */
	public var mainCurrency: Int? = nil
	/**  A list of comma separated currency ids.  */
	public var secondaryCurrencies: String? = nil
	/**  Downgrade policy  */
	public var downgradePolicy: DowngradePolicy? = nil
	/**  Mail settings  */
	public var mailSettings: String? = nil
	/**  Default Date Format for Email notifications (default should be: DD Month YYYY)  */
	public var dateFormat: String? = nil
	/**  Household limitation&amp;#160;module  */
	public var householdLimitationModule: Int? = nil
	/**  Enable Region Filtering  */
	public var enableRegionFiltering: Bool? = nil
	/**  Default Region  */
	public var defaultRegion: Int? = nil


	public func setMultiRequestToken(partnerName: String) {
		self.dict["partnerName"] = partnerName
	}
	
	public func setMultiRequestToken(mainLanguage: String) {
		self.dict["mainLanguage"] = mainLanguage
	}
	
	public func setMultiRequestToken(secondaryLanguages: String) {
		self.dict["secondaryLanguages"] = secondaryLanguages
	}
	
	public func setMultiRequestToken(deleteMediaPolicy: String) {
		self.dict["deleteMediaPolicy"] = deleteMediaPolicy
	}
	
	public func setMultiRequestToken(mainCurrency: String) {
		self.dict["mainCurrency"] = mainCurrency
	}
	
	public func setMultiRequestToken(secondaryCurrencies: String) {
		self.dict["secondaryCurrencies"] = secondaryCurrencies
	}
	
	public func setMultiRequestToken(downgradePolicy: String) {
		self.dict["downgradePolicy"] = downgradePolicy
	}
	
	public func setMultiRequestToken(mailSettings: String) {
		self.dict["mailSettings"] = mailSettings
	}
	
	public func setMultiRequestToken(dateFormat: String) {
		self.dict["dateFormat"] = dateFormat
	}
	
	public func setMultiRequestToken(householdLimitationModule: String) {
		self.dict["householdLimitationModule"] = householdLimitationModule
	}
	
	public func setMultiRequestToken(enableRegionFiltering: String) {
		self.dict["enableRegionFiltering"] = enableRegionFiltering
	}
	
	public func setMultiRequestToken(defaultRegion: String) {
		self.dict["defaultRegion"] = defaultRegion
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerName"] != nil {
			partnerName = dict["partnerName"] as? String
		}
		if dict["mainLanguage"] != nil {
			mainLanguage = dict["mainLanguage"] as? Int
		}
		if dict["secondaryLanguages"] != nil {
			secondaryLanguages = dict["secondaryLanguages"] as? String
		}
		if dict["deleteMediaPolicy"] != nil {
			deleteMediaPolicy = DeleteMediaPolicy(rawValue: "\(dict["deleteMediaPolicy"]!)")
		}
		if dict["mainCurrency"] != nil {
			mainCurrency = dict["mainCurrency"] as? Int
		}
		if dict["secondaryCurrencies"] != nil {
			secondaryCurrencies = dict["secondaryCurrencies"] as? String
		}
		if dict["downgradePolicy"] != nil {
			downgradePolicy = DowngradePolicy(rawValue: "\(dict["downgradePolicy"]!)")
		}
		if dict["mailSettings"] != nil {
			mailSettings = dict["mailSettings"] as? String
		}
		if dict["dateFormat"] != nil {
			dateFormat = dict["dateFormat"] as? String
		}
		if dict["householdLimitationModule"] != nil {
			householdLimitationModule = dict["householdLimitationModule"] as? Int
		}
		if dict["enableRegionFiltering"] != nil {
			enableRegionFiltering = dict["enableRegionFiltering"] as? Bool
		}
		if dict["defaultRegion"] != nil {
			defaultRegion = dict["defaultRegion"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerName != nil) {
			dict["partnerName"] = partnerName!
		}
		if(mainLanguage != nil) {
			dict["mainLanguage"] = mainLanguage!
		}
		if(secondaryLanguages != nil) {
			dict["secondaryLanguages"] = secondaryLanguages!
		}
		if(deleteMediaPolicy != nil) {
			dict["deleteMediaPolicy"] = deleteMediaPolicy!.rawValue
		}
		if(mainCurrency != nil) {
			dict["mainCurrency"] = mainCurrency!
		}
		if(secondaryCurrencies != nil) {
			dict["secondaryCurrencies"] = secondaryCurrencies!
		}
		if(downgradePolicy != nil) {
			dict["downgradePolicy"] = downgradePolicy!.rawValue
		}
		if(mailSettings != nil) {
			dict["mailSettings"] = mailSettings!
		}
		if(dateFormat != nil) {
			dict["dateFormat"] = dateFormat!
		}
		if(householdLimitationModule != nil) {
			dict["householdLimitationModule"] = householdLimitationModule!
		}
		if(enableRegionFiltering != nil) {
			dict["enableRegionFiltering"] = enableRegionFiltering!
		}
		if(defaultRegion != nil) {
			dict["defaultRegion"] = defaultRegion!
		}
		return dict
	}
}

