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

/**  A clout upload settings refers to partner configuration with regards to files
  that are loaded to KTP cloud (e.g. S3)  */
open class CloudUploadSettingsConfiguration: PartnerConfiguration {

	public class CloudUploadSettingsConfigurationTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var defaultAllowedFileExtensions: BaseTokenizedObject {
			get {
				return self.append("defaultAllowedFileExtensions") 
			}
		}
		
		public var customAllowedFileExtensions: BaseTokenizedObject {
			get {
				return self.append("customAllowedFileExtensions") 
			}
		}
	}

	/**  Comma seperated list of file extensions that allowed to all partners  */
	public var defaultAllowedFileExtensions: String? = nil
	/**  Comma seperated list of file extensions that allowed to partner in question     
	          {&amp;quot;jpeg&amp;quot;,&amp;quot;image/jpeg&amp;quot;},             
	  {&amp;quot;jpg&amp;quot;,&amp;quot;image/jpeg&amp;quot;},             
	  {&amp;quot;png&amp;quot;,&amp;quot;image/png&amp;quot;},             
	  {&amp;quot;tif&amp;quot;,&amp;quot;image/tiff&amp;quot;},             
	  {&amp;quot;tiff&amp;quot;,&amp;quot;image/tiff&amp;quot;},             
	  {&amp;quot;gif&amp;quot;,&amp;quot;image/gif&amp;quot;},             
	  {&amp;quot;xls&amp;quot;,&amp;quot;application/vnd.ms-excel&amp;quot;},         
	     
	  {&amp;quot;xlsx&amp;quot;,&amp;quot;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet&amp;quot;},
	               {&amp;quot;csv&amp;quot;,&amp;quot;text/csv&amp;quot;},            
	   {&amp;quot;xml&amp;quot;,&amp;quot;text/xml&amp;quot;},             
	  {&amp;quot;txt&amp;quot;,&amp;quot;text/plain&amp;quot;},             
	  {&amp;quot;doc&amp;quot;,&amp;quot;application/msword&amp;quot;},             
	  {&amp;quot;docx&amp;quot;,&amp;quot;application/vnd.openxmlformats-officedocument.wordprocessingml.document&amp;quot;},
	               {&amp;quot;bmp&amp;quot;,&amp;quot;image/bmp&amp;quot;},           
	    {&amp;quot;ico&amp;quot;,&amp;quot;image/x-icon&amp;quot;},             
	  {&amp;quot;mp3&amp;quot;,&amp;quot;audio/mpeg&amp;quot;},             
	  {&amp;quot;pdf&amp;quot;,&amp;quot;application/pdf&amp;quot;}}  */
	public var customAllowedFileExtensions: String? = nil


	public func setMultiRequestToken(defaultAllowedFileExtensions: String) {
		self.dict["defaultAllowedFileExtensions"] = defaultAllowedFileExtensions
	}
	
	public func setMultiRequestToken(customAllowedFileExtensions: String) {
		self.dict["customAllowedFileExtensions"] = customAllowedFileExtensions
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["defaultAllowedFileExtensions"] != nil {
			defaultAllowedFileExtensions = dict["defaultAllowedFileExtensions"] as? String
		}
		if dict["customAllowedFileExtensions"] != nil {
			customAllowedFileExtensions = dict["customAllowedFileExtensions"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(customAllowedFileExtensions != nil) {
			dict["customAllowedFileExtensions"] = customAllowedFileExtensions!
		}
		return dict
	}
}

