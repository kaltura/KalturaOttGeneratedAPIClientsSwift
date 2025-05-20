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

/**  Represents a filtering condition used in Kaltura&amp;#39;s search and query
  functionalities.              This class defines a condition based on a metadata
  attribute, an operator, and a comparison value.  */
open class FilteringCondition: ObjectBase {

	public class FilteringConditionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var metaName: BaseTokenizedObject {
			get {
				return self.append("metaName") 
			}
		}
		
		public var operator_: BaseTokenizedObject {
			get {
				return self.append("operator_") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
	}

	/**  The name of the metadata attribute to apply the filtering condition on.  */
	public var metaName: String? = nil
	/**  The operator defining how the value should be compared (e.g., Equal, NotEqual).  */
	public var operator_: ConditionOperator? = nil
	/**  The value to compare against the metadata attribute using the specified
	  operator.  */
	public var value: String? = nil


	public func setMultiRequestToken(metaName: String) {
		self.dict["metaName"] = metaName
	}
	
	public func setMultiRequestToken(operator_: String) {
		self.dict["operator"] = operator_
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["metaName"] != nil {
			metaName = dict["metaName"] as? String
		}
		if dict["operator"] != nil {
			operator_ = ConditionOperator(rawValue: "\(dict["operator"]!)")
		}
		if dict["value"] != nil {
			value = dict["value"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metaName != nil) {
			dict["metaName"] = metaName!
		}
		if(operator_ != nil) {
			dict["operator"] = operator_!.rawValue
		}
		if(value != nil) {
			dict["value"] = value!
		}
		return dict
	}
}

