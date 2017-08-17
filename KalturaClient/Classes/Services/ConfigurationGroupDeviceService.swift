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

public final class ConfigurationGroupDeviceService{

	/**  Associate a collection of devices to a configuration group. If a device is
	  already associated to another group – old association is replaced  */
	public static func add(configurationGroupDevice: ConfigurationGroupDevice) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "configurationgroupdevice", action: "add")
			.setBody(key: "configurationGroupDevice", value: configurationGroupDevice)

		return request
	}

	/**  Remove a device association  */
	public static func delete(udid: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "configurationgroupdevice", action: "delete")
			.setBody(key: "udid", value: udid)

		return request
	}

	/**  Return the configuration group to which a specific device is associated to  */
	public static func get(udid: String) -> RequestBuilder<ConfigurationGroupDevice> {
		let request: RequestBuilder<ConfigurationGroupDevice> = RequestBuilder<ConfigurationGroupDevice>(service: "configurationgroupdevice", action: "get")
			.setBody(key: "udid", value: udid)

		return request
	}

	public static func list(filter: ConfigurationGroupDeviceFilter) -> RequestBuilder<ConfigurationGroupDeviceListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Return the list of associated devices for a given configuration group  */
	public static func list(filter: ConfigurationGroupDeviceFilter, pager: FilterPager?) -> RequestBuilder<ConfigurationGroupDeviceListResponse> {
		let request: RequestBuilder<ConfigurationGroupDeviceListResponse> = RequestBuilder<ConfigurationGroupDeviceListResponse>(service: "configurationgroupdevice", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
