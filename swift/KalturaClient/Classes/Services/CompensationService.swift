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

public final class CompensationService{

	/**  Adds a new compensation for a household for a given number of iterations of a
	  subscription renewal for a fixed amount / percentage of the renewal price.  */
	public static func add(compensation: Compensation) -> RequestBuilder<Compensation> {
		let request: RequestBuilder<Compensation> = RequestBuilder<Compensation>(service: "compensation", action: "add")
			.setBody(key: "compensation", value: compensation)

		return request
	}

	/**  Delete a compensation by identifier  */
	public static func delete(id: Int64) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "compensation", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get a compensation by identifier  */
	public static func get(id: Int64) -> RequestBuilder<Compensation> {
		let request: RequestBuilder<Compensation> = RequestBuilder<Compensation>(service: "compensation", action: "get")
			.setBody(key: "id", value: id)

		return request
	}
}
