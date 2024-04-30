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

public final class PartnerService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func partner<T: Partner.PartnerTokenizer>() -> T {
			return T(self.append("partner"))
		}
		
		public func partnerSetup<T: PartnerSetup.PartnerSetupTokenizer>() -> T {
			return T(self.append("partnerSetup"))
		}
	}

	/**  Add a partner with default user  */
	public static func add(partner: Partner, partnerSetup: PartnerSetup) -> RequestBuilder<Partner, Partner.PartnerTokenizer, AddTokenizer> {
		let request: RequestBuilder<Partner, Partner.PartnerTokenizer, AddTokenizer> = RequestBuilder<Partner, Partner.PartnerTokenizer, AddTokenizer>(service: "partner", action: "add")
			.setParam(key: "partner", value: partner)
			.setParam(key: "partnerSetup", value: partnerSetup)

		return request
	}

	public class CreateIndexesTokenizer: ClientTokenizer  {
	}

	/**  Internal API !!! create ElasticSearch indexes for partner  */
	public static func createIndexes() -> RequestBuilder<Bool, BaseTokenizedObject, CreateIndexesTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, CreateIndexesTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, CreateIndexesTokenizer>(service: "partner", action: "createIndexes")

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Internal API !!! Delete Partner  */
	public static func delete(id: Int) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "partner", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ExternalLoginTokenizer: ClientTokenizer  {
	}

	/**  Returns a login session for external system (like OVP)  */
	public static func externalLogin() -> RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, ExternalLoginTokenizer> {
		let request: RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, ExternalLoginTokenizer> = RequestBuilder<LoginSession, LoginSession.LoginSessionTokenizer, ExternalLoginTokenizer>(service: "partner", action: "externalLogin")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PartnerFilter.PartnerFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Internal API !!! Returns the list of active Partners  */
	public static func list(filter: PartnerFilter?) -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer> = RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer>(service: "partner", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
