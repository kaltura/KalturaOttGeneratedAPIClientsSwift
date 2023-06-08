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

public final class LineupService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var pageIndex: BaseTokenizedObject {
			get {
				return self.append("pageIndex") 
			}
		}
		
		public var pageSize: BaseTokenizedObject {
			get {
				return self.append("pageSize") 
			}
		}
	}

	/**  Return regional lineup (list of lineup channel asset objects) based on the
	  requester session characteristics and his region.  */
	public static func get(pageIndex: Int, pageSize: Int) -> RequestBuilder<LineupChannelAssetListResponse, LineupChannelAssetListResponse.LineupChannelAssetListResponseTokenizer, GetTokenizer> {
		let request: RequestBuilder<LineupChannelAssetListResponse, LineupChannelAssetListResponse.LineupChannelAssetListResponseTokenizer, GetTokenizer> = RequestBuilder<LineupChannelAssetListResponse, LineupChannelAssetListResponse.LineupChannelAssetListResponseTokenizer, GetTokenizer>(service: "lineup", action: "get")
			.setParam(key: "pageIndex", value: pageIndex)
			.setParam(key: "pageSize", value: pageSize)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: LineupRegionalChannelFilter.LineupRegionalChannelFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: LineupRegionalChannelFilter) -> RequestBuilder<LineupChannelAssetListResponse, LineupChannelAssetListResponse.LineupChannelAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Returns list of lineup regional linear channels associated with one LCN and its
	  region information. Allows to apply sorting and filtering by LCN and linear
	  channels.  */
	public static func list(filter: LineupRegionalChannelFilter, pager: FilterPager?) -> RequestBuilder<LineupChannelAssetListResponse, LineupChannelAssetListResponse.LineupChannelAssetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<LineupChannelAssetListResponse, LineupChannelAssetListResponse.LineupChannelAssetListResponseTokenizer, ListTokenizer> = RequestBuilder<LineupChannelAssetListResponse, LineupChannelAssetListResponse.LineupChannelAssetListResponseTokenizer, ListTokenizer>(service: "lineup", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SendUpdatedNotificationTokenizer: ClientTokenizer  {
		
		public var regionIds: BaseTokenizedObject {
			get {
				return self.append("regionIds") 
			}
		}
	}

	/**  Sends lineup update requested notification.  */
	public static func sendUpdatedNotification(regionIds: String) -> RequestBuilder<Bool, BaseTokenizedObject, SendUpdatedNotificationTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SendUpdatedNotificationTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SendUpdatedNotificationTokenizer>(service: "lineup", action: "sendUpdatedNotification")
			.setParam(key: "regionIds", value: regionIds)

		return request
	}
}
