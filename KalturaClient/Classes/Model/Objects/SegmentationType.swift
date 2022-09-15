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
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var conditions: ArrayTokenizedObject<BaseSegmentCondition.BaseSegmentConditionTokenizer> {
			get {
				return ArrayTokenizedObject<BaseSegmentCondition.BaseSegmentConditionTokenizer>(self.append("conditions"))
			} 
		}
		
		public var actions: ArrayTokenizedObject<BaseSegmentAction.BaseSegmentActionTokenizer> {
			get {
				return ArrayTokenizedObject<BaseSegmentAction.BaseSegmentActionTokenizer>(self.append("actions"))
			} 
		}
		
		public func value<T: BaseSegmentValue.BaseSegmentValueTokenizer>() -> T {
			return T(self.append("value"))
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	/**  Id of segmentation type  */
	public var id: Int64? = nil
	/**  Name of segmentation type  */
	public var name: String? = nil
	/**  Description of segmentation type  */
	public var description: String? = nil
	/**  Segmentation conditions - can be empty  */
	public var conditions: Array<BaseSegmentCondition>? = nil
	/**  Segmentation conditions - can be empty  */
	public var actions: Array<BaseSegmentAction>? = nil
	/**  Segmentation values - can be empty (so only one segment will be created)  */
	public var value: BaseSegmentValue? = nil
	/**  Create date of segmentation type  */
	public var createDate: Int64? = nil
	/**  Segmentation type version  */
	public var version: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["conditions"] != nil {
			conditions = try JSONParser.parse(array: dict["conditions"] as! [Any])
		}
		if dict["actions"] != nil {
			actions = try JSONParser.parse(array: dict["actions"] as! [Any])
		}
		if dict["value"] != nil {
		value = try JSONParser.parse(object: dict["value"] as! [String: Any])		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["version"] != nil {
			version = Int64("\(dict["version"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(conditions != nil) {
			dict["conditions"] = conditions!.map { value in value.toDictionary() }
		}
		if(actions != nil) {
			dict["actions"] = actions!.map { value in value.toDictionary() }
		}
		if(value != nil) {
			dict["value"] = value!.toDictionary()
		}
		return dict
	}
}

