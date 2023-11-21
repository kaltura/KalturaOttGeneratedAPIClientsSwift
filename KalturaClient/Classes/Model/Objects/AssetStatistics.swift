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

/**  Asset statistics  */
open class AssetStatistics: ObjectBase {

	public class AssetStatisticsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var likes: BaseTokenizedObject {
			get {
				return self.append("likes") 
			}
		}
		
		public var views: BaseTokenizedObject {
			get {
				return self.append("views") 
			}
		}
		
		public var ratingCount: BaseTokenizedObject {
			get {
				return self.append("ratingCount") 
			}
		}
		
		public var rating: BaseTokenizedObject {
			get {
				return self.append("rating") 
			}
		}
		
		public func buzzScore<T: BuzzScore.BuzzScoreTokenizer>() -> T {
			return T(self.append("buzzScore"))
		}
	}

	/**  Unique identifier for the asset  */
	public var assetId: Int? = nil
	/**  Total number of likes for this asset  */
	public var likes: Int? = nil
	/**  Total number of views for this asset  */
	public var views: Int? = nil
	/**  Number of people that rated the asset  */
	public var ratingCount: Int? = nil
	/**  Average rating for the asset  */
	public var rating: Double? = nil
	/**  Buzz score  */
	public var buzzScore: BuzzScore? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(likes: String) {
		self.dict["likes"] = likes
	}
	
	public func setMultiRequestToken(views: String) {
		self.dict["views"] = views
	}
	
	public func setMultiRequestToken(ratingCount: String) {
		self.dict["ratingCount"] = ratingCount
	}
	
	public func setMultiRequestToken(rating: String) {
		self.dict["rating"] = rating
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? Int
		}
		if dict["likes"] != nil {
			likes = dict["likes"] as? Int
		}
		if dict["views"] != nil {
			views = dict["views"] as? Int
		}
		if dict["ratingCount"] != nil {
			ratingCount = dict["ratingCount"] as? Int
		}
		if dict["rating"] != nil {
			rating = dict["rating"] as? Double
		}
		if dict["buzzScore"] != nil {
		buzzScore = try JSONParser.parse(object: dict["buzzScore"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(likes != nil) {
			dict["likes"] = likes!
		}
		if(views != nil) {
			dict["views"] = views!
		}
		if(ratingCount != nil) {
			dict["ratingCount"] = ratingCount!
		}
		if(rating != nil) {
			dict["rating"] = rating!
		}
		if(buzzScore != nil) {
			dict["buzzScore"] = buzzScore!.toDictionary()
		}
		return dict
	}
}

