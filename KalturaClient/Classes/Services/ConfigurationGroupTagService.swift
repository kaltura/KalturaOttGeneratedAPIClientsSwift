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

public final class ConfigurationGroupTagService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func configurationGroupTag<T: ConfigurationGroupTag.ConfigurationGroupTagTokenizer>() -> T {
			return T(self.append("configurationGroupTag"))
		}
	}

	/**  Add a new tag to a configuration group. If this tag is already associated to
	  another group, request fails  */
	public static func add(configurationGroupTag: ConfigurationGroupTag) -> RequestBuilder<ConfigurationGroupTag, ConfigurationGroupTag.ConfigurationGroupTagTokenizer, AddTokenizer> {
		let request: RequestBuilder<ConfigurationGroupTag, ConfigurationGroupTag.ConfigurationGroupTagTokenizer, AddTokenizer> = RequestBuilder<ConfigurationGroupTag, ConfigurationGroupTag.ConfigurationGroupTagTokenizer, AddTokenizer>(service: "configurationgrouptag", action: "add")
			.setBody(key: "configurationGroupTag", value: configurationGroupTag)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var tag: BaseTokenizedObject {
			get {
				return self.append("tag") 
			}
		}
	}

	/**  Remove a tag association from configuration group  */
	public static func delete(tag: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "configurationgrouptag", action: "delete")
			.setBody(key: "tag", value: tag)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var tag: BaseTokenizedObject {
			get {
				return self.append("tag") 
			}
		}
	}

	/**  Return the configuration group the tag is associated to  */
	public static func get(tag: String) -> RequestBuilder<ConfigurationGroupTag, ConfigurationGroupTag.ConfigurationGroupTagTokenizer, GetTokenizer> {
		let request: RequestBuilder<ConfigurationGroupTag, ConfigurationGroupTag.ConfigurationGroupTagTokenizer, GetTokenizer> = RequestBuilder<ConfigurationGroupTag, ConfigurationGroupTag.ConfigurationGroupTagTokenizer, GetTokenizer>(service: "configurationgrouptag", action: "get")
			.setBody(key: "tag", value: tag)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ConfigurationGroupTagFilter.ConfigurationGroupTagFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Return list of tags for a configuration group  */
	public static func list(filter: ConfigurationGroupTagFilter) -> RequestBuilder<ConfigurationGroupTagListResponse, ConfigurationGroupTagListResponse.ConfigurationGroupTagListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ConfigurationGroupTagListResponse, ConfigurationGroupTagListResponse.ConfigurationGroupTagListResponseTokenizer, ListTokenizer> = RequestBuilder<ConfigurationGroupTagListResponse, ConfigurationGroupTagListResponse.ConfigurationGroupTagListResponseTokenizer, ListTokenizer>(service: "configurationgrouptag", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}
}
