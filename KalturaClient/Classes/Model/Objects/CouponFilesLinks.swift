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

/**  An object holding all the URLs (links) to files which contain coupon codes  */
open class CouponFilesLinks: ObjectBase {

	public class CouponFilesLinksTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var totalCount: BaseTokenizedObject {
			get {
				return self.append("totalCount") 
			}
		}
		
		public var objects: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("objects"))
			} 
		}
	}

	/**  Total count of coupons code files  */
	public var totalCount: Int? = nil
	/**  A pre-signed URL pointing to a coupon codes file  */
	public var objects: Array<StringValue>? = nil


	public func setMultiRequestToken(totalCount: String) {
		self.dict["totalCount"] = totalCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["totalCount"] != nil {
			totalCount = dict["totalCount"] as? Int
		}
		if dict["objects"] != nil {
			objects = try JSONParser.parse(array: dict["objects"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(totalCount != nil) {
			dict["totalCount"] = totalCount!
		}
		if(objects != nil) {
			dict["objects"] = objects!.map { value in value.toDictionary() }
		}
		return dict
	}
}
