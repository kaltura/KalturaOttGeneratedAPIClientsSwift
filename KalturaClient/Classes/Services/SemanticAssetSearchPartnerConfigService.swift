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

public final class SemanticAssetSearchPartnerConfigService{

	public class GetFilteringConditionTokenizer: ClientTokenizer  {
	}

	/**  Retrieve the filtering condition configuration for the partner.  */
	public static func getFilteringCondition() -> RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, GetFilteringConditionTokenizer> {
		let request: RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, GetFilteringConditionTokenizer> = RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, GetFilteringConditionTokenizer>(service: "semanticassetsearchpartnerconfig", action: "getFilteringCondition")

		return request
	}

	public class GetProgramFilteringConditionTokenizer: ClientTokenizer  {
	}

	/**  Retrieve the filtering condition configuration for program assets.  */
	public static func getProgramFilteringCondition() -> RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, GetProgramFilteringConditionTokenizer> {
		let request: RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, GetProgramFilteringConditionTokenizer> = RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, GetProgramFilteringConditionTokenizer>(service: "semanticassetsearchpartnerconfig", action: "getProgramFilteringCondition")

		return request
	}

	public class GetProgramSearchableAttributesTokenizer: ClientTokenizer  {
	}

	/**  Retrieve the current program field configurations for semantic search.  */
	public static func getProgramSearchableAttributes() -> RequestBuilder<ProgramSearchableAttributes, ProgramSearchableAttributes.ProgramSearchableAttributesTokenizer, GetProgramSearchableAttributesTokenizer> {
		let request: RequestBuilder<ProgramSearchableAttributes, ProgramSearchableAttributes.ProgramSearchableAttributesTokenizer, GetProgramSearchableAttributesTokenizer> = RequestBuilder<ProgramSearchableAttributes, ProgramSearchableAttributes.ProgramSearchableAttributesTokenizer, GetProgramSearchableAttributesTokenizer>(service: "semanticassetsearchpartnerconfig", action: "getProgramSearchableAttributes")

		return request
	}

	public class GetSearchableAttributesTokenizer: ClientTokenizer  {
		
		public var assetStructId: BaseTokenizedObject {
			get {
				return self.append("assetStructId") 
			}
		}
	}

	/**  Retrieve the current field configurations for semantic search.  */
	public static func getSearchableAttributes(assetStructId: Int) -> RequestBuilder<SearchableAttributes, SearchableAttributes.SearchableAttributesTokenizer, GetSearchableAttributesTokenizer> {
		let request: RequestBuilder<SearchableAttributes, SearchableAttributes.SearchableAttributesTokenizer, GetSearchableAttributesTokenizer> = RequestBuilder<SearchableAttributes, SearchableAttributes.SearchableAttributesTokenizer, GetSearchableAttributesTokenizer>(service: "semanticassetsearchpartnerconfig", action: "getSearchableAttributes")
			.setParam(key: "assetStructId", value: assetStructId)

		return request
	}

	public class UpsertFilteringConditionTokenizer: ClientTokenizer  {
		
		public func filteringCondition<T: FilteringCondition.FilteringConditionTokenizer>() -> T {
			return T(self.append("filteringCondition"))
		}
	}

	/**  Update rule that controls embedding generation and search behavior.  */
	public static func upsertFilteringCondition(filteringCondition: FilteringCondition) -> RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, UpsertFilteringConditionTokenizer> {
		let request: RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, UpsertFilteringConditionTokenizer> = RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, UpsertFilteringConditionTokenizer>(service: "semanticassetsearchpartnerconfig", action: "upsertFilteringCondition")
			.setParam(key: "filteringCondition", value: filteringCondition)

		return request
	}

	public class UpsertProgramFilteringConditionTokenizer: ClientTokenizer  {
		
		public func filteringCondition<T: FilteringCondition.FilteringConditionTokenizer>() -> T {
			return T(self.append("filteringCondition"))
		}
	}

	/**  Update rule that controls embedding generation and search behavior for program
	  assets.  */
	public static func upsertProgramFilteringCondition(filteringCondition: FilteringCondition) -> RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, UpsertProgramFilteringConditionTokenizer> {
		let request: RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, UpsertProgramFilteringConditionTokenizer> = RequestBuilder<FilteringCondition, FilteringCondition.FilteringConditionTokenizer, UpsertProgramFilteringConditionTokenizer>(service: "semanticassetsearchpartnerconfig", action: "upsertProgramFilteringCondition")
			.setParam(key: "filteringCondition", value: filteringCondition)

		return request
	}

	public class UpsertProgramSearchableAttributesTokenizer: ClientTokenizer  {
		
		public func programAttributes<T: ProgramSearchableAttributes.ProgramSearchableAttributesTokenizer>() -> T {
			return T(self.append("programAttributes"))
		}
	}

	/**  Update which fields should be included in semantic search for program assets.  */
	public static func upsertProgramSearchableAttributes(programAttributes: ProgramSearchableAttributes) -> RequestBuilder<ProgramSearchableAttributes, ProgramSearchableAttributes.ProgramSearchableAttributesTokenizer, UpsertProgramSearchableAttributesTokenizer> {
		let request: RequestBuilder<ProgramSearchableAttributes, ProgramSearchableAttributes.ProgramSearchableAttributesTokenizer, UpsertProgramSearchableAttributesTokenizer> = RequestBuilder<ProgramSearchableAttributes, ProgramSearchableAttributes.ProgramSearchableAttributesTokenizer, UpsertProgramSearchableAttributesTokenizer>(service: "semanticassetsearchpartnerconfig", action: "upsertProgramSearchableAttributes")
			.setParam(key: "programAttributes", value: programAttributes)

		return request
	}

	public class UpsertSearchableAttributesTokenizer: ClientTokenizer  {
		
		public func attributes<T: SearchableAttributes.SearchableAttributesTokenizer>() -> T {
			return T(self.append("attributes"))
		}
	}

	/**  Update which fields should be included in semantic search for specific asset
	  types.  */
	public static func upsertSearchableAttributes(attributes: SearchableAttributes) -> RequestBuilder<SearchableAttributes, SearchableAttributes.SearchableAttributesTokenizer, UpsertSearchableAttributesTokenizer> {
		let request: RequestBuilder<SearchableAttributes, SearchableAttributes.SearchableAttributesTokenizer, UpsertSearchableAttributesTokenizer> = RequestBuilder<SearchableAttributes, SearchableAttributes.SearchableAttributesTokenizer, UpsertSearchableAttributesTokenizer>(service: "semanticassetsearchpartnerconfig", action: "upsertSearchableAttributes")
			.setParam(key: "attributes", value: attributes)

		return request
	}
}
