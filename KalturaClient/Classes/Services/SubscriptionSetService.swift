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

public final class SubscriptionSetService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func subscriptionSet<T: SubscriptionSet.SubscriptionSetTokenizer>() -> T {
			return T(self.append("subscriptionSet"))
		}
	}

	/**  Add a new subscriptionSet  */
	public static func add(subscriptionSet: SubscriptionSet) -> RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, AddTokenizer> {
		let request: RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, AddTokenizer> = RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, AddTokenizer>(service: "subscriptionset", action: "add")
			.setParam(key: "subscriptionSet", value: subscriptionSet)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a subscriptionSet  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "subscriptionset", action: "delete")
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

	/**  Get the subscriptionSet according to the Identifier  */
	public static func get(id: Int64) -> RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, GetTokenizer> {
		let request: RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, GetTokenizer> = RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, GetTokenizer>(service: "subscriptionset", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SubscriptionSetFilter.SubscriptionSetFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<SubscriptionSetListResponse, SubscriptionSetListResponse.SubscriptionSetListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns a list of subscriptionSets requested by ids or subscription ids  */
	public static func list(filter: SubscriptionSetFilter?) -> RequestBuilder<SubscriptionSetListResponse, SubscriptionSetListResponse.SubscriptionSetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SubscriptionSetListResponse, SubscriptionSetListResponse.SubscriptionSetListResponseTokenizer, ListTokenizer> = RequestBuilder<SubscriptionSetListResponse, SubscriptionSetListResponse.SubscriptionSetListResponseTokenizer, ListTokenizer>(service: "subscriptionset", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func subscriptionSet<T: SubscriptionSet.SubscriptionSetTokenizer>() -> T {
			return T(self.append("subscriptionSet"))
		}
	}

	/**  Update the subscriptionSet  */
	public static func update(id: Int64, subscriptionSet: SubscriptionSet) -> RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, UpdateTokenizer> = RequestBuilder<SubscriptionSet, SubscriptionSet.SubscriptionSetTokenizer, UpdateTokenizer>(service: "subscriptionset", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "subscriptionSet", value: subscriptionSet)

		return request
	}
}
