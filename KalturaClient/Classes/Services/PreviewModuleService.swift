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

public final class PreviewModuleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func previewModule<T: PreviewModule.PreviewModuleTokenizer>() -> T {
			return T(self.append("previewModule"))
		}
	}

	/**  Insert new PreviewModule for partner  */
	public static func add(previewModule: PreviewModule) -> RequestBuilder<PreviewModule, PreviewModule.PreviewModuleTokenizer, AddTokenizer> {
		let request: RequestBuilder<PreviewModule, PreviewModule.PreviewModuleTokenizer, AddTokenizer> = RequestBuilder<PreviewModule, PreviewModule.PreviewModuleTokenizer, AddTokenizer>(service: "previewmodule", action: "add")
			.setParam(key: "previewModule", value: previewModule)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Internal API !!! Delete PreviewModule  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "previewmodule", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PreviewModuleFilter.PreviewModuleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<PreviewModuleListResponse, PreviewModuleListResponse.PreviewModuleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns all PreviewModule  */
	public static func list(filter: PreviewModuleFilter?) -> RequestBuilder<PreviewModuleListResponse, PreviewModuleListResponse.PreviewModuleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PreviewModuleListResponse, PreviewModuleListResponse.PreviewModuleListResponseTokenizer, ListTokenizer> = RequestBuilder<PreviewModuleListResponse, PreviewModuleListResponse.PreviewModuleListResponseTokenizer, ListTokenizer>(service: "previewmodule", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func previewModule<T: PreviewModule.PreviewModuleTokenizer>() -> T {
			return T(self.append("previewModule"))
		}
	}

	/**  Update PreviewModule  */
	public static func update(id: Int64, previewModule: PreviewModule) -> RequestBuilder<PreviewModule, PreviewModule.PreviewModuleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PreviewModule, PreviewModule.PreviewModuleTokenizer, UpdateTokenizer> = RequestBuilder<PreviewModule, PreviewModule.PreviewModuleTokenizer, UpdateTokenizer>(service: "previewmodule", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "previewModule", value: previewModule)

		return request
	}
}
