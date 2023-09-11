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

public final class BulkUploadStatisticsService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var bulkObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("bulkObjectTypeEqual") 
			}
		}
		
		public var createDateGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createDateGreaterThanOrEqual") 
			}
		}
	}

	/**  Get BulkUploadStatistics count summary by status  */
	public static func get(bulkObjectTypeEqual: String, createDateGreaterThanOrEqual: Int64) -> RequestBuilder<BulkUploadStatistics, BulkUploadStatistics.BulkUploadStatisticsTokenizer, GetTokenizer> {
		let request: RequestBuilder<BulkUploadStatistics, BulkUploadStatistics.BulkUploadStatisticsTokenizer, GetTokenizer> = RequestBuilder<BulkUploadStatistics, BulkUploadStatistics.BulkUploadStatisticsTokenizer, GetTokenizer>(service: "bulkuploadstatistics", action: "get")
			.setParam(key: "bulkObjectTypeEqual", value: bulkObjectTypeEqual)
			.setParam(key: "createDateGreaterThanOrEqual", value: createDateGreaterThanOrEqual)

		return request
	}
}
