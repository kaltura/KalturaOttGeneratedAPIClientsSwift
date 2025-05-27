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

/**  The configuration object for the metadata enrichment feature.  */
open class AiMetadataGeneratorConfiguration: ObjectBase {

	public class AiMetadataGeneratorConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var isEnabled: BaseTokenizedObject {
			get {
				return self.append("isEnabled") 
			}
		}
		
		public var assetStructMetaNameMap: DictionaryTokenizedObject<MetaFieldNameMap.MetaFieldNameMapTokenizer> {
			get {
				return DictionaryTokenizedObject<MetaFieldNameMap.MetaFieldNameMapTokenizer>(self.append("assetStructMetaNameMap"))
			}
		}
		
		public var supportedLanguages: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("supportedLanguages"))
			} 
		}
	}

	/**  Specifies if the feature is enabled or disabled.  */
	public var isEnabled: Bool? = nil
	/**  A map (dictionary) to indicate to which existing metadata or tag the newly
	  generated metadata value should be pushed, per assetStruct (per &amp;#39;asset
	  type&amp;#39;)  */
	public var assetStructMetaNameMap: Dictionary<String, MetaFieldNameMap>? = nil
	/**  A read only array to list the set of languages which can be used with the
	  service.              In practice it is populated with the values set in
	  KalturaMetadataGeneratorLanguages ENUM.  */
	public var supportedLanguages: Array<StringValue>? = nil


	public func setMultiRequestToken(isEnabled: String) {
		self.dict["isEnabled"] = isEnabled
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isEnabled"] != nil {
			isEnabled = dict["isEnabled"] as? Bool
		}
		if dict["assetStructMetaNameMap"] != nil {
			assetStructMetaNameMap = try JSONParser.parse(map: dict["assetStructMetaNameMap"] as! [String: Any])
		}
		if dict["supportedLanguages"] != nil {
			supportedLanguages = try JSONParser.parse(array: dict["supportedLanguages"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isEnabled != nil) {
			dict["isEnabled"] = isEnabled!
		}
		if(assetStructMetaNameMap != nil) {
			dict["assetStructMetaNameMap"] = assetStructMetaNameMap!.toDictionary()
		}
		return dict
	}
}

