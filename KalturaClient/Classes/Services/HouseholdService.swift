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

public final class HouseholdService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func household<T: Household.HouseholdTokenizer>() -> T {
			return T(self.append("household"))
		}
	}

	/**  Creates a household for the user  */
	public static func add(household: Household) -> RequestBuilder<Household, Household.HouseholdTokenizer, AddTokenizer> {
		let request: RequestBuilder<Household, Household.HouseholdTokenizer, AddTokenizer> = RequestBuilder<Household, Household.HouseholdTokenizer, AddTokenizer>(service: "household", action: "add")
			.setBody(key: "household", value: household)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func delete() -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		return delete(id: nil)
	}

	/**  Fully delete a household. Delete all of the household information, including
	  users, devices, entitlements, payment methods and notification date.  */
	public static func delete(id: Int?) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "household", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func get() -> RequestBuilder<Household, Household.HouseholdTokenizer, GetTokenizer> {
		return get(id: nil)
	}

	/**  Returns the household model  */
	public static func get(id: Int?) -> RequestBuilder<Household, Household.HouseholdTokenizer, GetTokenizer> {
		let request: RequestBuilder<Household, Household.HouseholdTokenizer, GetTokenizer> = RequestBuilder<Household, Household.HouseholdTokenizer, GetTokenizer>(service: "household", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ResetFrequencyTokenizer: ClientTokenizer  {
		
		public var frequencyType: BaseTokenizedObject {
			get {
				return self.append("frequencyType") 
			}
		}
	}

	/**  Reset a household’s time limitation for removing user or device  */
	public static func resetFrequency(frequencyType: HouseholdFrequencyType) -> RequestBuilder<Household, Household.HouseholdTokenizer, ResetFrequencyTokenizer> {
		let request: RequestBuilder<Household, Household.HouseholdTokenizer, ResetFrequencyTokenizer> = RequestBuilder<Household, Household.HouseholdTokenizer, ResetFrequencyTokenizer>(service: "household", action: "resetFrequency")
			.setBody(key: "frequencyType", value: frequencyType.rawValue)

		return request
	}

	public class ResumeTokenizer: ClientTokenizer  {
	}

	/**  Resumed a given household service to its previous service settings  */
	public static func resume() -> RequestBuilder<Bool, BaseTokenizedObject, ResumeTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ResumeTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ResumeTokenizer>(service: "household", action: "resume")

		return request
	}

	public class SuspendTokenizer: ClientTokenizer  {
	}

	/**  Suspend a given household service. Sets the household status to
	  “suspended&amp;quot;.The household service settings are maintained for later
	  resume  */
	public static func suspend() -> RequestBuilder<Bool, BaseTokenizedObject, SuspendTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SuspendTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SuspendTokenizer>(service: "household", action: "suspend")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func household<T: Household.HouseholdTokenizer>() -> T {
			return T(self.append("household"))
		}
	}

	/**  Update the household name and description  */
	public static func update(household: Household) -> RequestBuilder<Household, Household.HouseholdTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Household, Household.HouseholdTokenizer, UpdateTokenizer> = RequestBuilder<Household, Household.HouseholdTokenizer, UpdateTokenizer>(service: "household", action: "update")
			.setBody(key: "household", value: household)

		return request
	}
}
