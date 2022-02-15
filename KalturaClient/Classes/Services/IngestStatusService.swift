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

public final class IngestStatusService{

	public class GetEpgListTokenizer: ClientTokenizer  {
		
		public func idsFilter<T: IngestByIdsFilter.IngestByIdsFilterTokenizer>() -> T {
			return T(self.append("idsFilter"))
		}
		
		public func filter<T: IngestByCompoundFilter.IngestByCompoundFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func getEpgList() -> RequestBuilder<IngestStatusEpgListResponse, IngestStatusEpgListResponse.IngestStatusEpgListResponseTokenizer, GetEpgListTokenizer> {
		return getEpgList(idsFilter: nil)
	}

	public static func getEpgList(idsFilter: IngestByIdsFilter?) -> RequestBuilder<IngestStatusEpgListResponse, IngestStatusEpgListResponse.IngestStatusEpgListResponseTokenizer, GetEpgListTokenizer> {
		return getEpgList(idsFilter: idsFilter, filter: nil)
	}

	public static func getEpgList(idsFilter: IngestByIdsFilter?, filter: IngestByCompoundFilter?) -> RequestBuilder<IngestStatusEpgListResponse, IngestStatusEpgListResponse.IngestStatusEpgListResponseTokenizer, GetEpgListTokenizer> {
		return getEpgList(idsFilter: idsFilter, filter: filter, pager: nil)
	}

	/**  Response with list of ingest jobs.  */
	public static func getEpgList(idsFilter: IngestByIdsFilter?, filter: IngestByCompoundFilter?, pager: FilterPager?) -> RequestBuilder<IngestStatusEpgListResponse, IngestStatusEpgListResponse.IngestStatusEpgListResponseTokenizer, GetEpgListTokenizer> {
		let request: RequestBuilder<IngestStatusEpgListResponse, IngestStatusEpgListResponse.IngestStatusEpgListResponseTokenizer, GetEpgListTokenizer> = RequestBuilder<IngestStatusEpgListResponse, IngestStatusEpgListResponse.IngestStatusEpgListResponseTokenizer, GetEpgListTokenizer>(service: "ingeststatus", action: "getEpgList")
			.setParam(key: "idsFilter", value: idsFilter)
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class GetPartnerConfigurationTokenizer: ClientTokenizer  {
	}

	/**  Returns Core Ingest service partner configurations  */
	public static func getPartnerConfiguration() -> RequestBuilder<IngestStatusPartnerConfiguration, IngestStatusPartnerConfiguration.IngestStatusPartnerConfigurationTokenizer, GetPartnerConfigurationTokenizer> {
		let request: RequestBuilder<IngestStatusPartnerConfiguration, IngestStatusPartnerConfiguration.IngestStatusPartnerConfigurationTokenizer, GetPartnerConfigurationTokenizer> = RequestBuilder<IngestStatusPartnerConfiguration, IngestStatusPartnerConfiguration.IngestStatusPartnerConfigurationTokenizer, GetPartnerConfigurationTokenizer>(service: "ingeststatus", action: "getPartnerConfiguration")

		return request
	}

	public class UpdatePartnerConfigurationTokenizer: ClientTokenizer  {
		
		public func config<T: IngestStatusPartnerConfiguration.IngestStatusPartnerConfigurationTokenizer>() -> T {
			return T(self.append("config"))
		}
	}

	/**  Returns Core Ingest service partner configurations  */
	public static func updatePartnerConfiguration(config: IngestStatusPartnerConfiguration) -> NullRequestBuilder<UpdatePartnerConfigurationTokenizer> {
		let request: NullRequestBuilder<UpdatePartnerConfigurationTokenizer> = NullRequestBuilder<UpdatePartnerConfigurationTokenizer>(service: "ingeststatus", action: "updatePartnerConfiguration")
			.setParam(key: "config", value: config)

		return request
	}
}