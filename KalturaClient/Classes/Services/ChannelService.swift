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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class ChannelService{

	/**  Insert new channel for partner. Currently supports only KSQL channel  */
	public static func add(channel: Channel) -> RequestBuilder<Channel> {
		let request: RequestBuilder<Channel> = RequestBuilder<Channel>(service: "channel", action: "add")
			.setBody(key: "channel", value: channel)

		return request
	}

	/**  Delete channel by its channel id  */
	public static func delete(channelId: Int) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "channel", action: "delete")
			.setBody(key: "channelId", value: channelId)

		return request
	}

	/**  Returns channel info  */
	public static func get(id: Int) -> RequestBuilder<Channel> {
		let request: RequestBuilder<Channel> = RequestBuilder<Channel>(service: "channel", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Update channel details. Currently supports only KSQL channel  */
	public static func update(channelId: Int, channel: Channel) -> RequestBuilder<Channel> {
		let request: RequestBuilder<Channel> = RequestBuilder<Channel>(service: "channel", action: "update")
			.setBody(key: "channelId", value: channelId)
			.setBody(key: "channel", value: channel)

		return request
	}
}
