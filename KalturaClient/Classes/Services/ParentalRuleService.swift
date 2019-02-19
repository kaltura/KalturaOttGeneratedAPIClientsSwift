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

public final class ParentalRuleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func parentalRule<T: ParentalRule.ParentalRuleTokenizer>() -> T {
			return T(self.append("parentalRule"))
		}
	}

	/**  Add a new parentalRule  */
	public static func add(parentalRule: ParentalRule) -> RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, AddTokenizer> {
		let request: RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, AddTokenizer> = RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, AddTokenizer>(service: "parentalrule", action: "add")
			.setParam(key: "parentalRule", value: parentalRule)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing parentalRule  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "parentalrule", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class DisableTokenizer: ClientTokenizer  {
		
		public var ruleId: BaseTokenizedObject {
			get {
				return self.append("ruleId") 
			}
		}
		
		public var entityReference: BaseTokenizedObject {
			get {
				return self.append("entityReference") 
			}
		}
	}

	/**  Disables a parental rule that was previously defined by the household master.
	  Disable can be at specific user or household level.  */
	public static func disable(ruleId: Int64, entityReference: EntityReferenceBy) -> RequestBuilder<Bool, BaseTokenizedObject, DisableTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DisableTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DisableTokenizer>(service: "parentalrule", action: "disable")
			.setParam(key: "ruleId", value: ruleId)
			.setParam(key: "entityReference", value: entityReference.rawValue)

		return request
	}

	public class DisableDefaultTokenizer: ClientTokenizer  {
		
		public var entityReference: BaseTokenizedObject {
			get {
				return self.append("entityReference") 
			}
		}
	}

	/**  Disables a parental rule that was defined at account level. Disable can be at
	  specific user or household level.  */
	public static func disableDefault(entityReference: EntityReferenceBy) -> RequestBuilder<Bool, BaseTokenizedObject, DisableDefaultTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DisableDefaultTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DisableDefaultTokenizer>(service: "parentalrule", action: "disableDefault")
			.setParam(key: "entityReference", value: entityReference.rawValue)

		return request
	}

	public class EnableTokenizer: ClientTokenizer  {
		
		public var ruleId: BaseTokenizedObject {
			get {
				return self.append("ruleId") 
			}
		}
		
		public var entityReference: BaseTokenizedObject {
			get {
				return self.append("entityReference") 
			}
		}
	}

	/**  Enable a parental rules for a user  */
	public static func enable(ruleId: Int64, entityReference: EntityReferenceBy) -> RequestBuilder<Bool, BaseTokenizedObject, EnableTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, EnableTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, EnableTokenizer>(service: "parentalrule", action: "enable")
			.setParam(key: "ruleId", value: ruleId)
			.setParam(key: "entityReference", value: entityReference.rawValue)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get an existing parentalRule by identifier  */
	public static func get(id: Int64) -> RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, GetTokenizer> {
		let request: RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, GetTokenizer> = RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, GetTokenizer>(service: "parentalrule", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ParentalRuleFilter.ParentalRuleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Return the parental rules that applies for the user or household. Can include
	  rules that have been associated in account, household, or user level.           
	    Association level is also specified in the response.  */
	public static func list(filter: ParentalRuleFilter) -> RequestBuilder<ParentalRuleListResponse, ParentalRuleListResponse.ParentalRuleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ParentalRuleListResponse, ParentalRuleListResponse.ParentalRuleListResponseTokenizer, ListTokenizer> = RequestBuilder<ParentalRuleListResponse, ParentalRuleListResponse.ParentalRuleListResponseTokenizer, ListTokenizer>(service: "parentalrule", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func parentalRule<T: ParentalRule.ParentalRuleTokenizer>() -> T {
			return T(self.append("parentalRule"))
		}
	}

	/**  Update an existing parentalRule  */
	public static func update(id: Int64, parentalRule: ParentalRule) -> RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, UpdateTokenizer> = RequestBuilder<ParentalRule, ParentalRule.ParentalRuleTokenizer, UpdateTokenizer>(service: "parentalrule", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "parentalRule", value: parentalRule)

		return request
	}
}
