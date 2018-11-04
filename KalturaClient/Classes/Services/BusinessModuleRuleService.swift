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
// Copyright (C) 2006-2018  Kaltura Inc.
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

public final class BusinessModuleRuleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func businessModuleRule<T: BusinessModuleRule.BusinessModuleRuleTokenizer>() -> T {
			return T(self.append("businessModuleRule"))
		}
	}

	/**  Add business module rule  */
	public static func add(businessModuleRule: BusinessModuleRule) -> RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, AddTokenizer> {
		let request: RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, AddTokenizer> = RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, AddTokenizer>(service: "businessmodulerule", action: "add")
			.setParam(key: "businessModuleRule", value: businessModuleRule)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete business module rule  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "businessmodulerule", action: "delete")
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

	/**  Get business module rule by ID  */
	public static func get(id: Int64) -> RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, GetTokenizer> {
		let request: RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, GetTokenizer> = RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, GetTokenizer>(service: "businessmodulerule", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: BusinessModuleRuleFilter.BusinessModuleRuleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<BusinessModuleRuleListResponse, BusinessModuleRuleListResponse.BusinessModuleRuleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Get the list of business module rules for the partner  */
	public static func list(filter: BusinessModuleRuleFilter?) -> RequestBuilder<BusinessModuleRuleListResponse, BusinessModuleRuleListResponse.BusinessModuleRuleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BusinessModuleRuleListResponse, BusinessModuleRuleListResponse.BusinessModuleRuleListResponseTokenizer, ListTokenizer> = RequestBuilder<BusinessModuleRuleListResponse, BusinessModuleRuleListResponse.BusinessModuleRuleListResponseTokenizer, ListTokenizer>(service: "businessmodulerule", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func businessModuleRule<T: BusinessModuleRule.BusinessModuleRuleTokenizer>() -> T {
			return T(self.append("businessModuleRule"))
		}
	}

	/**  Update business module rule  */
	public static func update(id: Int64, businessModuleRule: BusinessModuleRule) -> RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, UpdateTokenizer> = RequestBuilder<BusinessModuleRule, BusinessModuleRule.BusinessModuleRuleTokenizer, UpdateTokenizer>(service: "businessmodulerule", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "businessModuleRule", value: businessModuleRule)

		return request
	}
}
