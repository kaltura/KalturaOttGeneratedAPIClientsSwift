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
// Copyright (C) 2006-2019  Kaltura Inc.
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

public final class CompensationService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func compensation<T: Compensation.CompensationTokenizer>() -> T {
			return T(self.append("compensation"))
		}
	}

	/**  Adds a new compensation for a household for a given number of iterations of a
	  subscription renewal for a fixed amount / percentage of the renewal price.  */
	public static func add(compensation: Compensation) -> RequestBuilder<Compensation, Compensation.CompensationTokenizer, AddTokenizer> {
		let request: RequestBuilder<Compensation, Compensation.CompensationTokenizer, AddTokenizer> = RequestBuilder<Compensation, Compensation.CompensationTokenizer, AddTokenizer>(service: "compensation", action: "add")
			.setParam(key: "compensation", value: compensation)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a compensation by identifier  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "compensation", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get a compensation by identifier  */
	public static func get(id: Int64) -> RequestBuilder<Compensation, Compensation.CompensationTokenizer, GetTokenizer> {
		let request: RequestBuilder<Compensation, Compensation.CompensationTokenizer, GetTokenizer> = RequestBuilder<Compensation, Compensation.CompensationTokenizer, GetTokenizer>(service: "compensation", action: "get")
			.setParam(key: "id", value: id)

		return request
	}
}
