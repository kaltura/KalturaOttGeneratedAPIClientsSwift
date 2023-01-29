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

public final class EpgServicePartnerConfigurationService{

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Returns EPG cache service partner configurations  */
	public static func get() -> RequestBuilder<EpgServicePartnerConfiguration, EpgServicePartnerConfiguration.EpgServicePartnerConfigurationTokenizer, GetTokenizer> {
		let request: RequestBuilder<EpgServicePartnerConfiguration, EpgServicePartnerConfiguration.EpgServicePartnerConfigurationTokenizer, GetTokenizer> = RequestBuilder<EpgServicePartnerConfiguration, EpgServicePartnerConfiguration.EpgServicePartnerConfigurationTokenizer, GetTokenizer>(service: "epgservicepartnerconfiguration", action: "get")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func config<T: EpgServicePartnerConfiguration.EpgServicePartnerConfigurationTokenizer>() -> T {
			return T(self.append("config"))
		}
	}

	/**  Returns EPG cache service partner configurations  */
	public static func update(config: EpgServicePartnerConfiguration) -> NullRequestBuilder<UpdateTokenizer> {
		let request: NullRequestBuilder<UpdateTokenizer> = NullRequestBuilder<UpdateTokenizer>(service: "epgservicepartnerconfiguration", action: "update")
			.setParam(key: "config", value: config)

		return request
	}
}
