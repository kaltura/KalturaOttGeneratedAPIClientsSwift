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

public final class ConfigurationsService{

	/**  Add a new device configuration to a configuration group  */
	public static func add(configurations: Configurations) -> RequestBuilder<Configurations> {
		let request: RequestBuilder<Configurations> = RequestBuilder<Configurations>(service: "configurations", action: "add")
			.setBody(key: "configurations", value: configurations)

		return request
	}

	/**  Delete a device configuration  */
	public static func delete(id: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "configurations", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Return the device configuration  */
	public static func get(id: String) -> RequestBuilder<Configurations> {
		let request: RequestBuilder<Configurations> = RequestBuilder<Configurations>(service: "configurations", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Return a list of device configurations of a configuration group  */
	public static func list(filter: ConfigurationsFilter) -> RequestBuilder<ConfigurationsListResponse> {
		let request: RequestBuilder<ConfigurationsListResponse> = RequestBuilder<ConfigurationsListResponse>(service: "configurations", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  Update device configuration  */
	public static func update(id: String, configurations: Configurations) -> RequestBuilder<Configurations> {
		let request: RequestBuilder<Configurations> = RequestBuilder<Configurations>(service: "configurations", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "configurations", value: configurations)

		return request
	}
}
