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

open class VodIngestAssetResult: ObjectBase {

	public class VodIngestAssetResultTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetName: BaseTokenizedObject {
			get {
				return self.append("assetName") 
			}
		}
		
		public var shopAssetUserRuleId: BaseTokenizedObject {
			get {
				return self.append("shopAssetUserRuleId") 
			}
		}
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
		
		public var ingestDate: BaseTokenizedObject {
			get {
				return self.append("ingestDate") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var vodTypeSystemName: BaseTokenizedObject {
			get {
				return self.append("vodTypeSystemName") 
			}
		}
		
		public var errors: ArrayTokenizedObject<VodIngestAssetResultErrorMessage.VodIngestAssetResultErrorMessageTokenizer> {
			get {
				return ArrayTokenizedObject<VodIngestAssetResultErrorMessage.VodIngestAssetResultErrorMessageTokenizer>(self.append("errors"))
			} 
		}
		
		public var warnings: ArrayTokenizedObject<VodIngestAssetResultErrorMessage.VodIngestAssetResultErrorMessageTokenizer> {
			get {
				return ArrayTokenizedObject<VodIngestAssetResultErrorMessage.VodIngestAssetResultErrorMessageTokenizer>(self.append("warnings"))
			} 
		}
	}

	/**  Ingested asset name. Absent only in case of NameRequired error  */
	public var assetName: String? = nil
	/**  The shop ID the asset is assigned to. Omitted if the asset is not associated to
	  any shop.  */
	public var shopAssetUserRuleId: Int64? = nil
	/**  The XML file name used at the ingest gateway. Referred to as process name  */
	public var fileName: String? = nil
	/**  Date and time the asset was ingested. Date and time represented as epoch.  */
	public var ingestDate: Int64? = nil
	/**  The status result for the asset ingest.              FAILURE - the asset ingest
	  was failed after the ingest process started, specify the error for it.          
	     SUCCESS - the asset was succeeded to be ingested.             
	  SUCCESS_WARNING - the asset was succeeded to be ingested with warnings that do
	  not prevent the ingest.              EXTERNAL_FAILURE - the asset ingest was
	  failed before the ingest process started, specify the error for it.  */
	public var status: VodIngestAssetResultStatus? = nil
	/**  VOD asset type (assetStruct.systemName).  */
	public var vodTypeSystemName: String? = nil
	/**  Errors which prevent the asset from being ingested  */
	public var errors: Array<VodIngestAssetResultErrorMessage>? = nil
	/**  Errors which do not prevent the asset from being ingested  */
	public var warnings: Array<VodIngestAssetResultErrorMessage>? = nil


	public func setMultiRequestToken(assetName: String) {
		self.dict["assetName"] = assetName
	}
	
	public func setMultiRequestToken(shopAssetUserRuleId: String) {
		self.dict["shopAssetUserRuleId"] = shopAssetUserRuleId
	}
	
	public func setMultiRequestToken(fileName: String) {
		self.dict["fileName"] = fileName
	}
	
	public func setMultiRequestToken(ingestDate: String) {
		self.dict["ingestDate"] = ingestDate
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(vodTypeSystemName: String) {
		self.dict["vodTypeSystemName"] = vodTypeSystemName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetName"] != nil {
			assetName = dict["assetName"] as? String
		}
		if dict["shopAssetUserRuleId"] != nil {
			shopAssetUserRuleId = Int64("\(dict["shopAssetUserRuleId"]!)")
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["ingestDate"] != nil {
			ingestDate = Int64("\(dict["ingestDate"]!)")
		}
		if dict["status"] != nil {
			status = VodIngestAssetResultStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["vodTypeSystemName"] != nil {
			vodTypeSystemName = dict["vodTypeSystemName"] as? String
		}
		if dict["errors"] != nil {
			errors = try JSONParser.parse(array: dict["errors"] as! [Any])
		}
		if dict["warnings"] != nil {
			warnings = try JSONParser.parse(array: dict["warnings"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetName != nil) {
			dict["assetName"] = assetName!
		}
		if(shopAssetUserRuleId != nil) {
			dict["shopAssetUserRuleId"] = shopAssetUserRuleId!
		}
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(ingestDate != nil) {
			dict["ingestDate"] = ingestDate!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(vodTypeSystemName != nil) {
			dict["vodTypeSystemName"] = vodTypeSystemName!
		}
		if(errors != nil) {
			dict["errors"] = errors!.map { value in value.toDictionary() }
		}
		if(warnings != nil) {
			dict["warnings"] = warnings!.map { value in value.toDictionary() }
		}
		return dict
	}
}

