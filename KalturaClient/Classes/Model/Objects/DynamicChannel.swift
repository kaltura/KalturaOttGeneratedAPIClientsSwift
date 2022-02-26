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

open class DynamicChannel: Channel {

	public class DynamicChannelTokenizer: Channel.ChannelTokenizer {
		
		public var kSql: BaseTokenizedObject {
			get {
				return self.append("kSql") 
			}
		}
		
		public var assetTypes: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("assetTypes"))
			} 
		}
		
		public func groupBy<T: AssetGroupBy.AssetGroupByTokenizer>() -> T {
			return T(self.append("groupBy"))
		}
	}

	/**  Search assets using dynamic criteria. Provided collection of nested expressions
	  with key, comparison operators, value, and logical conjunction.             
	  Possible keys: any Tag or Meta defined in the system and the following reserved
	  keys: start_date, end_date.               epg_id, media_id - for specific asset
	  IDs.              geo_block - only valid value is &amp;quot;true&amp;quot;: When
	  enabled, only assets that are not restriced to the user by geo-block rules will
	  return.              parental_rules - only valid value is
	  &amp;quot;true&amp;quot;: When enabled, only assets that the user
	  doesn&amp;#39;t need to provide PIN code will return.             
	  user_interests - only valid value is &amp;quot;true&amp;quot;. When enabled,
	  only assets that the user defined as his interests (by tags and metas) will
	  return.              epg_channel_id – the channel identifier of the EPG
	  program. *****Deprecated, please use linear_media_id instead*****             
	  linear_media_id – the linear media identifier of the EPG program.             
	  entitled_assets - valid values: &amp;quot;free&amp;quot;,
	  &amp;quot;entitled&amp;quot;, &amp;quot;both&amp;quot;. free - gets only free to
	  watch assets. entitled - only those that the user is implicitly entitled to
	  watch.              Comparison operators: for numerical fields =, &amp;gt;,
	  &amp;gt;=, &amp;lt;, &amp;lt;=, : (in).               For alpha-numerical fields
	  =, != (not), ~ (like), !~, ^ (any word starts with), ^= (phrase starts with), +
	  (exists), !+ (not exists).              Logical conjunction: and, or.           
	     Search values are limited to 20 characters each.              (maximum length
	  of entire filter is 4096 characters)  */
	public var kSql: String? = nil
	/**  Asset types in the channel.              -26 is EPG  */
	public var assetTypes: Array<IntegerValue>? = nil
	/**  Channel group by  */
	public var groupBy: AssetGroupBy? = nil


	public func setMultiRequestToken(kSql: String) {
		self.dict["kSql"] = kSql
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["kSql"] != nil {
			kSql = dict["kSql"] as? String
		}
		if dict["assetTypes"] != nil {
			assetTypes = try JSONParser.parse(array: dict["assetTypes"] as! [Any])
		}
		if dict["groupBy"] != nil {
		groupBy = try JSONParser.parse(object: dict["groupBy"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(kSql != nil) {
			dict["kSql"] = kSql!
		}
		if(assetTypes != nil) {
			dict["assetTypes"] = assetTypes!.map { value in value.toDictionary() }
		}
		if(groupBy != nil) {
			dict["groupBy"] = groupBy!.toDictionary()
		}
		return dict
	}
}

