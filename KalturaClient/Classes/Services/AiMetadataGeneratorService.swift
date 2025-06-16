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

public final class AiMetadataGeneratorService{

	public class GenerateMetadataBySubtitlesTokenizer: ClientTokenizer  {
		
		public var subtitlesFileId: BaseTokenizedObject {
			get {
				return self.append("subtitlesFileId") 
			}
		}
		
		public var externalAssetIds: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("externalAssetIds"))
			} 
		}
	}

	public static func generateMetadataBySubtitles(subtitlesFileId: Int64) -> RequestBuilder<GenerateMetadataBySubtitlesJob, GenerateMetadataBySubtitlesJob.GenerateMetadataBySubtitlesJobTokenizer, GenerateMetadataBySubtitlesTokenizer> {
		return generateMetadataBySubtitles(subtitlesFileId: subtitlesFileId, externalAssetIds: nil)
	}

	/**  Start metadata generation process based on subtitles.  */
	public static func generateMetadataBySubtitles(subtitlesFileId: Int64, externalAssetIds: Array<StringValue>?) -> RequestBuilder<GenerateMetadataBySubtitlesJob, GenerateMetadataBySubtitlesJob.GenerateMetadataBySubtitlesJobTokenizer, GenerateMetadataBySubtitlesTokenizer> {
		let request: RequestBuilder<GenerateMetadataBySubtitlesJob, GenerateMetadataBySubtitlesJob.GenerateMetadataBySubtitlesJobTokenizer, GenerateMetadataBySubtitlesTokenizer> = RequestBuilder<GenerateMetadataBySubtitlesJob, GenerateMetadataBySubtitlesJob.GenerateMetadataBySubtitlesJobTokenizer, GenerateMetadataBySubtitlesTokenizer>(service: "aimetadatagenerator", action: "generateMetadataBySubtitles")
			.setParam(key: "subtitlesFileId", value: subtitlesFileId)
			.setParam(key: "externalAssetIds", value: externalAssetIds)

		return request
	}

	public class GetGeneratedMetadataTokenizer: ClientTokenizer  {
		
		public var jobId: BaseTokenizedObject {
			get {
				return self.append("jobId") 
			}
		}
	}

	/**  Retrieve the generated metadata  */
	public static func getGeneratedMetadata(jobId: Int64) -> RequestBuilder<GenerateMetadataResult, GenerateMetadataResult.GenerateMetadataResultTokenizer, GetGeneratedMetadataTokenizer> {
		let request: RequestBuilder<GenerateMetadataResult, GenerateMetadataResult.GenerateMetadataResultTokenizer, GetGeneratedMetadataTokenizer> = RequestBuilder<GenerateMetadataResult, GenerateMetadataResult.GenerateMetadataResultTokenizer, GetGeneratedMetadataTokenizer>(service: "aimetadatagenerator", action: "getGeneratedMetadata")
			.setParam(key: "jobId", value: jobId)

		return request
	}

	public class GetGenerateMetadataJobTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get a metadata generation job.  */
	public static func getGenerateMetadataJob(id: Int64) -> RequestBuilder<GenerateMetadataBySubtitlesJob, GenerateMetadataBySubtitlesJob.GenerateMetadataBySubtitlesJobTokenizer, GetGenerateMetadataJobTokenizer> {
		let request: RequestBuilder<GenerateMetadataBySubtitlesJob, GenerateMetadataBySubtitlesJob.GenerateMetadataBySubtitlesJobTokenizer, GetGenerateMetadataJobTokenizer> = RequestBuilder<GenerateMetadataBySubtitlesJob, GenerateMetadataBySubtitlesJob.GenerateMetadataBySubtitlesJobTokenizer, GetGenerateMetadataJobTokenizer>(service: "aimetadatagenerator", action: "getGenerateMetadataJob")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetMetadataFieldDefinitionsTokenizer: ClientTokenizer  {
	}

	/**  Get metadata mapping structure and available generated metadata fields.  */
	public static func getMetadataFieldDefinitions() -> RequestBuilder<MetaFieldNameMap, MetaFieldNameMap.MetaFieldNameMapTokenizer, GetMetadataFieldDefinitionsTokenizer> {
		let request: RequestBuilder<MetaFieldNameMap, MetaFieldNameMap.MetaFieldNameMapTokenizer, GetMetadataFieldDefinitionsTokenizer> = RequestBuilder<MetaFieldNameMap, MetaFieldNameMap.MetaFieldNameMapTokenizer, GetMetadataFieldDefinitionsTokenizer>(service: "aimetadatagenerator", action: "getMetadataFieldDefinitions")

		return request
	}

	public class GetPartnerConfigurationTokenizer: ClientTokenizer  {
	}

	/**  Get the metadata generation configuration.  */
	public static func getPartnerConfiguration() -> RequestBuilder<AiMetadataGeneratorConfiguration, AiMetadataGeneratorConfiguration.AiMetadataGeneratorConfigurationTokenizer, GetPartnerConfigurationTokenizer> {
		let request: RequestBuilder<AiMetadataGeneratorConfiguration, AiMetadataGeneratorConfiguration.AiMetadataGeneratorConfigurationTokenizer, GetPartnerConfigurationTokenizer> = RequestBuilder<AiMetadataGeneratorConfiguration, AiMetadataGeneratorConfiguration.AiMetadataGeneratorConfigurationTokenizer, GetPartnerConfigurationTokenizer>(service: "aimetadatagenerator", action: "getPartnerConfiguration")

		return request
	}

	public class UpdatePartnerConfigurationTokenizer: ClientTokenizer  {
		
		public func configuration<T: AiMetadataGeneratorConfiguration.AiMetadataGeneratorConfigurationTokenizer>() -> T {
			return T(self.append("configuration"))
		}
	}

	/**  Update/set the metadata generation configuration  */
	public static func updatePartnerConfiguration(configuration: AiMetadataGeneratorConfiguration) -> RequestBuilder<AiMetadataGeneratorConfiguration, AiMetadataGeneratorConfiguration.AiMetadataGeneratorConfigurationTokenizer, UpdatePartnerConfigurationTokenizer> {
		let request: RequestBuilder<AiMetadataGeneratorConfiguration, AiMetadataGeneratorConfiguration.AiMetadataGeneratorConfigurationTokenizer, UpdatePartnerConfigurationTokenizer> = RequestBuilder<AiMetadataGeneratorConfiguration, AiMetadataGeneratorConfiguration.AiMetadataGeneratorConfigurationTokenizer, UpdatePartnerConfigurationTokenizer>(service: "aimetadatagenerator", action: "updatePartnerConfiguration")
			.setParam(key: "configuration", value: configuration)

		return request
	}
}
