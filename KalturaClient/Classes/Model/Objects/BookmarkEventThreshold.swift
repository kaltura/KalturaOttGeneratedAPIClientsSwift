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

open class BookmarkEventThreshold: ObjectBase {

	public class BookmarkEventThresholdTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var transactionType: BaseTokenizedObject {
			get {
				return self.append("transactionType") 
			}
		}
		
		public var threshold: BaseTokenizedObject {
			get {
				return self.append("threshold") 
			}
		}
	}

	/**  bookmark transaction type  */
	public var transactionType: TransactionType? = nil
	/**  event threshold in seconds  */
	public var threshold: Int? = nil


	public func setMultiRequestToken(transactionType: String) {
		self.dict["transactionType"] = transactionType
	}
	
	public func setMultiRequestToken(threshold: String) {
		self.dict["threshold"] = threshold
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["transactionType"] != nil {
			transactionType = TransactionType(rawValue: "\(dict["transactionType"]!)")
		}
		if dict["threshold"] != nil {
			threshold = dict["threshold"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(transactionType != nil) {
			dict["transactionType"] = transactionType!.rawValue
		}
		if(threshold != nil) {
			dict["threshold"] = threshold!
		}
		return dict
	}
}

