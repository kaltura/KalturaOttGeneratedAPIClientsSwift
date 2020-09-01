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

open class FacebookPost: SocialNetworkComment {

	public class FacebookPostTokenizer: SocialNetworkComment.SocialNetworkCommentTokenizer {
		
		public var comments: ArrayTokenizedObject<SocialNetworkComment.SocialNetworkCommentTokenizer> {
			get {
				return ArrayTokenizedObject<SocialNetworkComment.SocialNetworkCommentTokenizer>(self.append("comments"))
			} 
		}
		
		public var link: BaseTokenizedObject {
			get {
				return self.append("link") 
			}
		}
	}

	/**  List of comments on the post  */
	public var comments: Array<SocialNetworkComment>? = nil
	/**  A link associated to the post  */
	public var link: String? = nil


	public func setMultiRequestToken(link: String) {
		self.dict["link"] = link
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["comments"] != nil {
			comments = try JSONParser.parse(array: dict["comments"] as! [Any])
		}
		if dict["link"] != nil {
			link = dict["link"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(comments != nil) {
			dict["comments"] = comments!.map { value in value.toDictionary() }
		}
		if(link != nil) {
			dict["link"] = link!
		}
		return dict
	}
}

