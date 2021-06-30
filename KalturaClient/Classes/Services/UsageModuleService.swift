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

public final class UsageModuleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func usageModule<T: UsageModule.UsageModuleTokenizer>() -> T {
			return T(self.append("usageModule"))
		}
	}

	/**  Internal API !!! Insert new UsageModule  */
	public static func add(usageModule: UsageModule) -> RequestBuilder<UsageModule, UsageModule.UsageModuleTokenizer, AddTokenizer> {
		let request: RequestBuilder<UsageModule, UsageModule.UsageModuleTokenizer, AddTokenizer> = RequestBuilder<UsageModule, UsageModule.UsageModuleTokenizer, AddTokenizer>(service: "usagemodule", action: "add")
			.setParam(key: "usageModule", value: usageModule)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Internal API !!! Delete UsageModule  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "usagemodule", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Internal API !!! Returns the list of available usage module  */
	public static func list() -> RequestBuilder<UsageModuleListResponse, UsageModuleListResponse.UsageModuleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UsageModuleListResponse, UsageModuleListResponse.UsageModuleListResponseTokenizer, ListTokenizer> = RequestBuilder<UsageModuleListResponse, UsageModuleListResponse.UsageModuleListResponseTokenizer, ListTokenizer>(service: "usagemodule", action: "list")

		return request
	}
}
