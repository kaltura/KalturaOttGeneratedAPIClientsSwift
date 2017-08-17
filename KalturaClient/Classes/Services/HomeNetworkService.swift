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

public final class HomeNetworkService{

	/**  Add a new home network to a household  */
	public static func add(homeNetwork: HomeNetwork) -> RequestBuilder<HomeNetwork> {
		let request: RequestBuilder<HomeNetwork> = RequestBuilder<HomeNetwork>(service: "homenetwork", action: "add")
			.setBody(key: "homeNetwork", value: homeNetwork)

		return request
	}

	/**  Delete household’s existing home network  */
	public static func delete(externalId: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "homenetwork", action: "delete")
			.setBody(key: "externalId", value: externalId)

		return request
	}

	/**  Retrieve the household’s home networks  */
	public static func list() -> RequestBuilder<HomeNetworkListResponse> {
		let request: RequestBuilder<HomeNetworkListResponse> = RequestBuilder<HomeNetworkListResponse>(service: "homenetwork", action: "list")

		return request
	}

	/**  Update and existing home network for a household  */
	public static func update(externalId: String, homeNetwork: HomeNetwork) -> RequestBuilder<HomeNetwork> {
		let request: RequestBuilder<HomeNetwork> = RequestBuilder<HomeNetwork>(service: "homenetwork", action: "update")
			.setBody(key: "externalId", value: externalId)
			.setBody(key: "homeNetwork", value: homeNetwork)

		return request
	}
}
