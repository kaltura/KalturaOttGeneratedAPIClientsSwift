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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class ConfigurationGroupService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func configurationGroup<T: ConfigurationGroup.ConfigurationGroupTokenizer>() -> T {
			return T(self.append("configurationGroup"))
		}
	}

	/**  Add a new configuration group  */
	public static func add(configurationGroup: ConfigurationGroup) -> RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, AddTokenizer> {
		let request: RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, AddTokenizer> = RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, AddTokenizer>(service: "configurationgroup", action: "add")
			.setParam(key: "configurationGroup", value: configurationGroup)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Remove a configuration group, including its tags, device configurations and
	  devices associations  */
	public static func delete(id: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "configurationgroup", action: "delete")
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

	/**  Return the configuration group details, including group identifiers, tags, and
	  number of associated devices, and list of device configuration  */
	public static func get(id: String) -> RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, GetTokenizer> {
		let request: RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, GetTokenizer> = RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, GetTokenizer>(service: "configurationgroup", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Return the list of configuration groups  */
	public static func list() -> RequestBuilder<ConfigurationGroupListResponse, ConfigurationGroupListResponse.ConfigurationGroupListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ConfigurationGroupListResponse, ConfigurationGroupListResponse.ConfigurationGroupListResponseTokenizer, ListTokenizer> = RequestBuilder<ConfigurationGroupListResponse, ConfigurationGroupListResponse.ConfigurationGroupListResponseTokenizer, ListTokenizer>(service: "configurationgroup", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func configurationGroup<T: ConfigurationGroup.ConfigurationGroupTokenizer>() -> T {
			return T(self.append("configurationGroup"))
		}
	}

	/**  Update configuration group name  */
	public static func update(id: String, configurationGroup: ConfigurationGroup) -> RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, UpdateTokenizer> = RequestBuilder<ConfigurationGroup, ConfigurationGroup.ConfigurationGroupTokenizer, UpdateTokenizer>(service: "configurationgroup", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "configurationGroup", value: configurationGroup)

		return request
	}
}
