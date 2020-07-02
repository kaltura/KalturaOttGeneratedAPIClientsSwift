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

open class MailDispatcher: Dispatcher {

	public class MailDispatcherTokenizer: Dispatcher.DispatcherTokenizer {
		
		public var bodyTemplate: BaseTokenizedObject {
			get {
				return self.append("bodyTemplate") 
			}
		}
		
		public var subjectTemplate: BaseTokenizedObject {
			get {
				return self.append("subjectTemplate") 
			}
		}
	}

	/**  Mail body template  */
	public var bodyTemplate: String? = nil
	/**  Mail subjsct template  */
	public var subjectTemplate: String? = nil


	public func setMultiRequestToken(bodyTemplate: String) {
		self.dict["bodyTemplate"] = bodyTemplate
	}
	
	public func setMultiRequestToken(subjectTemplate: String) {
		self.dict["subjectTemplate"] = subjectTemplate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["bodyTemplate"] != nil {
			bodyTemplate = dict["bodyTemplate"] as? String
		}
		if dict["subjectTemplate"] != nil {
			subjectTemplate = dict["subjectTemplate"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(bodyTemplate != nil) {
			dict["bodyTemplate"] = bodyTemplate!
		}
		if(subjectTemplate != nil) {
			dict["subjectTemplate"] = subjectTemplate!
		}
		return dict
	}
}

