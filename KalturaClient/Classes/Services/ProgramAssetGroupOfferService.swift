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

public final class ProgramAssetGroupOfferService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func programAssetGroupOffer<T: ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer>() -> T {
			return T(self.append("programAssetGroupOffer"))
		}
	}

	/**  Insert new ProgramAssetGroupOffer for partner  */
	public static func add(programAssetGroupOffer: ProgramAssetGroupOffer) -> RequestBuilder<ProgramAssetGroupOffer, ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer, AddTokenizer> {
		let request: RequestBuilder<ProgramAssetGroupOffer, ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer, AddTokenizer> = RequestBuilder<ProgramAssetGroupOffer, ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer, AddTokenizer>(service: "programassetgroupoffer", action: "add")
			.setParam(key: "programAssetGroupOffer", value: programAssetGroupOffer)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete programAssetGroupOffer  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "programassetgroupoffer", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ProgramAssetGroupOfferFilter.ProgramAssetGroupOfferFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ProgramAssetGroupOfferListResponse, ProgramAssetGroupOfferListResponse.ProgramAssetGroupOfferListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ProgramAssetGroupOfferFilter?) -> RequestBuilder<ProgramAssetGroupOfferListResponse, ProgramAssetGroupOfferListResponse.ProgramAssetGroupOfferListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Gets all Program asset group offer  */
	public static func list(filter: ProgramAssetGroupOfferFilter?, pager: FilterPager?) -> RequestBuilder<ProgramAssetGroupOfferListResponse, ProgramAssetGroupOfferListResponse.ProgramAssetGroupOfferListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ProgramAssetGroupOfferListResponse, ProgramAssetGroupOfferListResponse.ProgramAssetGroupOfferListResponseTokenizer, ListTokenizer> = RequestBuilder<ProgramAssetGroupOfferListResponse, ProgramAssetGroupOfferListResponse.ProgramAssetGroupOfferListResponseTokenizer, ListTokenizer>(service: "programassetgroupoffer", action: "list")
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
		
		public func programAssetGroupOffer<T: ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer>() -> T {
			return T(self.append("programAssetGroupOffer"))
		}
	}

	/**  Update ProgramAssetGroupOffer  */
	public static func update(id: Int64, programAssetGroupOffer: ProgramAssetGroupOffer) -> RequestBuilder<ProgramAssetGroupOffer, ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ProgramAssetGroupOffer, ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer, UpdateTokenizer> = RequestBuilder<ProgramAssetGroupOffer, ProgramAssetGroupOffer.ProgramAssetGroupOfferTokenizer, UpdateTokenizer>(service: "programassetgroupoffer", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "programAssetGroupOffer", value: programAssetGroupOffer)

		return request
	}
}
