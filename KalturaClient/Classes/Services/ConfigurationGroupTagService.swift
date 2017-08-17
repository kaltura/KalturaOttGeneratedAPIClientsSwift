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

	/**  Add a new tag to a configuration group. If this tag is already associated to
	  another group, request fails  */
	public static func add(configurationGroupTag: ConfigurationGroupTag) -> RequestBuilder<ConfigurationGroupTag> {
		let request: RequestBuilder<ConfigurationGroupTag> = RequestBuilder<ConfigurationGroupTag>(service: "configurationgrouptag", action: "add")
			.setBody(key: "configurationGroupTag", value: configurationGroupTag)

		return request
	}

	/**  Remove a tag association from configuration group  */
	public static func delete(tag: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "configurationgrouptag", action: "delete")
			.setBody(key: "tag", value: tag)

		return request
	}

	/**  Return the configuration group the tag is associated to  */
	public static func get(tag: String) -> RequestBuilder<ConfigurationGroupTag> {
		let request: RequestBuilder<ConfigurationGroupTag> = RequestBuilder<ConfigurationGroupTag>(service: "configurationgrouptag", action: "get")
			.setBody(key: "tag", value: tag)

		return request
	}

	/**  Return list of tags for a configuration group  */
	public static func list(filter: ConfigurationGroupTagFilter) -> RequestBuilder<ConfigurationGroupTagListResponse> {
		let request: RequestBuilder<ConfigurationGroupTagListResponse> = RequestBuilder<ConfigurationGroupTagListResponse>(service: "configurationgrouptag", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}
}
