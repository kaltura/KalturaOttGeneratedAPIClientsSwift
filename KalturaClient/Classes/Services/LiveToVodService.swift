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

public final class LiveToVodService{

	public class GetConfigurationTokenizer: ClientTokenizer  {
	}

	/**  Get existing L2V configuration for both the partner level and all channels
	  level.  */
	public static func getConfiguration() -> RequestBuilder<LiveToVodFullConfiguration, LiveToVodFullConfiguration.LiveToVodFullConfigurationTokenizer, GetConfigurationTokenizer> {
		let request: RequestBuilder<LiveToVodFullConfiguration, LiveToVodFullConfiguration.LiveToVodFullConfigurationTokenizer, GetConfigurationTokenizer> = RequestBuilder<LiveToVodFullConfiguration, LiveToVodFullConfiguration.LiveToVodFullConfigurationTokenizer, GetConfigurationTokenizer>(service: "livetovod", action: "getConfiguration")

		return request
	}

	public class GetLinearAssetConfigurationTokenizer: ClientTokenizer  {
		
		public var linearAssetId: BaseTokenizedObject {
			get {
				return self.append("linearAssetId") 
			}
		}
	}

	/**  Get existing L2V configuration for a specific linear asset.  */
	public static func getLinearAssetConfiguration(linearAssetId: Int64) -> RequestBuilder<LiveToVodLinearAssetConfiguration, LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer, GetLinearAssetConfigurationTokenizer> {
		let request: RequestBuilder<LiveToVodLinearAssetConfiguration, LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer, GetLinearAssetConfigurationTokenizer> = RequestBuilder<LiveToVodLinearAssetConfiguration, LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer, GetLinearAssetConfigurationTokenizer>(service: "livetovod", action: "getLinearAssetConfiguration")
			.setParam(key: "linearAssetId", value: linearAssetId)

		return request
	}

	public class GetPartnerConfigurationTokenizer: ClientTokenizer  {
	}

	/**  Get existing L2V partner configuration.  */
	public static func getPartnerConfiguration() -> RequestBuilder<LiveToVodPartnerConfiguration, LiveToVodPartnerConfiguration.LiveToVodPartnerConfigurationTokenizer, GetPartnerConfigurationTokenizer> {
		let request: RequestBuilder<LiveToVodPartnerConfiguration, LiveToVodPartnerConfiguration.LiveToVodPartnerConfigurationTokenizer, GetPartnerConfigurationTokenizer> = RequestBuilder<LiveToVodPartnerConfiguration, LiveToVodPartnerConfiguration.LiveToVodPartnerConfigurationTokenizer, GetPartnerConfigurationTokenizer>(service: "livetovod", action: "getPartnerConfiguration")

		return request
	}

	public class UpdateLinearAssetConfigurationTokenizer: ClientTokenizer  {
		
		public func configuration<T: LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer>() -> T {
			return T(self.append("configuration"))
		}
	}

	/**  Set L2V configuration for a specific Linear channel.  */
	public static func updateLinearAssetConfiguration(configuration: LiveToVodLinearAssetConfiguration) -> RequestBuilder<LiveToVodLinearAssetConfiguration, LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer, UpdateLinearAssetConfigurationTokenizer> {
		let request: RequestBuilder<LiveToVodLinearAssetConfiguration, LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer, UpdateLinearAssetConfigurationTokenizer> = RequestBuilder<LiveToVodLinearAssetConfiguration, LiveToVodLinearAssetConfiguration.LiveToVodLinearAssetConfigurationTokenizer, UpdateLinearAssetConfigurationTokenizer>(service: "livetovod", action: "updateLinearAssetConfiguration")
			.setParam(key: "configuration", value: configuration)

		return request
	}

	public class UpdatePartnerConfigurationTokenizer: ClientTokenizer  {
		
		public func configuration<T: LiveToVodPartnerConfiguration.LiveToVodPartnerConfigurationTokenizer>() -> T {
			return T(self.append("configuration"))
		}
	}

	/**  Set L2V configuration on the partner level.  */
	public static func updatePartnerConfiguration(configuration: LiveToVodPartnerConfiguration) -> RequestBuilder<LiveToVodPartnerConfiguration, LiveToVodPartnerConfiguration.LiveToVodPartnerConfigurationTokenizer, UpdatePartnerConfigurationTokenizer> {
		let request: RequestBuilder<LiveToVodPartnerConfiguration, LiveToVodPartnerConfiguration.LiveToVodPartnerConfigurationTokenizer, UpdatePartnerConfigurationTokenizer> = RequestBuilder<LiveToVodPartnerConfiguration, LiveToVodPartnerConfiguration.LiveToVodPartnerConfigurationTokenizer, UpdatePartnerConfigurationTokenizer>(service: "livetovod", action: "updatePartnerConfiguration")
			.setParam(key: "configuration", value: configuration)

		return request
	}
}
