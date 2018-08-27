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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Segmentation type - defines at least one segment  */
open class SegmentationType: ObjectBase {

	public class SegmentationTypeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var multilingualName: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualName"))
			} 
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var multilingualDescription: ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer> {
			get {
				return ArrayTokenizedObject<TranslationToken.TranslationTokenTokenizer>(self.append("multilingualDescription"))
			} 
		}
		
		public var conditions: ArrayTokenizedObject<BaseSegmentCondition.BaseSegmentConditionTokenizer> {
			get {
				return ArrayTokenizedObject<BaseSegmentCondition.BaseSegmentConditionTokenizer>(self.append("conditions"))
			} 
		}
		
		public func value<T: BaseSegmentValue.BaseSegmentValueTokenizer>() -> T {
			return T(self.append("value"))
		}
	}

	/**  Id of segmentation type  */
	public var id: Int64? = nil
	/**  Name of segmentation type  */
	public var name: String? = nil
	/**  Name of segmentation type  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  Description of segmentation type  */
	public var description: String? = nil
	/**  Description of segmentation type  */
	public var multilingualDescription: Array<TranslationToken>? = nil
	/**  Segmentation conditions - can be empty  */
	public var conditions: Array<BaseSegmentCondition>? = nil
	/**  Segmentation values - can be empty (so only one segment will be created)  */
	public var value: BaseSegmentValue? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["multilingualDescription"] != nil {
			multilingualDescription = try JSONParser.parse(array: dict["multilingualDescription"] as! [Any])
		}
		if dict["conditions"] != nil {
			conditions = try JSONParser.parse(array: dict["conditions"] as! [Any])
		}
		if dict["value"] != nil {
		value = try JSONParser.parse(object: dict["value"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
		}
		if(multilingualDescription != nil) {
			dict["multilingualDescription"] = multilingualDescription!.map { value in value.toDictionary() }
		}
		if(conditions != nil) {
			dict["conditions"] = conditions!.map { value in value.toDictionary() }
		}
		if(value != nil) {
			dict["value"] = value!.toDictionary()
		}
		return dict
	}
}

