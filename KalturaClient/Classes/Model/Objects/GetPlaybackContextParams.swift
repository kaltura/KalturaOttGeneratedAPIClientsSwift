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

/**  Parameters for a single getPlaybackContext request within a bulk request  */
open class GetPlaybackContextParams: ObjectBase {

	public class GetPlaybackContextParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var assetType: BaseTokenizedObject {
			get {
				return self.append("assetType") 
			}
		}
		
		public func contextDataParams<T: PlaybackContextOptions.PlaybackContextOptionsTokenizer>() -> T {
			return T(self.append("contextDataParams"))
		}
		
		public var sourceType: BaseTokenizedObject {
			get {
				return self.append("sourceType") 
			}
		}
	}

	/**  Unique identifier of the asset  */
	public var assetId: String? = nil
	/**  Type of the asset  */
	public var assetType: AssetType? = nil
	/**  Playback context options  */
	public var contextDataParams: PlaybackContextOptions? = nil
	/**  Source type (optional)  */
	public var sourceType: String? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(assetType: String) {
		self.dict["assetType"] = assetType
	}
	
	public func setMultiRequestToken(sourceType: String) {
		self.dict["sourceType"] = sourceType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["assetType"] != nil {
			assetType = AssetType(rawValue: "\(dict["assetType"]!)")
		}
		if dict["contextDataParams"] != nil {
		contextDataParams = try JSONParser.parse(object: dict["contextDataParams"] as! [String: Any])		}
		if dict["sourceType"] != nil {
			sourceType = dict["sourceType"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(assetType != nil) {
			dict["assetType"] = assetType!.rawValue
		}
		if(contextDataParams != nil) {
			dict["contextDataParams"] = contextDataParams!.toDictionary()
		}
		if(sourceType != nil) {
			dict["sourceType"] = sourceType!
		}
		return dict
	}
}

