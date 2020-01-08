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

open class SubscriptionFilter: Filter {

	public class SubscriptionFilterTokenizer: Filter.FilterTokenizer {
		
		public var subscriptionIdIn: BaseTokenizedObject {
			get {
				return self.append("subscriptionIdIn") 
			}
		}
		
		public var mediaFileIdEqual: BaseTokenizedObject {
			get {
				return self.append("mediaFileIdEqual") 
			}
		}
		
		public var externalIdIn: BaseTokenizedObject {
			get {
				return self.append("externalIdIn") 
			}
		}
		
		public var couponGroupIdEqual: BaseTokenizedObject {
			get {
				return self.append("couponGroupIdEqual") 
			}
		}
	}

	/**  Comma separated subscription IDs to get the subscriptions by  */
	public var subscriptionIdIn: String? = nil
	/**  Media-file ID to get the subscriptions by  */
	public var mediaFileIdEqual: Int? = nil
	/**  Comma separated subscription external IDs to get the subscriptions by  */
	public var externalIdIn: String? = nil
	/**  couponGroupIdEqual  */
	public var couponGroupIdEqual: Int? = nil


	public func setMultiRequestToken(subscriptionIdIn: String) {
		self.dict["subscriptionIdIn"] = subscriptionIdIn
	}
	
	public func setMultiRequestToken(mediaFileIdEqual: String) {
		self.dict["mediaFileIdEqual"] = mediaFileIdEqual
	}
	
	public func setMultiRequestToken(externalIdIn: String) {
		self.dict["externalIdIn"] = externalIdIn
	}
	
	public func setMultiRequestToken(couponGroupIdEqual: String) {
		self.dict["couponGroupIdEqual"] = couponGroupIdEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["subscriptionIdIn"] != nil {
			subscriptionIdIn = dict["subscriptionIdIn"] as? String
		}
		if dict["mediaFileIdEqual"] != nil {
			mediaFileIdEqual = dict["mediaFileIdEqual"] as? Int
		}
		if dict["externalIdIn"] != nil {
			externalIdIn = dict["externalIdIn"] as? String
		}
		if dict["couponGroupIdEqual"] != nil {
			couponGroupIdEqual = dict["couponGroupIdEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(subscriptionIdIn != nil) {
			dict["subscriptionIdIn"] = subscriptionIdIn!
		}
		if(mediaFileIdEqual != nil) {
			dict["mediaFileIdEqual"] = mediaFileIdEqual!
		}
		if(externalIdIn != nil) {
			dict["externalIdIn"] = externalIdIn!
		}
		if(couponGroupIdEqual != nil) {
			dict["couponGroupIdEqual"] = couponGroupIdEqual!
		}
		return dict
	}
}

