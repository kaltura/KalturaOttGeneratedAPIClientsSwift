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

/**  Collection Filter  */
open class CollectionFilter: Filter {

	public class CollectionFilterTokenizer: Filter.FilterTokenizer {
		
		public var collectionIdIn: BaseTokenizedObject {
			get {
				return self.append("collectionIdIn") 
			}
		}
		
		public var mediaFileIdEqual: BaseTokenizedObject {
			get {
				return self.append("mediaFileIdEqual") 
			}
		}
		
		public var couponGroupIdEqual: BaseTokenizedObject {
			get {
				return self.append("couponGroupIdEqual") 
			}
		}
	}

	/**  Comma separated collection IDs  */
	public var collectionIdIn: String? = nil
	/**  Media-file ID to get the subscriptions by  */
	public var mediaFileIdEqual: Int? = nil
	/**  couponGroupIdEqual  */
	public var couponGroupIdEqual: Int? = nil


	public func setMultiRequestToken(collectionIdIn: String) {
		self.dict["collectionIdIn"] = collectionIdIn
	}
	
	public func setMultiRequestToken(mediaFileIdEqual: String) {
		self.dict["mediaFileIdEqual"] = mediaFileIdEqual
	}
	
	public func setMultiRequestToken(couponGroupIdEqual: String) {
		self.dict["couponGroupIdEqual"] = couponGroupIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["collectionIdIn"] != nil {
			collectionIdIn = dict["collectionIdIn"] as? String
		}
		if dict["mediaFileIdEqual"] != nil {
			mediaFileIdEqual = dict["mediaFileIdEqual"] as? Int
		}
		if dict["couponGroupIdEqual"] != nil {
			couponGroupIdEqual = dict["couponGroupIdEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(collectionIdIn != nil) {
			dict["collectionIdIn"] = collectionIdIn!
		}
		if(mediaFileIdEqual != nil) {
			dict["mediaFileIdEqual"] = mediaFileIdEqual!
		}
		if(couponGroupIdEqual != nil) {
			dict["couponGroupIdEqual"] = couponGroupIdEqual!
		}
		return dict
	}
}

