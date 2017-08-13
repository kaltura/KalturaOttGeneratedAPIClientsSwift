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

public final class ConfigurationGroupService{

	/**  Add a new configuration group  */
	public static func add(configurationGroup: ConfigurationGroup) -> RequestBuilder<ConfigurationGroup> {
		let request: RequestBuilder<ConfigurationGroup> = RequestBuilder<ConfigurationGroup>(service: "configurationgroup", action: "add")
			.setBody(key: "configurationGroup", value: configurationGroup)

		return request
	}

	/**  Remove a configuration group, including its tags, device configurations and
	  devices associations  */
	public static func delete(id: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "configurationgroup", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Return the configuration group details, including group identifiers, tags, and
	  number of associated devices, and list of device configuration  */
	public static func get(id: String) -> RequestBuilder<ConfigurationGroup> {
		let request: RequestBuilder<ConfigurationGroup> = RequestBuilder<ConfigurationGroup>(service: "configurationgroup", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Return the list of configuration groups  */
	public static func list() -> RequestBuilder<ConfigurationGroupListResponse> {
		let request: RequestBuilder<ConfigurationGroupListResponse> = RequestBuilder<ConfigurationGroupListResponse>(service: "configurationgroup", action: "list")

		return request
	}

	/**  Update configuration group name  */
	public static func update(id: String, configurationGroup: ConfigurationGroup) -> RequestBuilder<ConfigurationGroup> {
		let request: RequestBuilder<ConfigurationGroup> = RequestBuilder<ConfigurationGroup>(service: "configurationgroup", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "configurationGroup", value: configurationGroup)

		return request
	}
}
