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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class EngagementService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func engagement<T: Engagement.EngagementTokenizer>() -> T {
			return T(self.append("engagement"))
		}
	}

	/**  Insert new Engagement for partner  */
	public static func add(engagement: Engagement) -> RequestBuilder<Engagement, Engagement.EngagementTokenizer, AddTokenizer> {
		let request: RequestBuilder<Engagement, Engagement.EngagementTokenizer, AddTokenizer> = RequestBuilder<Engagement, Engagement.EngagementTokenizer, AddTokenizer>(service: "engagement", action: "add")
			.setParam(key: "engagement", value: engagement)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete engagement by engagement adapter id  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "engagement", action: "delete")
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

	/**  Return engagement  */
	public static func get(id: Int) -> RequestBuilder<Engagement, Engagement.EngagementTokenizer, GetTokenizer> {
		let request: RequestBuilder<Engagement, Engagement.EngagementTokenizer, GetTokenizer> = RequestBuilder<Engagement, Engagement.EngagementTokenizer, GetTokenizer>(service: "engagement", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: EngagementFilter.EngagementFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Returns all Engagement for partner  */
	public static func list(filter: EngagementFilter) -> RequestBuilder<EngagementListResponse, EngagementListResponse.EngagementListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EngagementListResponse, EngagementListResponse.EngagementListResponseTokenizer, ListTokenizer> = RequestBuilder<EngagementListResponse, EngagementListResponse.EngagementListResponseTokenizer, ListTokenizer>(service: "engagement", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
