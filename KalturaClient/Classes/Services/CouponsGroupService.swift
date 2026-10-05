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

public final class CouponsGroupService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func couponsGroup<T: CouponsGroup.CouponsGroupTokenizer>() -> T {
			return T(self.append("couponsGroup"))
		}
	}

	/**  Add coupons group  */
	public static func add(couponsGroup: CouponsGroup) -> RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, AddTokenizer> {
		let request: RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, AddTokenizer> = RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, AddTokenizer>(service: "couponsgroup", action: "add")
			.setParam(key: "couponsGroup", value: couponsGroup)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a coupons group  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "couponsgroup", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GenerateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func couponGenerationOptions<T: CouponGenerationOptions.CouponGenerationOptionsTokenizer>() -> T {
			return T(self.append("couponGenerationOptions"))
		}
	}

	/**  Generate a coupon  */
	public static func generate(id: Int64, couponGenerationOptions: CouponGenerationOptions) -> RequestBuilder<StringValueArray, StringValueArray.StringValueArrayTokenizer, GenerateTokenizer> {
		let request: RequestBuilder<StringValueArray, StringValueArray.StringValueArrayTokenizer, GenerateTokenizer> = RequestBuilder<StringValueArray, StringValueArray.StringValueArrayTokenizer, GenerateTokenizer>(service: "couponsgroup", action: "generate")
			.setParam(key: "id", value: id)
			.setParam(key: "couponGenerationOptions", value: couponGenerationOptions)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Returns information about coupons group  */
	public static func get(id: Int64) -> RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, GetTokenizer> {
		let request: RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, GetTokenizer> = RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, GetTokenizer>(service: "couponsgroup", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns information about partner coupons groups  */
	public static func list() -> RequestBuilder<CouponsGroupListResponse, CouponsGroupListResponse.CouponsGroupListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CouponsGroupListResponse, CouponsGroupListResponse.CouponsGroupListResponseTokenizer, ListTokenizer> = RequestBuilder<CouponsGroupListResponse, CouponsGroupListResponse.CouponsGroupListResponseTokenizer, ListTokenizer>(service: "couponsgroup", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func couponsGroup<T: CouponsGroup.CouponsGroupTokenizer>() -> T {
			return T(self.append("couponsGroup"))
		}
	}

	/**  Update coupons group  */
	public static func update(id: Int64, couponsGroup: CouponsGroup) -> RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, UpdateTokenizer> = RequestBuilder<CouponsGroup, CouponsGroup.CouponsGroupTokenizer, UpdateTokenizer>(service: "couponsgroup", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "couponsGroup", value: couponsGroup)

		return request
	}
}
