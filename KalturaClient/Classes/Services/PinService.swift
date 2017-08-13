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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class PinService{

	public static func get(by: EntityReferenceBy, type: PinType) -> RequestBuilder<Pin> {
		return get(by: by, type: type, ruleId: nil)
	}

	/**  Retrieve the parental or purchase PIN that applies for the household or user.
	  Includes specification of where the PIN was defined at – account, household or
	  user  level  */
	public static func get(by: EntityReferenceBy, type: PinType, ruleId: Int?) -> RequestBuilder<Pin> {
		let request: RequestBuilder<Pin> = RequestBuilder<Pin>(service: "pin", action: "get")
			.setBody(key: "by", value: by.rawValue)
			.setBody(key: "type", value: type.rawValue)
			.setBody(key: "ruleId", value: ruleId)

		return request
	}

	public static func update(by: EntityReferenceBy, type: PinType, pin: Pin) -> RequestBuilder<Pin> {
		return update(by: by, type: type, pin: pin, ruleId: nil)
	}

	/**  Set the parental or purchase PIN that applies for the user or the household.  */
	public static func update(by: EntityReferenceBy, type: PinType, pin: Pin, ruleId: Int?) -> RequestBuilder<Pin> {
		let request: RequestBuilder<Pin> = RequestBuilder<Pin>(service: "pin", action: "update")
			.setBody(key: "by", value: by.rawValue)
			.setBody(key: "type", value: type.rawValue)
			.setBody(key: "pin", value: pin)
			.setBody(key: "ruleId", value: ruleId)

		return request
	}

	public static func validate(pin: String, type: PinType) -> RequestBuilder<Bool> {
		return validate(pin: pin, type: type, ruleId: nil)
	}

	/**  Validate a purchase or parental PIN for a user.  */
	public static func validate(pin: String, type: PinType, ruleId: Int?) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "pin", action: "validate")
			.setBody(key: "pin", value: pin)
			.setBody(key: "type", value: type.rawValue)
			.setBody(key: "ruleId", value: ruleId)

		return request
	}
}
