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

public final class PartnerConfigurationService{

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PartnerConfigurationFilter.PartnerConfigurationFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Get the list of PartnerConfiguration  */
	public static func list(filter: PartnerConfigurationFilter) -> RequestBuilder<PartnerConfigurationListResponse, PartnerConfigurationListResponse.PartnerConfigurationListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PartnerConfigurationListResponse, PartnerConfigurationListResponse.PartnerConfigurationListResponseTokenizer, ListTokenizer> = RequestBuilder<PartnerConfigurationListResponse, PartnerConfigurationListResponse.PartnerConfigurationListResponseTokenizer, ListTokenizer>(service: "partnerconfiguration", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func configuration<T: PartnerConfiguration.PartnerConfigurationTokenizer>() -> T {
			return T(self.append("configuration"))
		}
	}

	/**  Update Partner Configuration  */
	public static func update(configuration: PartnerConfiguration) -> RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UpdateTokenizer>(service: "partnerconfiguration", action: "update")
			.setParam(key: "configuration", value: configuration)

		return request
	}
}
