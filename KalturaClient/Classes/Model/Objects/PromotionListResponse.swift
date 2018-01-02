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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Prices list  */
open class PromotionListResponse: ListResponse {

	public class PromotionListResponseTokenizer: ListResponse.ListResponseTokenizer {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var uiConfId: BaseTokenizedObject {
			get {
				return self.append("uiConfId") 
			}
		}
		
		public var objects: ArrayTokenizedObject<Promotion.PromotionTokenizer> {
			get {
				return ArrayTokenizedObject<Promotion.PromotionTokenizer>(self.append("objects"))
			} 
		}
	}

	/**  EntryId  */
	public var entryId: String? = nil
	/**  PartnerId  */
	public var partnerId: Int? = nil
	/**  UiConfId  */
	public var uiConfId: Int? = nil
	/**  A list of promotions  */
	public var objects: Array<Promotion>? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(uiConfId: String) {
		self.dict["uiConfId"] = uiConfId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["uiConfId"] != nil {
			uiConfId = dict["uiConfId"] as? Int
		}
		if dict["objects"] != nil {
			objects = try JSONParser.parse(array: dict["objects"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(uiConfId != nil) {
			dict["uiConfId"] = uiConfId!
		}
		if(objects != nil) {
			dict["objects"] = objects!.map { value in value.toDictionary() }
		}
		return dict
	}
}

