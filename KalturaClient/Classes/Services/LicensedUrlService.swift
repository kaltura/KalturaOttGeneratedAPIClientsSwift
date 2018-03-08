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

public final class LicensedUrlService{

	public class GetTokenizer: ClientTokenizer  {
		
		public func request<T: LicensedUrlBaseRequest.LicensedUrlBaseRequestTokenizer>() -> T {
			return T(self.append("request"))
		}
	}

	/**  Get the URL for playing an asset - program, media or recording  */
	public static func get(request: LicensedUrlBaseRequest) -> RequestBuilder<LicensedUrl, LicensedUrl.LicensedUrlTokenizer, GetTokenizer> {
		let request: RequestBuilder<LicensedUrl, LicensedUrl.LicensedUrlTokenizer, GetTokenizer> = RequestBuilder<LicensedUrl, LicensedUrl.LicensedUrlTokenizer, GetTokenizer>(service: "licensedurl", action: "get")
			.setParam(key: "request", value: request)

		return request
	}
}
