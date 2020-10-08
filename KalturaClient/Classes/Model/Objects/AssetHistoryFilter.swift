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

open class AssetHistoryFilter: Filter {

	public class AssetHistoryFilterTokenizer: Filter.FilterTokenizer {
		
		public var typeIn: BaseTokenizedObject {
			get {
				return self.append("typeIn") 
			}
		}
		
		public var assetIdIn: BaseTokenizedObject {
			get {
				return self.append("assetIdIn") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var daysLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("daysLessThanOrEqual") 
			}
		}
	}

	/**  Comma separated list of asset types to search within.              Possible
	  values: 0 – EPG linear programs entries, any media type ID (according to media
	  type IDs defined dynamically in the system).              If omitted – all
	  types should be included.  */
	public var typeIn: String? = nil
	/**  Comma separated list of asset identifiers.  */
	public var assetIdIn: String? = nil
	/**  Which type of recently watched media to include in the result – those that
	  finished watching, those that are in progress or both.              If omitted
	  or specified filter = all – return all types.              Allowed values:
	  progress – return medias that are in-progress, done – return medias that
	  finished watching.  */
	public var statusEqual: WatchStatus? = nil
	/**  How many days back to return the watched media. If omitted, default to 7 days  */
	public var daysLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(assetIdIn: String) {
		self.dict["assetIdIn"] = assetIdIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(daysLessThanOrEqual: String) {
		self.dict["daysLessThanOrEqual"] = daysLessThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["assetIdIn"] != nil {
			assetIdIn = dict["assetIdIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = WatchStatus(rawValue: "\(dict["statusEqual"]!)")
		}
		if dict["daysLessThanOrEqual"] != nil {
			daysLessThanOrEqual = dict["daysLessThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(assetIdIn != nil) {
			dict["assetIdIn"] = assetIdIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(daysLessThanOrEqual != nil) {
			dict["daysLessThanOrEqual"] = daysLessThanOrEqual!
		}
		return dict
	}
}

