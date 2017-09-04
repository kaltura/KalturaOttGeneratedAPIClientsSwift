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
// Copyright (C) 2006-2017  Kaltura Inc.
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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class ExportTaskService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var task: ExportTask.ExportTaskTokenizer {
			get {
				return ExportTask.ExportTaskTokenizer(self.append("task")) 
			}
		}
	}

	/**  Adds a new bulk export task  */
	public static func add(task: ExportTask) -> RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, AddTokenizer> {
		let request: RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, AddTokenizer> = RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, AddTokenizer>(service: "exporttask", action: "add")
			.setBody(key: "task", value: task)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Deletes an existing bulk export task by task identifier  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "exporttask", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Gets an existing bulk export task by task identifier  */
	public static func get(id: Int64) -> RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, GetTokenizer> {
		let request: RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, GetTokenizer> = RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, GetTokenizer>(service: "exporttask", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: ExportTaskFilter.ExportTaskFilterTokenizer {
			get {
				return ExportTaskFilter.ExportTaskFilterTokenizer(self.append("filter")) 
			}
		}
	}

	public static func list() -> RequestBuilder<ExportTaskListResponse, ExportTaskListResponse.ExportTaskListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Returns bulk export tasks by tasks identifiers  */
	public static func list(filter: ExportTaskFilter?) -> RequestBuilder<ExportTaskListResponse, ExportTaskListResponse.ExportTaskListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ExportTaskListResponse, ExportTaskListResponse.ExportTaskListResponseTokenizer, ListTokenizer> = RequestBuilder<ExportTaskListResponse, ExportTaskListResponse.ExportTaskListResponseTokenizer, ListTokenizer>(service: "exporttask", action: "list")
			.setBody(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var task: ExportTask.ExportTaskTokenizer {
			get {
				return ExportTask.ExportTaskTokenizer(self.append("task")) 
			}
		}
	}

	/**  Updates an existing bulk export task by task identifier  */
	public static func update(id: Int64, task: ExportTask) -> RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, UpdateTokenizer> = RequestBuilder<ExportTask, ExportTask.ExportTaskTokenizer, UpdateTokenizer>(service: "exporttask", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "task", value: task)

		return request
	}
}
