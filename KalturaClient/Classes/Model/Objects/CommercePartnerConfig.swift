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

/**  partner configuration for commerce  */
open class CommercePartnerConfig: PartnerConfiguration {

	public class CommercePartnerConfigTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var bookmarkEventThresholds: ArrayTokenizedObject<BookmarkEventThreshold.BookmarkEventThresholdTokenizer> {
			get {
				return ArrayTokenizedObject<BookmarkEventThreshold.BookmarkEventThresholdTokenizer>(self.append("bookmarkEventThresholds"))
			} 
		}
		
		public var keepSubscriptionAddOns: BaseTokenizedObject {
			get {
				return self.append("keepSubscriptionAddOns") 
			}
		}
	}

	/**  configuration for bookmark event threshold (when to dispatch the event) in
	  seconds.  */
	public var bookmarkEventThresholds: Array<BookmarkEventThreshold>? = nil
	/**  configuration for keep add-ons after subscription deletion  */
	public var keepSubscriptionAddOns: Bool? = nil


	public func setMultiRequestToken(keepSubscriptionAddOns: String) {
		self.dict["keepSubscriptionAddOns"] = keepSubscriptionAddOns
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["bookmarkEventThresholds"] != nil {
			bookmarkEventThresholds = try JSONParser.parse(array: dict["bookmarkEventThresholds"] as! [Any])
		}
		if dict["keepSubscriptionAddOns"] != nil {
			keepSubscriptionAddOns = dict["keepSubscriptionAddOns"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(bookmarkEventThresholds != nil) {
			dict["bookmarkEventThresholds"] = bookmarkEventThresholds!.map { value in value.toDictionary() }
		}
		if(keepSubscriptionAddOns != nil) {
			dict["keepSubscriptionAddOns"] = keepSubscriptionAddOns!
		}
		return dict
	}
}

