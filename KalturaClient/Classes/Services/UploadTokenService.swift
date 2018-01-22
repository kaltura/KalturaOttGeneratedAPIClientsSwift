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
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class UploadTokenService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func uploadToken<T: UploadToken.UploadTokenTokenizer>() -> T {
			return T(self.append("uploadToken"))
		}
	}

	public static func add() -> RequestBuilder<UploadToken, UploadToken.UploadTokenTokenizer, AddTokenizer> {
		return add(uploadToken: nil)
	}

	/**  Adds new upload token to upload a file  */
	public static func add(uploadToken: UploadToken?) -> RequestBuilder<UploadToken, UploadToken.UploadTokenTokenizer, AddTokenizer> {
		let request: RequestBuilder<UploadToken, UploadToken.UploadTokenTokenizer, AddTokenizer> = RequestBuilder<UploadToken, UploadToken.UploadTokenTokenizer, AddTokenizer>(service: "uploadtoken", action: "add")
			.setParam(key: "uploadToken", value: uploadToken)

		return request
	}

	public class UploadTokenizer: ClientTokenizer  {
		
		public var uploadTokenId: BaseTokenizedObject {
			get {
				return self.append("uploadTokenId") 
			}
		}
	}

	/**  Upload a file using the upload token id  */
	public static func upload(uploadTokenId: String, fileData: RequestFile) -> RequestBuilder<UploadToken, UploadToken.UploadTokenTokenizer, UploadTokenizer> {
		let request: RequestBuilder<UploadToken, UploadToken.UploadTokenTokenizer, UploadTokenizer> = RequestBuilder<UploadToken, UploadToken.UploadTokenTokenizer, UploadTokenizer>(service: "uploadtoken", action: "upload")
			.setParam(key: "uploadTokenId", value: uploadTokenId)
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
