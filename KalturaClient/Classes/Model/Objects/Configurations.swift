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

open class Configurations: ObjectBase {

	/**  Configuration id  */
	public var id: String? = nil
	/**  Partner id  */
	public var partnerId: Int? = nil
	/**  Configuration group id  */
	public var configurationGroupId: String? = nil
	/**  Application name  */
	public var appName: String? = nil
	/**  Client version  */
	public var clientVersion: String? = nil
	/**  Platform: Android/iOS/WindowsPhone/Blackberry/STB/CTV/Other  */
	public var platform: Platform? = nil
	/**  External push id  */
	public var externalPushId: String? = nil
	/**  Is force update  */
	public var isForceUpdate: Bool? = nil
	/**  Content  */
	public var content: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["configurationGroupId"] != nil {
			configurationGroupId = dict["configurationGroupId"] as? String
		}
		if dict["appName"] != nil {
			appName = dict["appName"] as? String
		}
		if dict["clientVersion"] != nil {
			clientVersion = dict["clientVersion"] as? String
		}
		if dict["platform"] != nil {
			platform = Platform(rawValue: "\(dict["platform"]!)")
		}
		if dict["externalPushId"] != nil {
			externalPushId = dict["externalPushId"] as? String
		}
		if dict["isForceUpdate"] != nil {
			isForceUpdate = dict["isForceUpdate"] as? Bool
		}
		if dict["content"] != nil {
			content = dict["content"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(configurationGroupId != nil) {
			dict["configurationGroupId"] = configurationGroupId!
		}
		if(appName != nil) {
			dict["appName"] = appName!
		}
		if(clientVersion != nil) {
			dict["clientVersion"] = clientVersion!
		}
		if(platform != nil) {
			dict["platform"] = platform!.rawValue
		}
		if(externalPushId != nil) {
			dict["externalPushId"] = externalPushId!
		}
		if(isForceUpdate != nil) {
			dict["isForceUpdate"] = isForceUpdate!
		}
		if(content != nil) {
			dict["content"] = content!
		}
		return dict
	}
}

