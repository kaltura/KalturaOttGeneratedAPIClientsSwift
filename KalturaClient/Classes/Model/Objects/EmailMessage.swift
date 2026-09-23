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

open class EmailMessage: ObjectBase {

	public class EmailMessageTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var templateName: BaseTokenizedObject {
			get {
				return self.append("templateName") 
			}
		}
		
		public var subject: BaseTokenizedObject {
			get {
				return self.append("subject") 
			}
		}
		
		public var firstName: BaseTokenizedObject {
			get {
				return self.append("firstName") 
			}
		}
		
		public var lastName: BaseTokenizedObject {
			get {
				return self.append("lastName") 
			}
		}
		
		public var senderName: BaseTokenizedObject {
			get {
				return self.append("senderName") 
			}
		}
		
		public var senderFrom: BaseTokenizedObject {
			get {
				return self.append("senderFrom") 
			}
		}
		
		public var senderTo: BaseTokenizedObject {
			get {
				return self.append("senderTo") 
			}
		}
		
		public var bccAddress: BaseTokenizedObject {
			get {
				return self.append("bccAddress") 
			}
		}
		
		public var extraParameters: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("extraParameters"))
			} 
		}
	}

	/**  email template name  */
	public var templateName: String? = nil
	/**  email subject  */
	public var subject: String? = nil
	/**  first name  */
	public var firstName: String? = nil
	/**  last name  */
	public var lastName: String? = nil
	/**  sender name  */
	public var senderName: String? = nil
	/**  sender from  */
	public var senderFrom: String? = nil
	/**  sender to  */
	public var senderTo: String? = nil
	/**  bcc address - seperated by comma  */
	public var bccAddress: String? = nil
	/**  extra parameters  */
	public var extraParameters: Array<KeyValue>? = nil


	public func setMultiRequestToken(templateName: String) {
		self.dict["templateName"] = templateName
	}
	
	public func setMultiRequestToken(subject: String) {
		self.dict["subject"] = subject
	}
	
	public func setMultiRequestToken(firstName: String) {
		self.dict["firstName"] = firstName
	}
	
	public func setMultiRequestToken(lastName: String) {
		self.dict["lastName"] = lastName
	}
	
	public func setMultiRequestToken(senderName: String) {
		self.dict["senderName"] = senderName
	}
	
	public func setMultiRequestToken(senderFrom: String) {
		self.dict["senderFrom"] = senderFrom
	}
	
	public func setMultiRequestToken(senderTo: String) {
		self.dict["senderTo"] = senderTo
	}
	
	public func setMultiRequestToken(bccAddress: String) {
		self.dict["bccAddress"] = bccAddress
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["templateName"] != nil {
			templateName = dict["templateName"] as? String
		}
		if dict["subject"] != nil {
			subject = dict["subject"] as? String
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["senderName"] != nil {
			senderName = dict["senderName"] as? String
		}
		if dict["senderFrom"] != nil {
			senderFrom = dict["senderFrom"] as? String
		}
		if dict["senderTo"] != nil {
			senderTo = dict["senderTo"] as? String
		}
		if dict["bccAddress"] != nil {
			bccAddress = dict["bccAddress"] as? String
		}
		if dict["extraParameters"] != nil {
			extraParameters = try JSONParser.parse(array: dict["extraParameters"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(templateName != nil) {
			dict["templateName"] = templateName!
		}
		if(subject != nil) {
			dict["subject"] = subject!
		}
		if(firstName != nil) {
			dict["firstName"] = firstName!
		}
		if(lastName != nil) {
			dict["lastName"] = lastName!
		}
		if(senderName != nil) {
			dict["senderName"] = senderName!
		}
		if(senderFrom != nil) {
			dict["senderFrom"] = senderFrom!
		}
		if(senderTo != nil) {
			dict["senderTo"] = senderTo!
		}
		if(bccAddress != nil) {
			dict["bccAddress"] = bccAddress!
		}
		if(extraParameters != nil) {
			dict["extraParameters"] = extraParameters!.map { value in value.toDictionary() }
		}
		return dict
	}
}

