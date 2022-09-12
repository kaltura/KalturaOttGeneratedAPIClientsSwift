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

public final class HouseholdLimitationsService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func householdLimitations<T: HouseholdLimitations.HouseholdLimitationsTokenizer>() -> T {
			return T(self.append("householdLimitations"))
		}
	}

	/**  Add household limitation  */
	public static func add(householdLimitations: HouseholdLimitations) -> RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, AddTokenizer> {
		let request: RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, AddTokenizer> = RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, AddTokenizer>(service: "householdlimitations", action: "add")
			.setParam(key: "householdLimitations", value: householdLimitations)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var householdLimitationsId: BaseTokenizedObject {
			get {
				return self.append("householdLimitationsId") 
			}
		}
	}

	/**  Delete household limitation  */
	public static func delete(householdLimitationsId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "householdlimitations", action: "delete")
			.setParam(key: "householdLimitationsId", value: householdLimitationsId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get the limitation module by id  */
	public static func get(id: Int) -> RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, GetTokenizer> {
		let request: RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, GetTokenizer> = RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, GetTokenizer>(service: "householdlimitations", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class IsUsedTokenizer: ClientTokenizer  {
		
		public var dlmId: BaseTokenizedObject {
			get {
				return self.append("dlmId") 
			}
		}
	}

	/**  Checks if the DLM is used  */
	public static func isUsed(dlmId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, IsUsedTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, IsUsedTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, IsUsedTokenizer>(service: "householdlimitations", action: "isUsed")
			.setParam(key: "dlmId", value: dlmId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Get the list of PartnerConfiguration  */
	public static func list() -> RequestBuilder<HouseholdLimitationsListResponse, HouseholdLimitationsListResponse.HouseholdLimitationsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<HouseholdLimitationsListResponse, HouseholdLimitationsListResponse.HouseholdLimitationsListResponseTokenizer, ListTokenizer> = RequestBuilder<HouseholdLimitationsListResponse, HouseholdLimitationsListResponse.HouseholdLimitationsListResponseTokenizer, ListTokenizer>(service: "householdlimitations", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var dlmId: BaseTokenizedObject {
			get {
				return self.append("dlmId") 
			}
		}
		
		public func householdLimitation<T: HouseholdLimitations.HouseholdLimitationsTokenizer>() -> T {
			return T(self.append("householdLimitation"))
		}
	}

	/**  Updates household limitation  */
	public static func update(dlmId: Int, householdLimitation: HouseholdLimitations) -> RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, UpdateTokenizer> = RequestBuilder<HouseholdLimitations, HouseholdLimitations.HouseholdLimitationsTokenizer, UpdateTokenizer>(service: "householdlimitations", action: "update")
			.setParam(key: "dlmId", value: dlmId)
			.setParam(key: "householdLimitation", value: householdLimitation)

		return request
	}
}
