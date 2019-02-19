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

public final class ReportService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	/**  Return a device configuration retrieval log request for a specific device.  */
	public static func get(udid: String) -> RequestBuilder<Report, Report.ReportTokenizer, GetTokenizer> {
		let request: RequestBuilder<Report, Report.ReportTokenizer, GetTokenizer> = RequestBuilder<Report, Report.ReportTokenizer, GetTokenizer>(service: "report", action: "get")
			.setParam(key: "udid", value: udid)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ReportFilter.ReportFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: ReportFilter) -> RequestBuilder<ReportListResponse, ReportListResponse.ReportListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Return device configurations retrieval log. Supports paging and can be filtered
	  with the parameter &amp;quot;FromData&amp;quot;.  */
	public static func list(filter: ReportFilter, pager: FilterPager?) -> RequestBuilder<ReportListResponse, ReportListResponse.ReportListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ReportListResponse, ReportListResponse.ReportListResponseTokenizer, ListTokenizer> = RequestBuilder<ReportListResponse, ReportListResponse.ReportListResponseTokenizer, ListTokenizer>(service: "report", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
