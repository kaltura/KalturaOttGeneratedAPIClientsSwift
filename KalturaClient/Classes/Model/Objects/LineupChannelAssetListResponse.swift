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

open class LineupChannelAssetListResponse: ListResponse {

	public class LineupChannelAssetListResponseTokenizer: ListResponse.ListResponseTokenizer {
		
		public var objects: ArrayTokenizedObject<LineupChannelAsset.LineupChannelAssetTokenizer> {
			get {
				return ArrayTokenizedObject<LineupChannelAsset.LineupChannelAssetTokenizer>(self.append("objects"))
			} 
		}
		
		public var lineupExternalId: BaseTokenizedObject {
			get {
				return self.append("lineupExternalId") 
			}
		}
		
		public var parentLineupExternalId: BaseTokenizedObject {
			get {
				return self.append("parentLineupExternalId") 
			}
		}
	}

	/**  A list of objects  */
	public var objects: Array<LineupChannelAsset>? = nil
	/**  Lineup External Id  */
	public var lineupExternalId: String? = nil
	/**  Parent Lineup External Id  */
	public var parentLineupExternalId: String? = nil


	public func setMultiRequestToken(lineupExternalId: String) {
		self.dict["lineupExternalId"] = lineupExternalId
	}
	
	public func setMultiRequestToken(parentLineupExternalId: String) {
		self.dict["parentLineupExternalId"] = parentLineupExternalId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["objects"] != nil {
			objects = try JSONParser.parse(array: dict["objects"] as! [Any])
		}
		if dict["lineupExternalId"] != nil {
			lineupExternalId = dict["lineupExternalId"] as? String
		}
		if dict["parentLineupExternalId"] != nil {
			parentLineupExternalId = dict["parentLineupExternalId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(objects != nil) {
			dict["objects"] = objects!.map { value in value.toDictionary() }
		}
		if(lineupExternalId != nil) {
			dict["lineupExternalId"] = lineupExternalId!
		}
		if(parentLineupExternalId != nil) {
			dict["parentLineupExternalId"] = parentLineupExternalId!
		}
		return dict
	}
}

