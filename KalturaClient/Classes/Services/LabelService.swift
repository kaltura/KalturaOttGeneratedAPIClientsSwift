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

public final class LabelService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func label<T: Label.LabelTokenizer>() -> T {
			return T(self.append("label"))
		}
	}

	/**  Create a new label associated with a predefined entity attribute. Currently
	  supports only labels on KalturaMediaFile.  */
	public static func add(label: Label) -> RequestBuilder<Label, Label.LabelTokenizer, AddTokenizer> {
		let request: RequestBuilder<Label, Label.LabelTokenizer, AddTokenizer> = RequestBuilder<Label, Label.LabelTokenizer, AddTokenizer>(service: "label", action: "add")
			.setParam(key: "label", value: label)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Deletes the existing label by its identifier.  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "label", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: LabelFilter.LabelFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: LabelFilter) -> RequestBuilder<LabelListResponse, LabelListResponse.LabelListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Gets list of labels which meet the filter criteria.  */
	public static func list(filter: LabelFilter, pager: FilterPager?) -> RequestBuilder<LabelListResponse, LabelListResponse.LabelListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<LabelListResponse, LabelListResponse.LabelListResponseTokenizer, ListTokenizer> = RequestBuilder<LabelListResponse, LabelListResponse.LabelListResponseTokenizer, ListTokenizer>(service: "label", action: "list")
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
		
		public func label<T: Label.LabelTokenizer>() -> T {
			return T(self.append("label"))
		}
	}

	/**  Updates the existing label with a new value.  */
	public static func update(id: Int64, label: Label) -> RequestBuilder<Label, Label.LabelTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Label, Label.LabelTokenizer, UpdateTokenizer> = RequestBuilder<Label, Label.LabelTokenizer, UpdateTokenizer>(service: "label", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "label", value: label)

		return request
	}
}
