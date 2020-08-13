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

public final class UserLoginPinService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var secret: BaseTokenizedObject {
			get {
				return self.append("secret") 
			}
		}
		
		public var pinUsages: BaseTokenizedObject {
			get {
				return self.append("pinUsages") 
			}
		}
		
		public var pinDuration: BaseTokenizedObject {
			get {
				return self.append("pinDuration") 
			}
		}
	}

	public static func add() -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, AddTokenizer> {
		return add(secret: nil)
	}

	public static func add(secret: String?) -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, AddTokenizer> {
		return add(secret: secret, pinUsages: nil)
	}

	public static func add(secret: String?, pinUsages: Int?) -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, AddTokenizer> {
		return add(secret: secret, pinUsages: pinUsages, pinDuration: nil)
	}

	/**  Generate a time and usage expiry login-PIN that can allow a single/multiple
	  login/s per PIN.               If an active login-PIN already exists. Calling
	  this API again for same user will add another login-PIN  */
	public static func add(secret: String?, pinUsages: Int?, pinDuration: Int64?) -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, AddTokenizer> = RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, AddTokenizer>(service: "userloginpin", action: "add")
			.setParam(key: "secret", value: secret)
			.setParam(key: "pinUsages", value: pinUsages)
			.setParam(key: "pinDuration", value: pinDuration)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var pinCode: BaseTokenizedObject {
			get {
				return self.append("pinCode") 
			}
		}
	}

	/**  Immediately deletes a given pre set login pin code for the user.  */
	public static func delete(pinCode: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "userloginpin", action: "delete")
			.setParam(key: "pinCode", value: pinCode)

		return request
	}

	public class DeleteAllTokenizer: ClientTokenizer  {
	}

	/**  Immediately expire all active login-PINs for a user  */
	public static func deleteAll() -> RequestBuilder<Bool, BaseTokenizedObject, DeleteAllTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteAllTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteAllTokenizer>(service: "userloginpin", action: "deleteAll")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var pinCode: BaseTokenizedObject {
			get {
				return self.append("pinCode") 
			}
		}
		
		public var secret: BaseTokenizedObject {
			get {
				return self.append("secret") 
			}
		}
		
		public var pinUsages: BaseTokenizedObject {
			get {
				return self.append("pinUsages") 
			}
		}
		
		public var pinDuration: BaseTokenizedObject {
			get {
				return self.append("pinDuration") 
			}
		}
	}

	public static func update(pinCode: String) -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, UpdateTokenizer> {
		return update(pinCode: pinCode, secret: nil)
	}

	public static func update(pinCode: String, secret: String?) -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, UpdateTokenizer> {
		return update(pinCode: pinCode, secret: secret, pinUsages: nil)
	}

	public static func update(pinCode: String, secret: String?, pinUsages: Int?) -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, UpdateTokenizer> {
		return update(pinCode: pinCode, secret: secret, pinUsages: pinUsages, pinDuration: nil)
	}

	/**  Set a time and usage expiry login-PIN that can allow a single login per PIN. If
	  an active login-PIN already exists. Calling this API again for same user will
	  add another login-PIN  */
	public static func update(pinCode: String, secret: String?, pinUsages: Int?, pinDuration: Int64?) -> RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, UpdateTokenizer> = RequestBuilder<UserLoginPin, UserLoginPin.UserLoginPinTokenizer, UpdateTokenizer>(service: "userloginpin", action: "update")
			.setParam(key: "pinCode", value: pinCode)
			.setParam(key: "secret", value: secret)
			.setParam(key: "pinUsages", value: pinUsages)
			.setParam(key: "pinDuration", value: pinDuration)

		return request
	}
}
