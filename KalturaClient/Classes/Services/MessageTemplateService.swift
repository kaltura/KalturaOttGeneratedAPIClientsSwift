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

public final class MessageTemplateService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var messageType: BaseTokenizedObject {
			get {
				return self.append("messageType") 
			}
		}
	}

	/**  Retrieve a message template used in push notifications and inbox  */
	public static func get(messageType: MessageTemplateType) -> RequestBuilder<MessageTemplate, MessageTemplate.MessageTemplateTokenizer, GetTokenizer> {
		let request: RequestBuilder<MessageTemplate, MessageTemplate.MessageTemplateTokenizer, GetTokenizer> = RequestBuilder<MessageTemplate, MessageTemplate.MessageTemplateTokenizer, GetTokenizer>(service: "messagetemplate", action: "get")
			.setParam(key: "messageType", value: messageType.rawValue)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var messageType: BaseTokenizedObject {
			get {
				return self.append("messageType") 
			}
		}
		
		public func template<T: MessageTemplate.MessageTemplateTokenizer>() -> T {
			return T(self.append("template"))
		}
	}

	/**  Set the account’s push notifications and inbox messages templates  */
	public static func update(messageType: MessageTemplateType, template: MessageTemplate) -> RequestBuilder<MessageTemplate, MessageTemplate.MessageTemplateTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<MessageTemplate, MessageTemplate.MessageTemplateTokenizer, UpdateTokenizer> = RequestBuilder<MessageTemplate, MessageTemplate.MessageTemplateTokenizer, UpdateTokenizer>(service: "messagetemplate", action: "update")
			.setParam(key: "messageType", value: messageType.rawValue)
			.setParam(key: "template", value: template)

		return request
	}
}
