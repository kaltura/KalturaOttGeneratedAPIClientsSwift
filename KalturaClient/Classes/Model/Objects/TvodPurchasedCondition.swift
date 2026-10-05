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

/**  Evaluates whether a user purchased a specific TVOD.  */
open class TvodPurchasedCondition: BaseSegmentCondition {

	public class TvodPurchasedConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public var ppvIdEquals: BaseTokenizedObject {
			get {
				return self.append("ppvIdEquals") 
			}
		}
		
		public var mediaIdEquals: BaseTokenizedObject {
			get {
				return self.append("mediaIdEquals") 
			}
		}
		
		public var days: BaseTokenizedObject {
			get {
				return self.append("days") 
			}
		}
	}

	/**  The specific purchased ppv product identifier to check.  */
	public var ppvIdEquals: Int64? = nil
	/**  The specific purchased media entry identifier to check.  */
	public var mediaIdEquals: Int64? = nil
	/**  The number of days to look back for the purchase.  */
	public var days: Int? = nil


	public func setMultiRequestToken(ppvIdEquals: String) {
		self.dict["ppvIdEquals"] = ppvIdEquals
	}
	
	public func setMultiRequestToken(mediaIdEquals: String) {
		self.dict["mediaIdEquals"] = mediaIdEquals
	}
	
	public func setMultiRequestToken(days: String) {
		self.dict["days"] = days
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ppvIdEquals"] != nil {
			ppvIdEquals = Int64("\(dict["ppvIdEquals"]!)")
		}
		if dict["mediaIdEquals"] != nil {
			mediaIdEquals = Int64("\(dict["mediaIdEquals"]!)")
		}
		if dict["days"] != nil {
			days = dict["days"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ppvIdEquals != nil) {
			dict["ppvIdEquals"] = ppvIdEquals!
		}
		if(mediaIdEquals != nil) {
			dict["mediaIdEquals"] = mediaIdEquals!
		}
		if(days != nil) {
			dict["days"] = days!
		}
		return dict
	}
}

