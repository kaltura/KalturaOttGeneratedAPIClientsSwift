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

	public class GenerateMetadataByDescriptionTokenizer: ClientTokenizer  {
		
		public func generateMetadataByDescription_<T: GenerateMetadataByDescription.GenerateMetadataByDescriptionTokenizer>() -> T {
			return T(self.append("generateMetadataByDescription_"))
		}
	}

	/**  Initiate the process of metadata generation based on existing asset description
	  metadata.              The service will analyze the asset&amp;#39;s description
	  and genre metadata using AI/LLM to generate              additional enriched
	  metadata fields including enhanced genre classifications, sentiment analysis,   
	            and relevant keywords. This method is useful for enriching assets that
	  already have basic              description metadata but need additional
	  AI-generated metadata fields.  */
	public static func generateMetadataByDescription(generateMetadataByDescription_: GenerateMetadataByDescription) -> RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateMetadataByDescriptionTokenizer> {
		let request: RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateMetadataByDescriptionTokenizer> = RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateMetadataByDescriptionTokenizer>(service: "aimetadatagenerator", action: "generateMetadataByDescription")
			.setParam(key: "generateMetadataByDescription", value: generateMetadataByDescription_)

		return request
	}

	public class GenerateMetadataBySubtitlesTokenizer: ClientTokenizer  {
		
		public func generateMetadataBySubtitles_<T: GenerateMetadataBySubtitles.GenerateMetadataBySubtitlesTokenizer>() -> T {
			return T(self.append("generateMetadataBySubtitles_"))
		}
	}

	/**  Initiate the process of metadata generation based on the subtitles file.        
	       The subtitles file must be previously uploaded using the
	  subtitles.uploadFile service.              The service will analyze the subtitle
	  content using AI/LLM to generate enriched metadata including              genre,
	  description, keywords, sentiment analysis, and other metadata fields.  */
	public static func generateMetadataBySubtitles(generateMetadataBySubtitles_: GenerateMetadataBySubtitles) -> RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateMetadataBySubtitlesTokenizer> {
		let request: RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateMetadataBySubtitlesTokenizer> = RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateMetadataBySubtitlesTokenizer>(service: "aimetadatagenerator", action: "generateMetadataBySubtitles")
			.setParam(key: "generateMetadataBySubtitles", value: generateMetadataBySubtitles_)

		return request
	}

	public class GenerateProgramMetadataByDescriptionTokenizer: ClientTokenizer  {
		
		public func generateProgramMetadataByDescription_<T: GenerateProgramMetadatasByDescription.GenerateProgramMetadatasByDescriptionTokenizer>() -> T {
			return T(self.append("generateProgramMetadataByDescription_"))
		}
	}

	/**  Initiate the process of metadata generation for Program assets based on existing
	  asset description metadata.              The service will analyze the
	  program&amp;#39;s description and genre metadata using AI/LLM to generate       
	        additional enriched metadata fields. This method is specifically designed
	  for Program/EPG assets              and supports CRID-based uniqueness,
	  regeneration options, and configurable overwrite behavior.              Programs
	  without a CRID are out of scope for this feature.  */
	public static func generateProgramMetadataByDescription(generateProgramMetadataByDescription_: GenerateProgramMetadatasByDescription) -> RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateProgramMetadataByDescriptionTokenizer> {
		let request: RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateProgramMetadataByDescriptionTokenizer> = RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GenerateProgramMetadataByDescriptionTokenizer>(service: "aimetadatagenerator", action: "generateProgramMetadataByDescription")
			.setParam(key: "generateProgramMetadataByDescription", value: generateProgramMetadataByDescription_)

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
	public static func getGenerateMetadataJob(id: Int64) -> RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GetGenerateMetadataJobTokenizer> {
		let request: RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GetGenerateMetadataJobTokenizer> = RequestBuilder<GenerateMetadataJob, GenerateMetadataJob.GenerateMetadataJobTokenizer, GetGenerateMetadataJobTokenizer>(service: "aimetadatagenerator", action: "getGenerateMetadataJob")
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
