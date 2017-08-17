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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class InboxMessage: ObjectBase {

	/**  message id  */
	public var id: String? = nil
	/**  message  */
	public var message: String? = nil
	/**  Status  */
	public var status: InboxMessageStatus? = nil
	/**  Type  */
	public var type: InboxMessageType? = nil
	/**  Created at  */
	public var createdAt: Int64? = nil
	/**  url  */
	public var url: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["status"] != nil {
			status = InboxMessageStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["type"] != nil {
			type = InboxMessageType(rawValue: "\(dict["type"]!)")
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int64
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(message != nil) {
			dict["message"] = message!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(url != nil) {
			dict["url"] = url!
		}
		return dict
	}
}

