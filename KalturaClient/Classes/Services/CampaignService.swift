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

public final class CampaignService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func objectToAdd<T: Campaign.CampaignTokenizer>() -> T {
			return T(self.append("objectToAdd"))
		}
	}

	/**  Add an object  */
	public static func add(objectToAdd: Campaign) -> RequestBuilder<Campaign, Campaign.CampaignTokenizer, AddTokenizer> {
		let request: RequestBuilder<Campaign, Campaign.CampaignTokenizer, AddTokenizer> = RequestBuilder<Campaign, Campaign.CampaignTokenizer, AddTokenizer>(service: "campaign", action: "add")
			.setParam(key: "objectToAdd", value: objectToAdd)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func objectToUpdate<T: Campaign.CampaignTokenizer>() -> T {
			return T(self.append("objectToUpdate"))
		}
	}

	/**  Update an object  */
	public static func update(id: Int64, objectToUpdate: Campaign) -> RequestBuilder<Campaign, Campaign.CampaignTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Campaign, Campaign.CampaignTokenizer, UpdateTokenizer> = RequestBuilder<Campaign, Campaign.CampaignTokenizer, UpdateTokenizer>(service: "campaign", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "objectToUpdate", value: objectToUpdate)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an object  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "campaign", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CampaignFilter.CampaignFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: CampaignFilter) -> RequestBuilder<CampaignListResponse, CampaignListResponse.CampaignListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: CampaignFilter, pager: FilterPager?) -> RequestBuilder<CampaignListResponse, CampaignListResponse.CampaignListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CampaignListResponse, CampaignListResponse.CampaignListResponseTokenizer, ListTokenizer> = RequestBuilder<CampaignListResponse, CampaignListResponse.CampaignListResponseTokenizer, ListTokenizer>(service: "campaign", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SetStateTokenizer: ClientTokenizer  {
		
		public var campaignId: BaseTokenizedObject {
			get {
				return self.append("campaignId") 
			}
		}
		
		public var newState: BaseTokenizedObject {
			get {
				return self.append("newState") 
			}
		}
	}

	/**  Set campaign&amp;#39;s state  */
	public static func setState(campaignId: Int64, newState: ObjectState) -> NullRequestBuilder<SetStateTokenizer> {
		let request: NullRequestBuilder<SetStateTokenizer> = NullRequestBuilder<SetStateTokenizer>(service: "campaign", action: "setState")
			.setParam(key: "campaignId", value: campaignId)
			.setParam(key: "newState", value: newState.rawValue)

		return request
	}
}
