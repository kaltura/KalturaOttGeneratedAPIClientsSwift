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

public final class PpvService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func ppv<T: Ppv.PpvTokenizer>() -> T {
			return T(self.append("ppv"))
		}
	}

	/**  Add new ppv  */
	public static func add(ppv: Ppv) -> RequestBuilder<Ppv, Ppv.PpvTokenizer, AddTokenizer> {
		let request: RequestBuilder<Ppv, Ppv.PpvTokenizer, AddTokenizer> = RequestBuilder<Ppv, Ppv.PpvTokenizer, AddTokenizer>(service: "ppv", action: "add")
			.setParam(key: "ppv", value: ppv)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Ppv  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "ppv", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Returns ppv object by internal identifier  */
	public static func get(id: Int64) -> RequestBuilder<Ppv, Ppv.PpvTokenizer, GetTokenizer> {
		let request: RequestBuilder<Ppv, Ppv.PpvTokenizer, GetTokenizer> = RequestBuilder<Ppv, Ppv.PpvTokenizer, GetTokenizer>(service: "ppv", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PpvFilter.PpvFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<PpvListResponse, PpvListResponse.PpvListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: PpvFilter?) -> RequestBuilder<PpvListResponse, PpvListResponse.PpvListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Returns all ppv objects  */
	public static func list(filter: PpvFilter?, pager: FilterPager?) -> RequestBuilder<PpvListResponse, PpvListResponse.PpvListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PpvListResponse, PpvListResponse.PpvListResponseTokenizer, ListTokenizer> = RequestBuilder<PpvListResponse, PpvListResponse.PpvListResponseTokenizer, ListTokenizer>(service: "ppv", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func ppv<T: Ppv.PpvTokenizer>() -> T {
			return T(self.append("ppv"))
		}
	}

	/**  Update ppv  */
	public static func update(id: Int, ppv: Ppv) -> RequestBuilder<Ppv, Ppv.PpvTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Ppv, Ppv.PpvTokenizer, UpdateTokenizer> = RequestBuilder<Ppv, Ppv.PpvTokenizer, UpdateTokenizer>(service: "ppv", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "ppv", value: ppv)

		return request
	}
}
