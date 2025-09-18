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

public final class GeoBlockRuleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func geoBlockRule<T: GeoBlockRule.GeoBlockRuleTokenizer>() -> T {
			return T(self.append("geoBlockRule"))
		}
	}

	/**  Add a new geo block rule  */
	public static func add(geoBlockRule: GeoBlockRule) -> RequestBuilder<GeoBlockRule, GeoBlockRule.GeoBlockRuleTokenizer, AddTokenizer> {
		let request: RequestBuilder<GeoBlockRule, GeoBlockRule.GeoBlockRuleTokenizer, AddTokenizer> = RequestBuilder<GeoBlockRule, GeoBlockRule.GeoBlockRuleTokenizer, AddTokenizer>(service: "geoblockrule", action: "add")
			.setParam(key: "geoBlockRule", value: geoBlockRule)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a geo block rule  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "geoblockrule", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: GeoBlockRuleFilter.GeoBlockRuleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<GeoBlockRuleListResponse, GeoBlockRuleListResponse.GeoBlockRuleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: GeoBlockRuleFilter?) -> RequestBuilder<GeoBlockRuleListResponse, GeoBlockRuleListResponse.GeoBlockRuleListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Get the list of geo block rules for the partner  */
	public static func list(filter: GeoBlockRuleFilter?, pager: FilterPager?) -> RequestBuilder<GeoBlockRuleListResponse, GeoBlockRuleListResponse.GeoBlockRuleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<GeoBlockRuleListResponse, GeoBlockRuleListResponse.GeoBlockRuleListResponseTokenizer, ListTokenizer> = RequestBuilder<GeoBlockRuleListResponse, GeoBlockRuleListResponse.GeoBlockRuleListResponseTokenizer, ListTokenizer>(service: "geoblockrule", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func geoBlockRule<T: GeoBlockRule.GeoBlockRuleTokenizer>() -> T {
			return T(self.append("geoBlockRule"))
		}
	}

	/**  Update an existing geo block rule  */
	public static func update(id: Int64, geoBlockRule: GeoBlockRule) -> RequestBuilder<GeoBlockRule, GeoBlockRule.GeoBlockRuleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<GeoBlockRule, GeoBlockRule.GeoBlockRuleTokenizer, UpdateTokenizer> = RequestBuilder<GeoBlockRule, GeoBlockRule.GeoBlockRuleTokenizer, UpdateTokenizer>(service: "geoblockrule", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "geoBlockRule", value: geoBlockRule)

		return request
	}
}
