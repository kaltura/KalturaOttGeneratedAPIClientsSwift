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

public final class EngagementAdapterService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func engagementAdapter<T: EngagementAdapter.EngagementAdapterTokenizer>() -> T {
			return T(self.append("engagementAdapter"))
		}
	}

	/**  Insert new Engagement adapter for partner  */
	public static func add(engagementAdapter: EngagementAdapter) -> RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, AddTokenizer> {
		let request: RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, AddTokenizer> = RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, AddTokenizer>(service: "engagementadapter", action: "add")
			.setParam(key: "engagementAdapter", value: engagementAdapter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Engagement adapter by Engagement adapter id  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "engagementadapter", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Generate engagement adapter shared secret  */
	public static func generateSharedSecret(id: Int) -> RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, GenerateSharedSecretTokenizer>(service: "engagementadapter", action: "generateSharedSecret")
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

	/**  Returns all Engagement adapters for partner : id + name  */
	public static func get(id: Int) -> RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, GetTokenizer> {
		let request: RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, GetTokenizer> = RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, GetTokenizer>(service: "engagementadapter", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all Engagement adapters for partner : id + name  */
	public static func list() -> RequestBuilder<EngagementAdapterListResponse, EngagementAdapterListResponse.EngagementAdapterListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EngagementAdapterListResponse, EngagementAdapterListResponse.EngagementAdapterListResponseTokenizer, ListTokenizer> = RequestBuilder<EngagementAdapterListResponse, EngagementAdapterListResponse.EngagementAdapterListResponseTokenizer, ListTokenizer>(service: "engagementadapter", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func engagementAdapter<T: EngagementAdapter.EngagementAdapterTokenizer>() -> T {
			return T(self.append("engagementAdapter"))
		}
	}

	/**  Update Engagement adapter details  */
	public static func update(id: Int, engagementAdapter: EngagementAdapter) -> RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, UpdateTokenizer> = RequestBuilder<EngagementAdapter, EngagementAdapter.EngagementAdapterTokenizer, UpdateTokenizer>(service: "engagementadapter", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "engagementAdapter", value: engagementAdapter)

		return request
	}
}
