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

public final class PinService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var by: BaseTokenizedObject {
			get {
				return self.append("by") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var ruleId: BaseTokenizedObject {
			get {
				return self.append("ruleId") 
			}
		}
	}

	public static func get(by: EntityReferenceBy, type: PinType) -> RequestBuilder<Pin, Pin.PinTokenizer, GetTokenizer> {
		return get(by: by, type: type, ruleId: nil)
	}

	/**  Retrieve the parental or purchase PIN that applies for the household or user.
	  Includes specification of where the PIN was defined at – account, household or
	  user  level  */
	public static func get(by: EntityReferenceBy, type: PinType, ruleId: Int?) -> RequestBuilder<Pin, Pin.PinTokenizer, GetTokenizer> {
		let request: RequestBuilder<Pin, Pin.PinTokenizer, GetTokenizer> = RequestBuilder<Pin, Pin.PinTokenizer, GetTokenizer>(service: "pin", action: "get")
			.setParam(key: "by", value: by.rawValue)
			.setParam(key: "type", value: type.rawValue)
			.setParam(key: "ruleId", value: ruleId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var by: BaseTokenizedObject {
			get {
				return self.append("by") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public func pin<T: Pin.PinTokenizer>() -> T {
			return T(self.append("pin"))
		}
		
		public var ruleId: BaseTokenizedObject {
			get {
				return self.append("ruleId") 
			}
		}
	}

	public static func update(by: EntityReferenceBy, type: PinType, pin: Pin) -> RequestBuilder<Pin, Pin.PinTokenizer, UpdateTokenizer> {
		return update(by: by, type: type, pin: pin, ruleId: nil)
	}

	/**  Set the parental or purchase PIN that applies for the user or the household.  */
	public static func update(by: EntityReferenceBy, type: PinType, pin: Pin, ruleId: Int?) -> RequestBuilder<Pin, Pin.PinTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Pin, Pin.PinTokenizer, UpdateTokenizer> = RequestBuilder<Pin, Pin.PinTokenizer, UpdateTokenizer>(service: "pin", action: "update")
			.setParam(key: "by", value: by.rawValue)
			.setParam(key: "type", value: type.rawValue)
			.setParam(key: "pin", value: pin)
			.setParam(key: "ruleId", value: ruleId)

		return request
	}

	public class ValidateTokenizer: ClientTokenizer  {
		
		public var pin: BaseTokenizedObject {
			get {
				return self.append("pin") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var ruleId: BaseTokenizedObject {
			get {
				return self.append("ruleId") 
			}
		}
	}

	public static func validate(pin: String, type: PinType) -> RequestBuilder<Bool, BaseTokenizedObject, ValidateTokenizer> {
		return validate(pin: pin, type: type, ruleId: nil)
	}

	/**  Validate a purchase or parental PIN for a user.  */
	public static func validate(pin: String, type: PinType, ruleId: Int?) -> RequestBuilder<Bool, BaseTokenizedObject, ValidateTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ValidateTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ValidateTokenizer>(service: "pin", action: "validate")
			.setParam(key: "pin", value: pin)
			.setParam(key: "type", value: type.rawValue)
			.setParam(key: "ruleId", value: ruleId)

		return request
	}
}
