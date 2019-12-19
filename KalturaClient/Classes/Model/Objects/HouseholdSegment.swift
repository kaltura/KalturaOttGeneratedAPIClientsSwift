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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  Indicates a segment of a household  */
open class HouseholdSegment: ObjectBase {

	public class HouseholdSegmentTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var householdId: BaseTokenizedObject {
			get {
				return self.append("householdId") 
			}
		}
		
		public var blockingSegmentIds: BaseTokenizedObject {
			get {
				return self.append("blockingSegmentIds") 
			}
		}
	}

	/**  Household SegmentId  */
	public var householdId: Int64? = nil
	/**  Segment Id  */
	public var householdId: Int64? = nil
	/**  Blocking segment Ids  */
	public var blockingSegmentIds: String? = nil


	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(householdId: String) {
		self.dict["householdId"] = householdId
	}
	
	public func setMultiRequestToken(blockingSegmentIds: String) {
		self.dict["blockingSegmentIds"] = blockingSegmentIds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["householdId"] != nil {
			householdId = Int64("\(dict["householdId"]!)")
		}
		if dict["householdId"] != nil {
			householdId = Int64("\(dict["householdId"]!)")
		}
		if dict["blockingSegmentIds"] != nil {
			blockingSegmentIds = dict["blockingSegmentIds"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(householdId != nil) {
			dict["householdId"] = householdId!
		}
		if(householdId != nil) {
			dict["householdId"] = householdId!
		}
		if(blockingSegmentIds != nil) {
			dict["blockingSegmentIds"] = blockingSegmentIds!
		}
		return dict
	}
}

