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

public final class GoogleIdpService{

	public class AttachTokenizer: ClientTokenizer  {
		
		public var idToken: BaseTokenizedObject {
			get {
				return self.append("idToken") 
			}
		}
	}

	/**  Attaches the KS’s ottUser to a Google identity. Note: Attempting to attach to
	  an IDP, a user that is already attached to the IDP in question, will fail with
	  the appropriate error.  */
	public static func attach(idToken: String) -> RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, AttachTokenizer> {
		let request: RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, AttachTokenizer> = RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, AttachTokenizer>(service: "googleidp", action: "attach")
			.setParam(key: "idToken", value: idToken)

		return request
	}

	public class DetachTokenizer: ClientTokenizer  {
	}

	/**  Detaches the KS’s ottUser from the Google identity that he is connected to.
	  Note: Attempting to detach from an IDP, a user that is not attached to the IDP
	  in question, will fail with the appropriate error.  */
	public static func detach() -> RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, DetachTokenizer> {
		let request: RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, DetachTokenizer> = RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, DetachTokenizer>(service: "googleidp", action: "detach")

		return request
	}

	public class GetServiceIdTokenizer: ClientTokenizer  {
	}

	/**  Returns the identification of Kaltura’s partner (acting as the service
	  provider) in Google (acting as the identity provider).  */
	public static func getServiceId() -> RequestBuilder<SocialServiceId, SocialServiceId.SocialServiceIdTokenizer, GetServiceIdTokenizer> {
		let request: RequestBuilder<SocialServiceId, SocialServiceId.SocialServiceIdTokenizer, GetServiceIdTokenizer> = RequestBuilder<SocialServiceId, SocialServiceId.SocialServiceIdTokenizer, GetServiceIdTokenizer>(service: "googleidp", action: "getServiceId")

		return request
	}

	public class IsAttachedTokenizer: ClientTokenizer  {
	}

	/**  Returns whether the user in question is attached to the Google.  */
	public static func isAttached() -> RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, IsAttachedTokenizer> {
		let request: RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, IsAttachedTokenizer> = RequestBuilder<SocialAttachStatus, SocialAttachStatus.SocialAttachStatusTokenizer, IsAttachedTokenizer>(service: "googleidp", action: "isAttached")

		return request
	}

	public class LoginTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var idToken: BaseTokenizedObject {
			get {
				return self.append("idToken") 
			}
		}
		
		public var extraParams: DictionaryTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return DictionaryTokenizedObject<StringValue.StringValueTokenizer>(self.append("extraParams"))
			}
		}
		
		public var udid: BaseTokenizedObject {
			get {
				return self.append("udid") 
			}
		}
	}

	public static func login(partnerId: Int, idToken: String) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		return login(partnerId: partnerId, idToken: idToken, extraParams: nil)
	}

	public static func login(partnerId: Int, idToken: String, extraParams: Dictionary<String, StringValue>?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		return login(partnerId: partnerId, idToken: idToken, extraParams: extraParams, udid: nil)
	}

	/**  Login an ottUser (acquire KS) using a Google id token.  */
	public static func login(partnerId: Int, idToken: String, extraParams: Dictionary<String, StringValue>?, udid: String?) -> RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> {
		let request: RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer> = RequestBuilder<LoginResponse, LoginResponse.LoginResponseTokenizer, LoginTokenizer>(service: "googleidp", action: "login")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "idToken", value: idToken)
			.setParam(key: "extraParams", value: extraParams)
			.setParam(key: "udid", value: udid)

		return request
	}

	public class SetServiceIdTokenizer: ClientTokenizer  {
		
		public var serviceId: BaseTokenizedObject {
			get {
				return self.append("serviceId") 
			}
		}
	}

	/**  Sets the identification of Kaltura’s partner (that acts as a service provider)
	  in Google (that acts as identity provider).  */
	public static func setServiceId(serviceId: String) -> RequestBuilder<SocialServiceId, SocialServiceId.SocialServiceIdTokenizer, SetServiceIdTokenizer> {
		let request: RequestBuilder<SocialServiceId, SocialServiceId.SocialServiceIdTokenizer, SetServiceIdTokenizer> = RequestBuilder<SocialServiceId, SocialServiceId.SocialServiceIdTokenizer, SetServiceIdTokenizer>(service: "googleidp", action: "setServiceId")
			.setParam(key: "serviceId", value: serviceId)

		return request
	}
}
