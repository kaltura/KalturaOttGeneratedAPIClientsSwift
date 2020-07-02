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

open class Bookmark: SlimAsset {

	public class BookmarkTokenizer: SlimAsset.SlimAssetTokenizer {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var position: BaseTokenizedObject {
			get {
				return self.append("position") 
			}
		}
		
		public var positionOwner: BaseTokenizedObject {
			get {
				return self.append("positionOwner") 
			}
		}
		
		public var finishedWatching: BaseTokenizedObject {
			get {
				return self.append("finishedWatching") 
			}
		}
		
		public func playerData<T: BookmarkPlayerData.BookmarkPlayerDataTokenizer>() -> T {
			return T(self.append("playerData"))
		}
		
		public var programId: BaseTokenizedObject {
			get {
				return self.append("programId") 
			}
		}
		
		public var isReportingMode: BaseTokenizedObject {
			get {
				return self.append("isReportingMode") 
			}
		}
	}

	/**  User identifier  */
	public var userId: String? = nil
	/**  The position of the user in the specific asset (in seconds)  */
	public var position: Int? = nil
	/**  Indicates who is the owner of this position  */
	public var positionOwner: PositionOwner? = nil
	/**  Specifies whether the user&amp;#39;s current position exceeded 95% of the
	  duration  */
	public var finishedWatching: Bool? = nil
	/**  Insert only player data  */
	public var playerData: BookmarkPlayerData? = nil
	/**  Program Id  */
	public var programId: Int64? = nil
	/**  Indicates if the current request is in reporting mode (hit)  */
	public var isReportingMode: Bool? = nil


	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(position: String) {
		self.dict["position"] = position
	}
	
	public func setMultiRequestToken(positionOwner: String) {
		self.dict["positionOwner"] = positionOwner
	}
	
	public func setMultiRequestToken(finishedWatching: String) {
		self.dict["finishedWatching"] = finishedWatching
	}
	
	public func setMultiRequestToken(programId: String) {
		self.dict["programId"] = programId
	}
	
	public func setMultiRequestToken(isReportingMode: String) {
		self.dict["isReportingMode"] = isReportingMode
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["position"] != nil {
			position = dict["position"] as? Int
		}
		if dict["positionOwner"] != nil {
			positionOwner = PositionOwner(rawValue: "\(dict["positionOwner"]!)")
		}
		if dict["finishedWatching"] != nil {
			finishedWatching = dict["finishedWatching"] as? Bool
		}
		if dict["playerData"] != nil {
		playerData = try JSONParser.parse(object: dict["playerData"] as! [String: Any])		}
		if dict["programId"] != nil {
			programId = Int64("\(dict["programId"]!)")
		}
		if dict["isReportingMode"] != nil {
			isReportingMode = dict["isReportingMode"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(position != nil) {
			dict["position"] = position!
		}
		if(playerData != nil) {
			dict["playerData"] = playerData!.toDictionary()
		}
		if(programId != nil) {
			dict["programId"] = programId!
		}
		if(isReportingMode != nil) {
			dict["isReportingMode"] = isReportingMode!
		}
		return dict
	}
}

