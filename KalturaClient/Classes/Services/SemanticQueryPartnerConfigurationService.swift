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

public final class SemanticQueryPartnerConfigurationService{

	public class GetTokenizer: ClientTokenizer  {
	}

	/**  Retrieves partner configuration for semantic query service.  */
	public static func get() -> RequestBuilder<SemanticQueryPartnerConfiguration, SemanticQueryPartnerConfiguration.SemanticQueryPartnerConfigurationTokenizer, GetTokenizer> {
		let request: RequestBuilder<SemanticQueryPartnerConfiguration, SemanticQueryPartnerConfiguration.SemanticQueryPartnerConfigurationTokenizer, GetTokenizer> = RequestBuilder<SemanticQueryPartnerConfiguration, SemanticQueryPartnerConfiguration.SemanticQueryPartnerConfigurationTokenizer, GetTokenizer>(service: "semanticquerypartnerconfiguration", action: "get")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func configuration<T: SemanticQueryPartnerConfiguration.SemanticQueryPartnerConfigurationTokenizer>() -> T {
			return T(self.append("configuration"))
		}
	}

	/**  Updates the partner configuration for semantic query service.  */
	public static func update(configuration: SemanticQueryPartnerConfiguration) -> RequestBuilder<SemanticQueryPartnerConfiguration, SemanticQueryPartnerConfiguration.SemanticQueryPartnerConfigurationTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<SemanticQueryPartnerConfiguration, SemanticQueryPartnerConfiguration.SemanticQueryPartnerConfigurationTokenizer, UpdateTokenizer> = RequestBuilder<SemanticQueryPartnerConfiguration, SemanticQueryPartnerConfiguration.SemanticQueryPartnerConfigurationTokenizer, UpdateTokenizer>(service: "semanticquerypartnerconfiguration", action: "update")
			.setParam(key: "configuration", value: configuration)

		return request
	}
}
