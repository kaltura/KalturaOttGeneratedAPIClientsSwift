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

/**  Response object for bulk getPlaybackContext operation.              Each item in
  the objects array corresponds to the request at the same index.  */
open class BulkPlaybackContextResponse: ObjectBase {

	public class BulkPlaybackContextResponseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var items: ArrayTokenizedObject<BulkResponseItem.BulkResponseItemTokenizer> {
			get {
				return ArrayTokenizedObject<BulkResponseItem.BulkResponseItemTokenizer>(self.append("items"))
			} 
		}
		
		public var totalCount: BaseTokenizedObject {
			get {
				return self.append("totalCount") 
			}
		}
	}

	/**  Array of playback contexts or errors.              Each item corresponds to the
	  request at the same index in the request array.              Items can be either
	  KalturaPlaybackContext (success) or KalturaBulkPlaybackContextError (error).  */
	public var items: Array<BulkResponseItem>? = nil
	/**  Total items  */
	public var totalCount: Int? = nil


	public func setMultiRequestToken(totalCount: String) {
		self.dict["totalCount"] = totalCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["items"] != nil {
			items = try JSONParser.parse(array: dict["items"] as! [Any])
		}
		if dict["totalCount"] != nil {
			totalCount = dict["totalCount"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(items != nil) {
			dict["items"] = items!.map { value in value.toDictionary() }
		}
		if(totalCount != nil) {
			dict["totalCount"] = totalCount!
		}
		return dict
	}
}

