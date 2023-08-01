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

open class ResetPasswordPartnerConfig: ObjectBase {

	public class ResetPasswordPartnerConfigTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var templateListLabel: BaseTokenizedObject {
			get {
				return self.append("templateListLabel") 
			}
		}
		
		public var templates: ArrayTokenizedObject<ResetPasswordPartnerConfigTemplate.ResetPasswordPartnerConfigTemplateTokenizer> {
			get {
				return ArrayTokenizedObject<ResetPasswordPartnerConfigTemplate.ResetPasswordPartnerConfigTemplateTokenizer>(self.append("templates"))
			} 
		}
	}

	/**  template List Label  */
	public var templateListLabel: String? = nil
	/**  templates  */
	public var templates: Array<ResetPasswordPartnerConfigTemplate>? = nil


	public func setMultiRequestToken(templateListLabel: String) {
		self.dict["templateListLabel"] = templateListLabel
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["templateListLabel"] != nil {
			templateListLabel = dict["templateListLabel"] as? String
		}
		if dict["templates"] != nil {
			templates = try JSONParser.parse(array: dict["templates"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(templateListLabel != nil) {
			dict["templateListLabel"] = templateListLabel!
		}
		if(templates != nil) {
			dict["templates"] = templates!.map { value in value.toDictionary() }
		}
		return dict
	}
}

