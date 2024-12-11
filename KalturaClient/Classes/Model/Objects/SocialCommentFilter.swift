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

open class SocialCommentFilter: Filter {

	public class SocialCommentFilterTokenizer: Filter.FilterTokenizer {
		
		public var assetIdEqual: BaseTokenizedObject {
			get {
				return self.append("assetIdEqual") 
			}
		}
		
		public var assetTypeEqual: BaseTokenizedObject {
			get {
				return self.append("assetTypeEqual") 
			}
		}
		
		public var socialPlatformEqual: BaseTokenizedObject {
			get {
				return self.append("socialPlatformEqual") 
			}
		}
		
		public var createDateGreaterThan: BaseTokenizedObject {
			get {
				return self.append("createDateGreaterThan") 
			}
		}
	}

	/**  Asset ID to filter by  */
	public var assetIdEqual: Int64? = nil
	/**  Asset type to filter by, currently only VOD (media)  */
	public var assetTypeEqual: AssetType? = nil
	/**  Comma separated list of social actions to filter by  */
	public var socialPlatformEqual: SocialPlatform? = nil
	/**  The create date from which to get the comments  */
	public var createDateGreaterThan: Int64? = nil


	public func setMultiRequestToken(assetIdEqual: String) {
		self.dict["assetIdEqual"] = assetIdEqual
	}
	
	public func setMultiRequestToken(assetTypeEqual: String) {
		self.dict["assetTypeEqual"] = assetTypeEqual
	}
	
	public func setMultiRequestToken(socialPlatformEqual: String) {
		self.dict["socialPlatformEqual"] = socialPlatformEqual
	}
	
	public func setMultiRequestToken(createDateGreaterThan: String) {
		self.dict["createDateGreaterThan"] = createDateGreaterThan
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetIdEqual"] != nil {
			assetIdEqual = Int64("\(dict["assetIdEqual"]!)")
		}
		if dict["assetTypeEqual"] != nil {
			assetTypeEqual = AssetType(rawValue: "\(dict["assetTypeEqual"]!)")
		}
		if dict["socialPlatformEqual"] != nil {
			socialPlatformEqual = SocialPlatform(rawValue: "\(dict["socialPlatformEqual"]!)")
		}
		if dict["createDateGreaterThan"] != nil {
			createDateGreaterThan = Int64("\(dict["createDateGreaterThan"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetIdEqual != nil) {
			dict["assetIdEqual"] = assetIdEqual!
		}
		if(assetTypeEqual != nil) {
			dict["assetTypeEqual"] = assetTypeEqual!.rawValue
		}
		if(socialPlatformEqual != nil) {
			dict["socialPlatformEqual"] = socialPlatformEqual!.rawValue
		}
		if(createDateGreaterThan != nil) {
			dict["createDateGreaterThan"] = createDateGreaterThan!
		}
		return dict
	}
}

