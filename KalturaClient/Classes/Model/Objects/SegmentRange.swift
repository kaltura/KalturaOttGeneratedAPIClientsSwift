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

/**  Segment that is based on a range of values  */
open class SegmentRange: ObjectBase {

	public class SegmentRangeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
	}

	/**  Specific segment name  */
	public var name: String? = nil
	/**  Specific segment name  */
	public var multilingualName: Array<TranslationToken>? = nil
	/**  Greater than or equals &amp;gt;=  */
	public var gte: Double? = nil
	/**  Greater than &amp;gt;  */
	public var gt: Double? = nil
	/**  Less than or equals  */
	public var lte: Double? = nil
	/**  Less than  */
	public var lt: Double? = nil


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
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["multilingualName"] != nil {
			multilingualName = try JSONParser.parse(array: dict["multilingualName"] as! [Any])
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

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(multilingualName != nil) {
			dict["multilingualName"] = multilingualName!.map { value in value.toDictionary() }
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
		return dict
	}
}

