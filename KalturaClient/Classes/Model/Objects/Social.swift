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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class Social: ObjectBase {

	/**  Facebook identifier  */
	public var id: String? = nil
	/**  Full name  */
	public var name: String? = nil
	/**  First name  */
	public var firstName: String? = nil
	/**  Last name  */
	public var lastName: String? = nil
	/**  User email  */
	public var email: String? = nil
	/**  Gender  */
	public var gender: String? = nil
	/**  User identifier  */
	public var userId: String? = nil
	/**  User birthday  */
	public var birthday: String? = nil
	/**  User model status              Possible values: UNKNOWN, OK, ERROR, NOACTION,
	  NOTEXIST, CONFLICT, MERGE, MERGEOK, NEWUSER, MINFRIENDS, INVITEOK, INVITEERROR,
	  ACCESSDENIED, WRONGPASSWORDORUSERNAME, UNMERGEOK  */
	public var status: String? = nil
	/**  Profile picture URL  */
	public var pictureUrl: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
		}
		if dict["gender"] != nil {
			gender = dict["gender"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["birthday"] != nil {
			birthday = dict["birthday"] as? String
		}
		if dict["status"] != nil {
			status = dict["status"] as? String
		}
		if dict["pictureUrl"] != nil {
			pictureUrl = dict["pictureUrl"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(firstName != nil) {
			dict["firstName"] = firstName!
		}
		if(lastName != nil) {
			dict["lastName"] = lastName!
		}
		if(email != nil) {
			dict["email"] = email!
		}
		if(gender != nil) {
			dict["gender"] = gender!
		}
		if(birthday != nil) {
			dict["birthday"] = birthday!
		}
		if(pictureUrl != nil) {
			dict["pictureUrl"] = pictureUrl!
		}
		return dict
	}
}

