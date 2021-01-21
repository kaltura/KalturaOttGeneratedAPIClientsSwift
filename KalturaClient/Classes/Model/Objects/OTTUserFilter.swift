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

/**  OTT User filter  */
open class OTTUserFilter: Filter {

	public class OTTUserFilterTokenizer: Filter.FilterTokenizer {
		
		public var usernameEqual: BaseTokenizedObject {
			get {
				return self.append("usernameEqual") 
			}
		}
		
		public var externalIdEqual: BaseTokenizedObject {
			get {
				return self.append("externalIdEqual") 
			}
		}
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var roleIdsIn: BaseTokenizedObject {
			get {
				return self.append("roleIdsIn") 
			}
		}
	}

	/**  Username  */
	public var usernameEqual: String? = nil
	/**  User external identifier  */
	public var externalIdEqual: String? = nil
	/**  List of user identifiers separated by &amp;#39;,&amp;#39;  */
	public var idIn: String? = nil
	/**  Comma separated list of role Ids.  */
	public var roleIdsIn: String? = nil


	public func setMultiRequestToken(usernameEqual: String) {
		self.dict["usernameEqual"] = usernameEqual
	}
	
	public func setMultiRequestToken(externalIdEqual: String) {
		self.dict["externalIdEqual"] = externalIdEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(roleIdsIn: String) {
		self.dict["roleIdsIn"] = roleIdsIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["usernameEqual"] != nil {
			usernameEqual = dict["usernameEqual"] as? String
		}
		if dict["externalIdEqual"] != nil {
			externalIdEqual = dict["externalIdEqual"] as? String
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["roleIdsIn"] != nil {
			roleIdsIn = dict["roleIdsIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(usernameEqual != nil) {
			dict["usernameEqual"] = usernameEqual!
		}
		if(externalIdEqual != nil) {
			dict["externalIdEqual"] = externalIdEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(roleIdsIn != nil) {
			dict["roleIdsIn"] = roleIdsIn!
		}
		return dict
	}
}

