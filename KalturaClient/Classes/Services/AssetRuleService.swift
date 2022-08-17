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

public final class AssetRuleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func assetRule<T: AssetRule.AssetRuleTokenizer>() -> T {
			return T(self.append("assetRule"))
		}
	}

	/**  Add asset rule  */
	public static func add(assetRule: AssetRule) -> RequestBuilder<AssetRule, AssetRule.AssetRuleTokenizer, AddTokenizer> {
		let request: RequestBuilder<AssetRule, AssetRule.AssetRuleTokenizer, AddTokenizer> = RequestBuilder<AssetRule, AssetRule.AssetRuleTokenizer, AddTokenizer>(service: "assetrule", action: "add")
			.setParam(key: "assetRule", value: assetRule)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete asset rule  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "assetrule", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AssetRuleFilter.AssetRuleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<AssetRuleListResponse, AssetRuleListResponse.AssetRuleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Get the list of asset rules for the partner  */
	public static func list(filter: AssetRuleFilter?) -> RequestBuilder<AssetRuleListResponse, AssetRuleListResponse.AssetRuleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AssetRuleListResponse, AssetRuleListResponse.AssetRuleListResponseTokenizer, ListTokenizer> = RequestBuilder<AssetRuleListResponse, AssetRuleListResponse.AssetRuleListResponseTokenizer, ListTokenizer>(service: "assetrule", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func assetRule<T: AssetRule.AssetRuleTokenizer>() -> T {
			return T(self.append("assetRule"))
		}
	}

	/**  Update asset rule  */
	public static func update(id: Int64, assetRule: AssetRule) -> RequestBuilder<AssetRule, AssetRule.AssetRuleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AssetRule, AssetRule.AssetRuleTokenizer, UpdateTokenizer> = RequestBuilder<AssetRule, AssetRule.AssetRuleTokenizer, UpdateTokenizer>(service: "assetrule", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "assetRule", value: assetRule)

		return request
	}
}
