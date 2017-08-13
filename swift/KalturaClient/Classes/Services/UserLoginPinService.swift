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

public final class UserLoginPinService{

	public static func add() -> RequestBuilder<UserLoginPin> {
		return add(secret: nil)
	}

	/**  Generate a time and usage expiry login-PIN that can allow a single login per
	  PIN. If an active login-PIN already exists. Calling this API again for same user
	  will add another login-PIN  */
	public static func add(secret: String?) -> RequestBuilder<UserLoginPin> {
		let request: RequestBuilder<UserLoginPin> = RequestBuilder<UserLoginPin>(service: "userloginpin", action: "add")
			.setBody(key: "secret", value: secret)

		return request
	}

	/**  Immediately deletes a given pre set login pin code for the user.  */
	public static func delete(pinCode: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "userloginpin", action: "delete")
			.setBody(key: "pinCode", value: pinCode)

		return request
	}

	/**  Immediately expire all active login-PINs for a user  */
	public static func deleteAll() -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "userloginpin", action: "deleteAll")

		return request
	}

	public static func update(pinCode: String) -> RequestBuilder<UserLoginPin> {
		return update(pinCode: pinCode, secret: nil)
	}

	/**  Set a time and usage expiry login-PIN that can allow a single login per PIN. If
	  an active login-PIN already exists. Calling this API again for same user will
	  add another login-PIN  */
	public static func update(pinCode: String, secret: String?) -> RequestBuilder<UserLoginPin> {
		let request: RequestBuilder<UserLoginPin> = RequestBuilder<UserLoginPin>(service: "userloginpin", action: "update")
			.setBody(key: "pinCode", value: pinCode)
			.setBody(key: "secret", value: secret)

		return request
	}
}
