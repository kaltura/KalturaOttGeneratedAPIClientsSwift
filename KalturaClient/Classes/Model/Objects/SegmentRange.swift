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

/**  Segment that is based on a range of values  */
open class SegmentRange: ObjectBase {

	public class SegmentRangeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var systematicName: BaseTokenizedObject {
			get {
				return self.append("systematicName") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var gte: BaseTokenizedObject {
			get {
				return self.append("gte") 
			}
		}
		
		public var gt: BaseTokenizedObject {
			get {
				return self.append("gt") 
			}
		}
		
		public var lte: BaseTokenizedObject {
			get {
				return self.append("lte") 
			}
		}
		
		public var lt: BaseTokenizedObject {
			get {
				return self.append("lt") 
			}
		}
		
		public var equals: BaseTokenizedObject {
			get {
				return self.append("equals") 
			}
		}
	}

	/**  Id of segment  */
	public var id: Int64? = nil
	/**  Systematic name of segment  */
	public var systematicName: String? = nil
	/**  Specific segment name  */
	public var name: String? = nil
	/**  Greater than or equals &amp;gt;=  */
	public var gte: Double? = nil
	/**  Greater than &amp;gt;  */
	public var gt: Double? = nil
	/**  Less than or equals  */
	public var lte: Double? = nil
	/**  Less than  */
	public var lt: Double? = nil
	/**  Equals  */
	public var equals: Double? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(systematicName: String) {
		self.dict["systematicName"] = systematicName
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(gte: String) {
		self.dict["gte"] = gte
	}
	
	public func setMultiRequestToken(gt: String) {
		self.dict["gt"] = gt
	}
	
	public func setMultiRequestToken(lte: String) {
		self.dict["lte"] = lte
	}
	
	public func setMultiRequestToken(lt: String) {
		self.dict["lt"] = lt
	}
	
	public func setMultiRequestToken(equals: String) {
		self.dict["equals"] = equals
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["systematicName"] != nil {
			systematicName = dict["systematicName"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["gte"] != nil {
			gte = dict["gte"] as? Double
		}
		if dict["gt"] != nil {
			gt = dict["gt"] as? Double
		}
		if dict["lte"] != nil {
			lte = dict["lte"] as? Double
		}
		if dict["lt"] != nil {
			lt = dict["lt"] as? Double
		}
		if dict["equals"] != nil {
			equals = dict["equals"] as? Double
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(systematicName != nil) {
			dict["systematicName"] = systematicName!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(gte != nil) {
			dict["gte"] = gte!
		}
		if(gt != nil) {
			dict["gt"] = gt!
		}
		if(lte != nil) {
			dict["lte"] = lte!
		}
		if(lt != nil) {
			dict["lt"] = lt!
		}
		if(equals != nil) {
			dict["equals"] = equals!
		}
		return dict
	}
}

