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

public final class HouseholdDeviceService{

	/**  Add device to household  */
	public static func add(device: HouseholdDevice) -> RequestBuilder<HouseholdDevice> {
		let request: RequestBuilder<HouseholdDevice> = RequestBuilder<HouseholdDevice>(service: "householddevice", action: "add")
			.setBody(key: "device", value: device)

		return request
	}

	/**  Registers a device to a household using pin code  */
	public static func addByPin(deviceName: String, pin: String) -> RequestBuilder<HouseholdDevice> {
		let request: RequestBuilder<HouseholdDevice> = RequestBuilder<HouseholdDevice>(service: "householddevice", action: "addByPin")
			.setBody(key: "deviceName", value: deviceName)
			.setBody(key: "pin", value: pin)

		return request
	}

	/**  Removes a device from household  */
	public static func delete(udid: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "householddevice", action: "delete")
			.setBody(key: "udid", value: udid)

		return request
	}

	/**  Generates device pin to use when adding a device to household by pin  */
	public static func generatePin(udid: String, brandId: Int) -> RequestBuilder<DevicePin> {
		let request: RequestBuilder<DevicePin> = RequestBuilder<DevicePin>(service: "householddevice", action: "generatePin")
			.setBody(key: "udid", value: udid)
			.setBody(key: "brandId", value: brandId)

		return request
	}

	/**  Returns device registration status to the supplied household  */
	public static func get() -> RequestBuilder<HouseholdDevice> {
		let request: RequestBuilder<HouseholdDevice> = RequestBuilder<HouseholdDevice>(service: "householddevice", action: "get")

		return request
	}

	public static func list() -> RequestBuilder<HouseholdDeviceListResponse> {
		return list(filter: nil)
	}

	/**  Returns the devices within the household  */
	public static func list(filter: HouseholdDeviceFilter?) -> RequestBuilder<HouseholdDeviceListResponse> {
		let request: RequestBuilder<HouseholdDeviceListResponse> = RequestBuilder<HouseholdDeviceListResponse>(service: "householddevice", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}

	public static func loginWithPin(partnerId: Int, pin: String) -> RequestBuilder<LoginResponse> {
		return loginWithPin(partnerId: partnerId, pin: pin, udid: nil)
	}

	/**  User sign-in via a time-expired sign-in PIN.  */
	public static func loginWithPin(partnerId: Int, pin: String, udid: String?) -> RequestBuilder<LoginResponse> {
		let request: RequestBuilder<LoginResponse> = RequestBuilder<LoginResponse>(service: "householddevice", action: "loginWithPin")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "pin", value: pin)
			.setBody(key: "udid", value: udid)

		return request
	}

	/**  Update the name of the device by UDID  */
	public static func update(udid: String, device: HouseholdDevice) -> RequestBuilder<HouseholdDevice> {
		let request: RequestBuilder<HouseholdDevice> = RequestBuilder<HouseholdDevice>(service: "householddevice", action: "update")
			.setBody(key: "udid", value: udid)
			.setBody(key: "device", value: device)

		return request
	}

	/**  Update the name of the device by UDID  */
	public static func updateStatus(udid: String, status: DeviceStatus) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "householddevice", action: "updateStatus")
			.setBody(key: "udid", value: udid)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
