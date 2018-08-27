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

/**  Segmentation type which takes certain values of a tag/meta as segments  */
open class SegmentValues: BaseSegmentValue {

	public class SegmentValuesTokenizer: BaseSegmentValue.BaseSegmentValueTokenizer {
		
		public func source<T: SegmentSource.SegmentSourceTokenizer>() -> T {
			return T(self.append("source"))
		}
		
		public var threshold: BaseTokenizedObject {
			get {
				return self.append("threshold") 
			}
		}
		
		public var values: ArrayTokenizedObject<SegmentValue.SegmentValueTokenizer> {
			get {
				return ArrayTokenizedObject<SegmentValue.SegmentValueTokenizer>(self.append("values"))
			} 
		}
	}

	/**  Segment values source  */
	public var source: SegmentSource? = nil
	/**  Threshold - minimum score to be met for all values in general (can be overriden)  */
	public var threshold: Int? = nil
	/**  List of segment values  */
	public var values: Array<SegmentValue>? = nil


	public func setMultiRequestToken(threshold: String) {
		self.dict["threshold"] = threshold
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["source"] != nil {
		source = try JSONParser.parse(object: dict["source"] as! [String: Any])		}
		if dict["threshold"] != nil {
			threshold = dict["threshold"] as? Int
		}
		if dict["values"] != nil {
			values = try JSONParser.parse(array: dict["values"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(source != nil) {
			dict["source"] = source!.toDictionary()
		}
		if(threshold != nil) {
			dict["threshold"] = threshold!
		}
		if(values != nil) {
			dict["values"] = values!.map { value in value.toDictionary() }
		}
		return dict
	}
}

