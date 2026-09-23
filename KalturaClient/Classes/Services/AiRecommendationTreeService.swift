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

public final class AiRecommendationTreeService{

	public class GetNextNodeAndRecommendationTokenizer: ClientTokenizer  {
		
		public var treeId: BaseTokenizedObject {
			get {
				return self.append("treeId") 
			}
		}
		
		public var answerId: BaseTokenizedObject {
			get {
				return self.append("answerId") 
			}
		}
		
		public var topQuestionId: BaseTokenizedObject {
			get {
				return self.append("topQuestionId") 
			}
		}
	}

	public static func getNextNodeAndRecommendation() -> RequestBuilder<TreeNextNodeResponse, TreeNextNodeResponse.TreeNextNodeResponseTokenizer, GetNextNodeAndRecommendationTokenizer> {
		return getNextNodeAndRecommendation(treeId: nil)
	}

	public static func getNextNodeAndRecommendation(treeId: String?) -> RequestBuilder<TreeNextNodeResponse, TreeNextNodeResponse.TreeNextNodeResponseTokenizer, GetNextNodeAndRecommendationTokenizer> {
		return getNextNodeAndRecommendation(treeId: treeId, answerId: nil)
	}

	public static func getNextNodeAndRecommendation(treeId: String?, answerId: String?) -> RequestBuilder<TreeNextNodeResponse, TreeNextNodeResponse.TreeNextNodeResponseTokenizer, GetNextNodeAndRecommendationTokenizer> {
		return getNextNodeAndRecommendation(treeId: treeId, answerId: answerId, topQuestionId: nil)
	}

	/**  Returns the next question, available answers, and content recommendations based
	  on the current path through the tree.  */
	public static func getNextNodeAndRecommendation(treeId: String?, answerId: String?, topQuestionId: String?) -> RequestBuilder<TreeNextNodeResponse, TreeNextNodeResponse.TreeNextNodeResponseTokenizer, GetNextNodeAndRecommendationTokenizer> {
		let request: RequestBuilder<TreeNextNodeResponse, TreeNextNodeResponse.TreeNextNodeResponseTokenizer, GetNextNodeAndRecommendationTokenizer> = RequestBuilder<TreeNextNodeResponse, TreeNextNodeResponse.TreeNextNodeResponseTokenizer, GetNextNodeAndRecommendationTokenizer>(service: "airecommendationtree", action: "getNextNodeAndRecommendation")
			.setParam(key: "treeId", value: treeId)
			.setParam(key: "answerId", value: answerId)
			.setParam(key: "topQuestionId", value: topQuestionId)

		return request
	}

	public class GetPartnerConfigTokenizer: ClientTokenizer  {
	}

	/**  Retrieves the current configuration settings for TV Genie for a specific
	  partner.  */
	public static func getPartnerConfig() -> RequestBuilder<AiRecommendationTreePartnerConfiguration, AiRecommendationTreePartnerConfiguration.AiRecommendationTreePartnerConfigurationTokenizer, GetPartnerConfigTokenizer> {
		let request: RequestBuilder<AiRecommendationTreePartnerConfiguration, AiRecommendationTreePartnerConfiguration.AiRecommendationTreePartnerConfigurationTokenizer, GetPartnerConfigTokenizer> = RequestBuilder<AiRecommendationTreePartnerConfiguration, AiRecommendationTreePartnerConfiguration.AiRecommendationTreePartnerConfigurationTokenizer, GetPartnerConfigTokenizer>(service: "airecommendationtree", action: "getPartnerConfig")

		return request
	}

	public class GetRecommendationWithNaturalTextTokenizer: ClientTokenizer  {
		
		public var naturalTextQuery: BaseTokenizedObject {
			get {
				return self.append("naturalTextQuery") 
			}
		}
		
		public var questionId: BaseTokenizedObject {
			get {
				return self.append("questionId") 
			}
		}
		
		public var treeId: BaseTokenizedObject {
			get {
				return self.append("treeId") 
			}
		}
	}

	public static func getRecommendationWithNaturalText(naturalTextQuery: String) -> RequestBuilder<TreeNaturalTextResponse, TreeNaturalTextResponse.TreeNaturalTextResponseTokenizer, GetRecommendationWithNaturalTextTokenizer> {
		return getRecommendationWithNaturalText(naturalTextQuery: naturalTextQuery, questionId: nil)
	}

	public static func getRecommendationWithNaturalText(naturalTextQuery: String, questionId: String?) -> RequestBuilder<TreeNaturalTextResponse, TreeNaturalTextResponse.TreeNaturalTextResponseTokenizer, GetRecommendationWithNaturalTextTokenizer> {
		return getRecommendationWithNaturalText(naturalTextQuery: naturalTextQuery, questionId: questionId, treeId: nil)
	}

	/**  Returns content recommendations based on natural language input.  */
	public static func getRecommendationWithNaturalText(naturalTextQuery: String, questionId: String?, treeId: String?) -> RequestBuilder<TreeNaturalTextResponse, TreeNaturalTextResponse.TreeNaturalTextResponseTokenizer, GetRecommendationWithNaturalTextTokenizer> {
		let request: RequestBuilder<TreeNaturalTextResponse, TreeNaturalTextResponse.TreeNaturalTextResponseTokenizer, GetRecommendationWithNaturalTextTokenizer> = RequestBuilder<TreeNaturalTextResponse, TreeNaturalTextResponse.TreeNaturalTextResponseTokenizer, GetRecommendationWithNaturalTextTokenizer>(service: "airecommendationtree", action: "getRecommendationWithNaturalText")
			.setParam(key: "naturalTextQuery", value: naturalTextQuery)
			.setParam(key: "questionId", value: questionId)
			.setParam(key: "treeId", value: treeId)

		return request
	}

	public class UpsertPartnerConfigTokenizer: ClientTokenizer  {
		
		public func configuration<T: AiRecommendationTreePartnerConfiguration.AiRecommendationTreePartnerConfigurationTokenizer>() -> T {
			return T(self.append("configuration"))
		}
	}

	/**  Updates the configuration settings for TV Genie on a per-partner basis.  */
	public static func upsertPartnerConfig(configuration: AiRecommendationTreePartnerConfiguration) -> RequestBuilder<AiRecommendationTreePartnerConfiguration, AiRecommendationTreePartnerConfiguration.AiRecommendationTreePartnerConfigurationTokenizer, UpsertPartnerConfigTokenizer> {
		let request: RequestBuilder<AiRecommendationTreePartnerConfiguration, AiRecommendationTreePartnerConfiguration.AiRecommendationTreePartnerConfigurationTokenizer, UpsertPartnerConfigTokenizer> = RequestBuilder<AiRecommendationTreePartnerConfiguration, AiRecommendationTreePartnerConfiguration.AiRecommendationTreePartnerConfigurationTokenizer, UpsertPartnerConfigTokenizer>(service: "airecommendationtree", action: "upsertPartnerConfig")
			.setParam(key: "configuration", value: configuration)

		return request
	}
}
