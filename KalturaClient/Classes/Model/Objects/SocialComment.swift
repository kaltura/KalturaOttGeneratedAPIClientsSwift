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

open class SocialComment: ObjectBase {

	public class SocialCommentTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var header: BaseTokenizedObject {
			get {
				return self.append("header") 
			}
		}
		
		public var text: BaseTokenizedObject {
			get {
				return self.append("text") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var writer: BaseTokenizedObject {
			get {
				return self.append("writer") 
			}
		}
	}

	/**  Comment header  */
	public var header: String? = nil
	/**  Comment body  */
	public var text: String? = nil
	/**  Comment creation date  */
	public var createDate: Int64? = nil
	/**  The writer of the comment  */
	public var writer: String? = nil


	public func setMultiRequestToken(header: String) {
		self.dict["header"] = header
	}
	
	public func setMultiRequestToken(text: String) {
		self.dict["text"] = text
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(writer: String) {
		self.dict["writer"] = writer
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["header"] != nil {
			header = dict["header"] as? String
		}
		if dict["text"] != nil {
			text = dict["text"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["writer"] != nil {
			writer = dict["writer"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(header != nil) {
			dict["header"] = header!
		}
		if(text != nil) {
			dict["text"] = text!
		}
		if(createDate != nil) {
			dict["createDate"] = createDate!
		}
		if(writer != nil) {
			dict["writer"] = writer!
		}
		return dict
	}
}

