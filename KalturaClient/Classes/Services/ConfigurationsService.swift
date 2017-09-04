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

	public class AddTokenizer: ClientTokenizer  {
		
		public var configurations: Configurations.ConfigurationsTokenizer {
			get {
				return Configurations.ConfigurationsTokenizer(self.append("configurations")) 
			}
		}
	}

	/**  Add a new device configuration to a configuration group  */
	public static func add(configurations: Configurations) -> RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, AddTokenizer> {
		let request: RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, AddTokenizer> = RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, AddTokenizer>(service: "configurations", action: "add")
			.setBody(key: "configurations", value: configurations)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a device configuration  */
	public static func delete(id: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "configurations", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Return the device configuration  */
	public static func get(id: String) -> RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, GetTokenizer> {
		let request: RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, GetTokenizer> = RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, GetTokenizer>(service: "configurations", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: ConfigurationsFilter.ConfigurationsFilterTokenizer {
			get {
				return ConfigurationsFilter.ConfigurationsFilterTokenizer(self.append("filter")) 
			}
		}
	}

	/**  Return a list of device configurations of a configuration group  */
	public static func list(filter: ConfigurationsFilter) -> RequestBuilder<ConfigurationsListResponse, ConfigurationsListResponse.ConfigurationsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ConfigurationsListResponse, ConfigurationsListResponse.ConfigurationsListResponseTokenizer, ListTokenizer> = RequestBuilder<ConfigurationsListResponse, ConfigurationsListResponse.ConfigurationsListResponseTokenizer, ListTokenizer>(service: "configurations", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var configurations: Configurations.ConfigurationsTokenizer {
			get {
				return Configurations.ConfigurationsTokenizer(self.append("configurations")) 
			}
		}
	}

	/**  Update device configuration  */
	public static func update(id: String, configurations: Configurations) -> RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, UpdateTokenizer> = RequestBuilder<Configurations, Configurations.ConfigurationsTokenizer, UpdateTokenizer>(service: "configurations", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "configurations", value: configurations)

		return request
	}
}
