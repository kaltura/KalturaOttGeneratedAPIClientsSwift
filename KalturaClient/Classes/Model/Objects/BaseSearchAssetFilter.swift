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

open class BaseSearchAssetFilter: AssetFilter {

	public class BaseSearchAssetFilterTokenizer: AssetFilter.AssetFilterTokenizer {
		
		public var kSql: BaseTokenizedObject {
			get {
				return self.append("kSql") 
			}
		}
		
		public var groupBy: ArrayTokenizedObject<AssetGroupBy.AssetGroupByTokenizer> {
			get {
				return ArrayTokenizedObject<AssetGroupBy.AssetGroupByTokenizer>(self.append("groupBy"))
			} 
		}
		
		public var groupOrderBy: BaseTokenizedObject {
			get {
				return self.append("groupOrderBy") 
			}
		}
	}

	/**  Search assets using dynamic criteria. Provided collection of nested expressions
	  with key, comparison operators, value, and logical conjunction.             
	  Possible keys: any Tag or Meta defined in the system and the following reserved
	  keys: start_date, end_date.               epg_id, media_id - for specific asset
	  IDs.              geo_block - only valid value is &amp;quot;true&amp;quot;: When
	  enabled, only assets that are not restricted to the user by geo-block rules will
	  return.              parental_rules - only valid value is
	  &amp;quot;true&amp;quot;: When enabled, only assets that the user
	  doesn&amp;#39;t need to provide PIN code will return.             
	  user_interests - only valid value is &amp;quot;true&amp;quot;. When enabled,
	  only assets that the user defined as his interests (by tags and metas) will
	  return.              epg_channel_id – the channel identifier of the EPG
	  program.              entitled_assets - valid values: &amp;quot;free&amp;quot;,
	  &amp;quot;entitled&amp;quot;, &amp;quot;not_entitled&amp;quot;,
	  &amp;quot;both&amp;quot;. free - gets only free to watch assets. entitled - only
	  those that the user is implicitly entitled to watch.              asset_type -
	  valid values: &amp;quot;media&amp;quot;, &amp;quot;epg&amp;quot;,
	  &amp;quot;recording&amp;quot; or any number that represents media type in group.
	               Comparison operators: for numerical fields =, &amp;gt;, &amp;gt;=,
	  &amp;lt;, &amp;lt;=, : (in).               For alpha-numerical fields =, !=
	  (not), ~ (like), !~, ^ (any word starts with), ^= (phrase starts with), +
	  (exists), !+ (not exists).              Logical conjunction: and, or.           
	     Search values are limited to 20 characters each for the next operators: ~,
	  !~, ^, ^=              (maximum length of entire filter is 4096 characters)  */
	public var kSql: String? = nil
	/**  groupBy  */
	public var groupBy: Array<AssetGroupBy>? = nil
	/**  order by of grouping  */
	public var groupOrderBy: GroupByOrder? = nil


	public func setMultiRequestToken(kSql: String) {
		self.dict["kSql"] = kSql
	}
	
	public func setMultiRequestToken(groupOrderBy: String) {
		self.dict["groupOrderBy"] = groupOrderBy
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["kSql"] != nil {
			kSql = dict["kSql"] as? String
		}
		if dict["groupBy"] != nil {
			groupBy = try JSONParser.parse(array: dict["groupBy"] as! [Any])
		}
		if dict["groupOrderBy"] != nil {
			groupOrderBy = GroupByOrder(rawValue: "\(dict["groupOrderBy"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(kSql != nil) {
			dict["kSql"] = kSql!
		}
		if(groupBy != nil) {
			dict["groupBy"] = groupBy!.map { value in value.toDictionary() }
		}
		if(groupOrderBy != nil) {
			dict["groupOrderBy"] = groupOrderBy!.rawValue
		}
		return dict
	}
}

