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

public final class RatioService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func ratio<T: Ratio.RatioTokenizer>() -> T {
			return T(self.append("ratio"))
		}
	}

	/**  Add new group ratio  */
	public static func add(ratio: Ratio) -> RequestBuilder<Ratio, Ratio.RatioTokenizer, AddTokenizer> {
		let request: RequestBuilder<Ratio, Ratio.RatioTokenizer, AddTokenizer> = RequestBuilder<Ratio, Ratio.RatioTokenizer, AddTokenizer>(service: "ratio", action: "add")
			.setParam(key: "ratio", value: ratio)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Get the list of available ratios  */
	public static func list() -> RequestBuilder<RatioListResponse, RatioListResponse.RatioListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<RatioListResponse, RatioListResponse.RatioListResponseTokenizer, ListTokenizer> = RequestBuilder<RatioListResponse, RatioListResponse.RatioListResponseTokenizer, ListTokenizer>(service: "ratio", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func ratio<T: Ratio.RatioTokenizer>() -> T {
			return T(self.append("ratio"))
		}
	}

	/**  Update group ratio&amp;#39;s PrecisionPrecentage  */
	public static func update(id: Int64, ratio: Ratio) -> RequestBuilder<Ratio, Ratio.RatioTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Ratio, Ratio.RatioTokenizer, UpdateTokenizer> = RequestBuilder<Ratio, Ratio.RatioTokenizer, UpdateTokenizer>(service: "ratio", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "ratio", value: ratio)

		return request
	}
}
