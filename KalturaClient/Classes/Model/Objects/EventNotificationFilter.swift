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

open class EventNotificationFilter: CrudFilter {

	public class EventNotificationFilterTokenizer: CrudFilter.CrudFilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var objectIdEqual: BaseTokenizedObject {
			get {
				return self.append("objectIdEqual") 
			}
		}
		
		public var eventObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("eventObjectTypeEqual") 
			}
		}
	}

	/**  Indicates which event notification to return by their event notifications Id.  */
	public var idEqual: String? = nil
	/**  Indicates which objectId to return by their event notifications.  */
	public var objectIdEqual: Int64? = nil
	/**  Indicates which objectType to return by their event notifications.  */
	public var eventObjectTypeEqual: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(objectIdEqual: String) {
		self.dict["objectIdEqual"] = objectIdEqual
	}
	
	public func setMultiRequestToken(eventObjectTypeEqual: String) {
		self.dict["eventObjectTypeEqual"] = eventObjectTypeEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? String
		}
		if dict["objectIdEqual"] != nil {
			objectIdEqual = Int64("\(dict["objectIdEqual"]!)")
		}
		if dict["eventObjectTypeEqual"] != nil {
			eventObjectTypeEqual = dict["eventObjectTypeEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(objectIdEqual != nil) {
			dict["objectIdEqual"] = objectIdEqual!
		}
		if(eventObjectTypeEqual != nil) {
			dict["eventObjectTypeEqual"] = eventObjectTypeEqual!
		}
		return dict
	}
}

