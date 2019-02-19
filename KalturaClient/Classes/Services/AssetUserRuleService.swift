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

public final class AssetUserRuleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func assetUserRule<T: AssetUserRule.AssetUserRuleTokenizer>() -> T {
			return T(self.append("assetUserRule"))
		}
	}

	/**  Add asset user rule  */
	public static func add(assetUserRule: AssetUserRule) -> RequestBuilder<AssetUserRule, AssetUserRule.AssetUserRuleTokenizer, AddTokenizer> {
		let request: RequestBuilder<AssetUserRule, AssetUserRule.AssetUserRuleTokenizer, AddTokenizer> = RequestBuilder<AssetUserRule, AssetUserRule.AssetUserRuleTokenizer, AddTokenizer>(service: "assetuserrule", action: "add")
			.setParam(key: "assetUserRule", value: assetUserRule)

		return request
	}

	public class AttachUserTokenizer: ClientTokenizer  {
		
		public var ruleId: BaseTokenizedObject {
			get {
				return self.append("ruleId") 
			}
		}
	}

	/**  Attach AssetUserRule To User  */
	public static func attachUser(ruleId: Int64) -> NullRequestBuilder<AttachUserTokenizer> {
		let request: NullRequestBuilder<AttachUserTokenizer> = NullRequestBuilder<AttachUserTokenizer>(service: "assetuserrule", action: "attachUser")
			.setParam(key: "ruleId", value: ruleId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete asset user rule  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "assetuserrule", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class DetachUserTokenizer: ClientTokenizer  {
		
		public var ruleId: BaseTokenizedObject {
			get {
				return self.append("ruleId") 
			}
		}
	}

	/**  Detach AssetUserRule from user  */
	public static func detachUser(ruleId: Int64) -> NullRequestBuilder<DetachUserTokenizer> {
		let request: NullRequestBuilder<DetachUserTokenizer> = NullRequestBuilder<DetachUserTokenizer>(service: "assetuserrule", action: "detachUser")
			.setParam(key: "ruleId", value: ruleId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AssetUserRuleFilter.AssetUserRuleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<AssetUserRuleListResponse, AssetUserRuleListResponse.AssetUserRuleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Get the list of asset user rules for the partner  */
	public static func list(filter: AssetUserRuleFilter?) -> RequestBuilder<AssetUserRuleListResponse, AssetUserRuleListResponse.AssetUserRuleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AssetUserRuleListResponse, AssetUserRuleListResponse.AssetUserRuleListResponseTokenizer, ListTokenizer> = RequestBuilder<AssetUserRuleListResponse, AssetUserRuleListResponse.AssetUserRuleListResponseTokenizer, ListTokenizer>(service: "assetuserrule", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func assetUserRule<T: AssetUserRule.AssetUserRuleTokenizer>() -> T {
			return T(self.append("assetUserRule"))
		}
	}

	/**  Update asset user rule  */
	public static func update(id: Int64, assetUserRule: AssetUserRule) -> RequestBuilder<AssetUserRule, AssetUserRule.AssetUserRuleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AssetUserRule, AssetUserRule.AssetUserRuleTokenizer, UpdateTokenizer> = RequestBuilder<AssetUserRule, AssetUserRule.AssetUserRuleTokenizer, UpdateTokenizer>(service: "assetuserrule", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "assetUserRule", value: assetUserRule)

		return request
	}
}
