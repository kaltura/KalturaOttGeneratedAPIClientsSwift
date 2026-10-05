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

open class EpgServicePartnerConfiguration: ObjectBase {

	public class EpgServicePartnerConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var numberOfSlots: BaseTokenizedObject {
			get {
				return self.append("numberOfSlots") 
			}
		}
		
		public var firstSlotOffset: BaseTokenizedObject {
			get {
				return self.append("firstSlotOffset") 
			}
		}
	}

	/**  The number of slots (NOS) that are supported (1, 2, 3, 4, 6, 8, 12, 24)  */
	public var numberOfSlots: Int? = nil
	/**  The offset of the first slot from 00:00 UTC  */
	public var firstSlotOffset: Int? = nil


	public func setMultiRequestToken(numberOfSlots: String) {
		self.dict["numberOfSlots"] = numberOfSlots
	}
	
	public func setMultiRequestToken(firstSlotOffset: String) {
		self.dict["firstSlotOffset"] = firstSlotOffset
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["numberOfSlots"] != nil {
			numberOfSlots = dict["numberOfSlots"] as? Int
		}
		if dict["firstSlotOffset"] != nil {
			firstSlotOffset = dict["firstSlotOffset"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(numberOfSlots != nil) {
			dict["numberOfSlots"] = numberOfSlots!
		}
		if(firstSlotOffset != nil) {
			dict["firstSlotOffset"] = firstSlotOffset!
		}
		return dict
	}
}

