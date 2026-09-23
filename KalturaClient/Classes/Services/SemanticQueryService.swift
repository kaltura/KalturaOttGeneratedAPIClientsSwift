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

public final class SemanticQueryService{

	public class GenerateTokenizer: ClientTokenizer  {
		
		public func query<T: GenerateSemanticQuery.GenerateSemanticQueryTokenizer>() -> T {
			return T(self.append("query"))
		}
	}

	/**  Generates a title and semantic sub-queries.  */
	public static func generate(query: GenerateSemanticQuery) -> RequestBuilder<SemanticQuery, SemanticQuery.SemanticQueryTokenizer, GenerateTokenizer> {
		let request: RequestBuilder<SemanticQuery, SemanticQuery.SemanticQueryTokenizer, GenerateTokenizer> = RequestBuilder<SemanticQuery, SemanticQuery.SemanticQueryTokenizer, GenerateTokenizer>(service: "semanticquery", action: "generate")
			.setParam(key: "query", value: query)

		return request
	}
}
