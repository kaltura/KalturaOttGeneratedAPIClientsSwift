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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class ChannelService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func channel<T: Channel.ChannelTokenizer>() -> T {
			return T(self.append("channel"))
		}
	}

	/**  Insert new channel for partner. Supports KalturaDynamicChannel or
	  KalturaManualChannel  */
	public static func add(channel: Channel) -> RequestBuilder<Channel, Channel.ChannelTokenizer, AddTokenizer> {
		let request: RequestBuilder<Channel, Channel.ChannelTokenizer, AddTokenizer> = RequestBuilder<Channel, Channel.ChannelTokenizer, AddTokenizer>(service: "channel", action: "add")
			.setParam(key: "channel", value: channel)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var channelId: BaseTokenizedObject {
			get {
				return self.append("channelId") 
			}
		}
	}

	/**  Delete channel by its channel id  */
	public static func delete(channelId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "channel", action: "delete")
			.setParam(key: "channelId", value: channelId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Returns channel  */
	public static func get(id: Int) -> RequestBuilder<Channel, Channel.ChannelTokenizer, GetTokenizer> {
		let request: RequestBuilder<Channel, Channel.ChannelTokenizer, GetTokenizer> = RequestBuilder<Channel, Channel.ChannelTokenizer, GetTokenizer>(service: "channel", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ChannelsFilter.ChannelsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ChannelListResponse, ChannelListResponse.ChannelListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ChannelsFilter?) -> RequestBuilder<ChannelListResponse, ChannelListResponse.ChannelListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Get the list of tags for the partner  */
	public static func list(filter: ChannelsFilter?, pager: FilterPager?) -> RequestBuilder<ChannelListResponse, ChannelListResponse.ChannelListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ChannelListResponse, ChannelListResponse.ChannelListResponseTokenizer, ListTokenizer> = RequestBuilder<ChannelListResponse, ChannelListResponse.ChannelListResponseTokenizer, ListTokenizer>(service: "channel", action: "list")
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
		
		public func channel<T: Channel.ChannelTokenizer>() -> T {
			return T(self.append("channel"))
		}
	}

	/**  Update channel details. Supports KalturaDynamicChannel or KalturaManualChannel  */
	public static func update(id: Int, channel: Channel) -> RequestBuilder<Channel, Channel.ChannelTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Channel, Channel.ChannelTokenizer, UpdateTokenizer> = RequestBuilder<Channel, Channel.ChannelTokenizer, UpdateTokenizer>(service: "channel", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "channel", value: channel)

		return request
	}
}
