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

	public class AddTokenizer: ClientTokenizer  {
		
		public var device: HouseholdDevice.HouseholdDeviceTokenizer {
			get {
				return HouseholdDevice.HouseholdDeviceTokenizer(self.append("device")) 
			}
		}
	}

	/**  Add device to household  */
	public static func add(device: HouseholdDevice) -> RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, AddTokenizer> {
		let request: RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, AddTokenizer> = RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, AddTokenizer>(service: "householddevice", action: "add")
			.setBody(key: "device", value: device)

		return request
	}

	public class AddByPinTokenizer: ClientTokenizer  {
		
		public var deviceName: BaseTokenizedObject {
			get {
				return self.append("deviceName") 
			}
		}
		
		public var pin: BaseTokenizedObject {
			get {
				return self.append("pin") 
			}
		}
	}

	/**  Registers a device to a household using pin code  */
	public static func addByPin(deviceName: String, pin: String) -> RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, AddByPinTokenizer> {
		let request: RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, AddByPinTokenizer> = RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, AddByPinTokenizer>(service: "householddevice", action: "addByPin")
			.setBody(key: "deviceName", value: deviceName)
			.setBody(key: "pin", value: pin)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	/**  Removes a device from household  */
	public static func delete(udid: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "householddevice", action: "delete")
			.setBody(key: "udid", value: udid)

		return request
	}

	public class GeneratePinTokenizer: ClientTokenizer  {
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var brandId: BaseTokenizedObject {
			get {
				return self.append("brandId") 
			}
		}
	}

	/**  Generates device pin to use when adding a device to household by pin  */
	public static func generatePin(udid: String, brandId: Int) -> RequestBuilder<DevicePin, DevicePin.DevicePinTokenizer, GeneratePinTokenizer> {
		let request: RequestBuilder<DevicePin, DevicePin.DevicePinTokenizer, GeneratePinTokenizer> = RequestBuilder<DevicePin, DevicePin.DevicePinTokenizer, GeneratePinTokenizer>(service: "householddevice", action: "generatePin")
			.setBody(key: "udid", value: udid)
			.setBody(key: "brandId", value: brandId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Returns device registration status to the supplied household  */
	public static func get() -> RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, GetTokenizer> {
		let request: RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, GetTokenizer> = RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, GetTokenizer>(service: "householddevice", action: "get")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: HouseholdDeviceFilter.HouseholdDeviceFilterTokenizer {
			get {
				return HouseholdDeviceFilter.HouseholdDeviceFilterTokenizer(self.append("filter")) 
			}
		}
	}

	public static func list() -> RequestBuilder<HouseholdDeviceListResponse, HouseholdDeviceListResponse.HouseholdDeviceListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns the devices within the household  */
	public static func list(filter: HouseholdDeviceFilter?) -> RequestBuilder<HouseholdDeviceListResponse, HouseholdDeviceListResponse.HouseholdDeviceListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdDeviceListResponse, HouseholdDeviceListResponse.HouseholdDeviceListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdDeviceListResponse, HouseholdDeviceListResponse.HouseholdDeviceListResponseTokenizer, ListTokenizer>(service: "householddevice", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var device: HouseholdDevice.HouseholdDeviceTokenizer {
			get {
				return HouseholdDevice.HouseholdDeviceTokenizer(self.append("device")) 
			}
		}
	}

	/**  Update the name of the device by UDID  */
	public static func update(udid: String, device: HouseholdDevice) -> RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, UpdateTokenizer> = RequestBuilder<HouseholdDevice, HouseholdDevice.HouseholdDeviceTokenizer, UpdateTokenizer>(service: "householddevice", action: "update")
			.setBody(key: "udid", value: udid)
			.setBody(key: "device", value: device)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Update the name of the device by UDID  */
	public static func updateStatus(udid: String, status: DeviceStatus) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateStatusTokenizer>(service: "householddevice", action: "updateStatus")
			.setBody(key: "udid", value: udid)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
