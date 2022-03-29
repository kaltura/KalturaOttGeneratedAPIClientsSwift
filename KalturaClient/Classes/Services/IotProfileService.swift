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

public final class IotProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: IotProfile.IotProfileTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  Add an object  */
	public static func add(objectToAdd: IotProfile) -> RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, AddTokenizer> = RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, AddTokenizer>(service: "iotprofile", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: IotProfile.IotProfileTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  Update an object  */
	public static func update(id: Int64, objectToUpdate: IotProfile) -> RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, UpdateTokenizer> = RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, UpdateTokenizer>(service: "iotprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get an object  */
	public static func get(id: Int64) -> RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, GetTokenizer> = RequestBuilder<IotProfile, IotProfile.IotProfileTokenizer, GetTokenizer>(service: "iotprofile", action: "get")
			.setParam(key: "id", value: id)

		return request
	}
}
