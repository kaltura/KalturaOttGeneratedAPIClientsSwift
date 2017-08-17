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

public final class ParentalRuleService{

	/**  Disables a parental rule that was previously defined by the household master.
	  Disable can be at specific user or household level.  */
	public static func disable(ruleId: Int64, entityReference: EntityReferenceBy) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "parentalrule", action: "disable")
			.setBody(key: "ruleId", value: ruleId)
			.setBody(key: "entityReference", value: entityReference.rawValue)

		return request
	}

	/**  Disables a parental rule that was defined at account level. Disable can be at
	  specific user or household level.  */
	public static func disableDefault(entityReference: EntityReferenceBy) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "parentalrule", action: "disableDefault")
			.setBody(key: "entityReference", value: entityReference.rawValue)

		return request
	}

	/**  Enable a parental rules for a user  */
	public static func enable(ruleId: Int64, entityReference: EntityReferenceBy) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "parentalrule", action: "enable")
			.setBody(key: "ruleId", value: ruleId)
			.setBody(key: "entityReference", value: entityReference.rawValue)

		return request
	}

	/**  Return the parental rules that applies for the user or household. Can include
	  rules that have been associated in account, household, or user level.           
	    Association level is also specified in the response.  */
	public static func list(filter: ParentalRuleFilter) -> RequestBuilder<ParentalRuleListResponse> {
		let request: RequestBuilder<ParentalRuleListResponse> = RequestBuilder<ParentalRuleListResponse>(service: "parentalrule", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}
}
