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

/**  A helper schema containing shared properties used for defining watch history
  conditions.              Implements KalturaBaseSegmentCondition.  */
open class BaseWatchCondition: BaseSegmentCondition {

	public class BaseWatchConditionTokenizer: BaseSegmentCondition.BaseSegmentConditionTokenizer {
		
		public func contentFilter<T: ContentTypeSelector.ContentTypeSelectorTokenizer>() -> T {
			return T(self.append("contentFilter"))
		}
		
		public var evaluationDays: BaseTokenizedObject {
			get {
				return self.append("evaluationDays") 
			}
		}
		
		public var deviceFamilyIn: BaseTokenizedObject {
			get {
				return self.append("deviceFamilyIn") 
			}
		}
		
		public func viewTimeConstraint<T: ViewTimeConstraint.ViewTimeConstraintTokenizer>() -> T {
			return T(self.append("viewTimeConstraint"))
		}
		
		public var constraintsOperator: BaseTokenizedObject {
			get {
				return self.append("constraintsOperator") 
			}
		}
		
		public var constraintAttributes: ArrayTokenizedObject<BaseAttributeConstraint.BaseAttributeConstraintTokenizer> {
			get {
				return ArrayTokenizedObject<BaseAttributeConstraint.BaseAttributeConstraintTokenizer>(self.append("constraintAttributes"))
			} 
		}
	}

	/**  Specifies criteria to include or exclude specific content types (recordings,
	  programs, media types) from the evaluation.  */
	public var contentFilter: ContentTypeSelector? = nil
	/**  The period in days to look back for watch history.  */
	public var evaluationDays: Int? = nil
	/**  A comma-separated list of device family names (e.g., &amp;#39;mobile&amp;#39;,
	  &amp;#39;web&amp;#39;, &amp;#39;stb&amp;#39;).  */
	public var deviceFamilyIn: String? = nil
	/**  Filters watch actions that occurred within a specific time window.  */
	public var viewTimeConstraint: ViewTimeConstraint? = nil
	/**  Defines whether to use AND or OR between the items in constraintAttributes.  */
	public var constraintsOperator: BooleanOperator? = nil
	/**  A list of up to 5 specific constraints to filter the watch history.  */
	public var constraintAttributes: Array<BaseAttributeConstraint>? = nil


	public func setMultiRequestToken(evaluationDays: String) {
		self.dict["evaluationDays"] = evaluationDays
	}
	
	public func setMultiRequestToken(deviceFamilyIn: String) {
		self.dict["deviceFamilyIn"] = deviceFamilyIn
	}
	
	public func setMultiRequestToken(constraintsOperator: String) {
		self.dict["constraintsOperator"] = constraintsOperator
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["contentFilter"] != nil {
		contentFilter = try JSONParser.parse(object: dict["contentFilter"] as! [String: Any])		}
		if dict["evaluationDays"] != nil {
			evaluationDays = dict["evaluationDays"] as? Int
		}
		if dict["deviceFamilyIn"] != nil {
			deviceFamilyIn = dict["deviceFamilyIn"] as? String
		}
		if dict["viewTimeConstraint"] != nil {
		viewTimeConstraint = try JSONParser.parse(object: dict["viewTimeConstraint"] as! [String: Any])		}
		if dict["constraintsOperator"] != nil {
			constraintsOperator = BooleanOperator(rawValue: "\(dict["constraintsOperator"]!)")
		}
		if dict["constraintAttributes"] != nil {
			constraintAttributes = try JSONParser.parse(array: dict["constraintAttributes"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(contentFilter != nil) {
			dict["contentFilter"] = contentFilter!.toDictionary()
		}
		if(evaluationDays != nil) {
			dict["evaluationDays"] = evaluationDays!
		}
		if(deviceFamilyIn != nil) {
			dict["deviceFamilyIn"] = deviceFamilyIn!
		}
		if(viewTimeConstraint != nil) {
			dict["viewTimeConstraint"] = viewTimeConstraint!.toDictionary()
		}
		if(constraintsOperator != nil) {
			dict["constraintsOperator"] = constraintsOperator!.rawValue
		}
		if(constraintAttributes != nil) {
			dict["constraintAttributes"] = constraintAttributes!.map { value in value.toDictionary() }
		}
		return dict
	}
}

