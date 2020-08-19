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

/**  Household Coupon details  */
open class EventNotification: CrudObject {

	public class EventNotificationTokenizer: CrudObject.CrudObjectTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var eventObjectType: BaseTokenizedObject {
			get {
				return self.append("eventObjectType") 
			}
		}
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var actionType: BaseTokenizedObject {
			get {
				return self.append("actionType") 
			}
		}
		
		public var createDate: BaseTokenizedObject {
			get {
				return self.append("createDate") 
			}
		}
		
		public var updateDate: BaseTokenizedObject {
			get {
				return self.append("updateDate") 
			}
		}
	}

	/**  Identifier  */
	public var id: String? = nil
	/**  Object identifier  */
	public var objectId: Int64? = nil
	/**  Event object type  */
	public var eventObjectType: String? = nil
	/**  Message  */
	public var message: String? = nil
	/**  Status  */
	public var status: EventNotificationStatus? = nil
	/**  Action type  */
	public var actionType: String? = nil
	/**  Create date  */
	public var createDate: Int64? = nil
	/**  Update date  */
	public var updateDate: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(eventObjectType: String) {
		self.dict["eventObjectType"] = eventObjectType
	}
	
	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(actionType: String) {
		self.dict["actionType"] = actionType
	}
	
	public func setMultiRequestToken(createDate: String) {
		self.dict["createDate"] = createDate
	}
	
	public func setMultiRequestToken(updateDate: String) {
		self.dict["updateDate"] = updateDate
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["objectId"] != nil {
			objectId = Int64("\(dict["objectId"]!)")
		}
		if dict["eventObjectType"] != nil {
			eventObjectType = dict["eventObjectType"] as? String
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["status"] != nil {
			status = EventNotificationStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["actionType"] != nil {
			actionType = dict["actionType"] as? String
		}
		if dict["createDate"] != nil {
			createDate = Int64("\(dict["createDate"]!)")
		}
		if dict["updateDate"] != nil {
			updateDate = Int64("\(dict["updateDate"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(eventObjectType != nil) {
			dict["eventObjectType"] = eventObjectType!
		}
		if(message != nil) {
			dict["message"] = message!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(actionType != nil) {
			dict["actionType"] = actionType!
		}
		return dict
	}
}

