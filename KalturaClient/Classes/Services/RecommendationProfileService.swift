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

public final class RecommendationProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var recommendationEngine: RecommendationProfile.RecommendationProfileTokenizer {
			get {
				return RecommendationProfile.RecommendationProfileTokenizer(self.append("recommendationEngine")) 
			}
		}
	}

	/**  Insert new recommendation engine for partner  */
	public static func add(recommendationEngine: RecommendationProfile) -> RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, AddTokenizer> = RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, AddTokenizer>(service: "recommendationprofile", action: "add")
			.setBody(key: "recommendationEngine", value: recommendationEngine)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete recommendation engine by recommendation engine id  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "recommendationprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GenerateSharedSecretTokenizer: ClientTokenizer  {
		
		public var recommendationEngineId: BaseTokenizedObject {
			get {
				return self.append("recommendationEngineId") 
			}
		}
	}

	/**  Generate recommendation engine  shared secret  */
	public static func generateSharedSecret(recommendationEngineId: Int) -> RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, GenerateSharedSecretTokenizer> {
		let request: RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, GenerateSharedSecretTokenizer> = RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, GenerateSharedSecretTokenizer>(service: "recommendationprofile", action: "generateSharedSecret")
			.setBody(key: "recommendationEngineId", value: recommendationEngineId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
	}

	/**  Returns all recommendation engines for partner  */
	public static func list() -> RequestBuilder<RecommendationProfileListResponse, RecommendationProfileListResponse.RecommendationProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<RecommendationProfileListResponse, RecommendationProfileListResponse.RecommendationProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<RecommendationProfileListResponse, RecommendationProfileListResponse.RecommendationProfileListResponseTokenizer, ListTokenizer>(service: "recommendationprofile", action: "list")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var recommendationEngineId: BaseTokenizedObject {
			get {
				return self.append("recommendationEngineId") 
			}
		}
		
		public var recommendationEngine: RecommendationProfile.RecommendationProfileTokenizer {
			get {
				return RecommendationProfile.RecommendationProfileTokenizer(self.append("recommendationEngine")) 
			}
		}
	}

	/**  Update recommendation engine details  */
	public static func update(recommendationEngineId: Int, recommendationEngine: RecommendationProfile) -> RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, UpdateTokenizer> = RequestBuilder<RecommendationProfile, RecommendationProfile.RecommendationProfileTokenizer, UpdateTokenizer>(service: "recommendationprofile", action: "update")
			.setBody(key: "recommendationEngineId", value: recommendationEngineId)
			.setBody(key: "recommendationEngine", value: recommendationEngine)

		return request
	}
}
