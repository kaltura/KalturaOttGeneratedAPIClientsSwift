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

public final class EngagementAdapterService{

	/**  Insert new Engagement adapter for partner  */
	public static func add(engagementAdapter: EngagementAdapter) -> RequestBuilder<EngagementAdapter> {
		let request: RequestBuilder<EngagementAdapter> = RequestBuilder<EngagementAdapter>(service: "engagementadapter", action: "add")
			.setBody(key: "engagementAdapter", value: engagementAdapter)

		return request
	}

	/**  Delete Engagement adapter by Engagement adapter id  */
	public static func delete(id: Int) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "engagementadapter", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Generate engagement adapter shared secret  */
	public static func generateSharedSecret(id: Int) -> RequestBuilder<EngagementAdapter> {
		let request: RequestBuilder<EngagementAdapter> = RequestBuilder<EngagementAdapter>(service: "engagementadapter", action: "generateSharedSecret")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Returns all Engagement adapters for partner : id + name  */
	public static func get(id: Int) -> RequestBuilder<EngagementAdapter> {
		let request: RequestBuilder<EngagementAdapter> = RequestBuilder<EngagementAdapter>(service: "engagementadapter", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Returns all Engagement adapters for partner : id + name  */
	public static func list() -> RequestBuilder<EngagementAdapterListResponse> {
		let request: RequestBuilder<EngagementAdapterListResponse> = RequestBuilder<EngagementAdapterListResponse>(service: "engagementadapter", action: "list")

		return request
	}

	/**  Update Engagement adapter details  */
	public static func update(id: Int, engagementAdapter: EngagementAdapter) -> RequestBuilder<EngagementAdapter> {
		let request: RequestBuilder<EngagementAdapter> = RequestBuilder<EngagementAdapter>(service: "engagementadapter", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "engagementAdapter", value: engagementAdapter)

		return request
	}
}
