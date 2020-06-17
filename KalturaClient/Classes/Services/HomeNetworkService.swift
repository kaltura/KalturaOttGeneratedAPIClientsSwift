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
// Copyright (C) 2006-2020  Kaltura Inc.
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

public final class HomeNetworkService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func homeNetwork<T: HomeNetwork.HomeNetworkTokenizer>() -> T {
			return T(self.append("homeNetwork"))
		}
	}

	/**  Add a new home network to a household  */
	public static func add(homeNetwork: HomeNetwork) -> RequestBuilder<HomeNetwork, HomeNetwork.HomeNetworkTokenizer, AddTokenizer> {
		let request: RequestBuilder<HomeNetwork, HomeNetwork.HomeNetworkTokenizer, AddTokenizer> = RequestBuilder<HomeNetwork, HomeNetwork.HomeNetworkTokenizer, AddTokenizer>(service: "homenetwork", action: "add")
			.setParam(key: "homeNetwork", value: homeNetwork)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
	}

	/**  Delete household’s existing home network  */
	public static func delete(externalId: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "homenetwork", action: "delete")
			.setParam(key: "externalId", value: externalId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Retrieve the household’s home networks  */
	public static func list() -> RequestBuilder<HomeNetworkListResponse, HomeNetworkListResponse.HomeNetworkListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HomeNetworkListResponse, HomeNetworkListResponse.HomeNetworkListResponseTokenizer, ListTokenizer> = RequestBuilder<HomeNetworkListResponse, HomeNetworkListResponse.HomeNetworkListResponseTokenizer, ListTokenizer>(service: "homenetwork", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var externalId: BaseTokenizedObject {
			get {
				return self.append("externalId") 
			}
		}
		
		public func homeNetwork<T: HomeNetwork.HomeNetworkTokenizer>() -> T {
			return T(self.append("homeNetwork"))
		}
	}

	/**  Update and existing home network for a household  */
	public static func update(externalId: String, homeNetwork: HomeNetwork) -> RequestBuilder<HomeNetwork, HomeNetwork.HomeNetworkTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<HomeNetwork, HomeNetwork.HomeNetworkTokenizer, UpdateTokenizer> = RequestBuilder<HomeNetwork, HomeNetwork.HomeNetworkTokenizer, UpdateTokenizer>(service: "homenetwork", action: "update")
			.setParam(key: "externalId", value: externalId)
			.setParam(key: "homeNetwork", value: homeNetwork)

		return request
	}
}
