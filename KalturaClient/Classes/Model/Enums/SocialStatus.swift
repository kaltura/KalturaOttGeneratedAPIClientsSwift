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
public enum SocialStatus: String {
	case ERROR = "error"
	case OK = "ok"
	case USER_DOES_NOT_EXIST = "user_does_not_exist"
	case NO_USER_SOCIAL_SETTINGS_FOUND = "no_user_social_settings_found"
	case ASSET_ALREADY_LIKED = "asset_already_liked"
	case NOT_ALLOWED = "not_allowed"
	case INVALID_PARAMETERS = "invalid_parameters"
	case NO_FACEBOOK_ACTION = "no_facebook_action"
	case ASSET_ALREADY_RATED = "asset_already_rated"
	case ASSET_DOSE_NOT_EXISTS = "asset_dose_not_exists"
	case INVALID_PLATFORM_REQUEST = "invalid_platform_request"
	case INVALID_ACCESS_TOKEN = "invalid_access_token"
}
