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

open class AssetLifeCycleBuisnessModuleTransitionAction: AssetLifeCycleTransitionAction {

	public class AssetLifeCycleBuisnessModuleTransitionActionTokenizer: AssetLifeCycleTransitionAction.AssetLifeCycleTransitionActionTokenizer {
		
		public var fileTypeIds: BaseTokenizedObject {
			get {
				return self.append("fileTypeIds") 
			}
		}
		
		public var ppvIds: BaseTokenizedObject {
			get {
				return self.append("ppvIds") 
			}
		}
	}

	/**  Comma separated list of fileType Ids.  */
	public var fileTypeIds: String? = nil
	/**  Comma separated list of ppv Ids.  */
	public var ppvIds: String? = nil


	public func setMultiRequestToken(fileTypeIds: String) {
		self.dict["fileTypeIds"] = fileTypeIds
	}
	
	public func setMultiRequestToken(ppvIds: String) {
		self.dict["ppvIds"] = ppvIds
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fileTypeIds"] != nil {
			fileTypeIds = dict["fileTypeIds"] as? String
		}
		if dict["ppvIds"] != nil {
			ppvIds = dict["ppvIds"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileTypeIds != nil) {
			dict["fileTypeIds"] = fileTypeIds!
		}
		if(ppvIds != nil) {
			dict["ppvIds"] = ppvIds!
		}
		return dict
	}
}

