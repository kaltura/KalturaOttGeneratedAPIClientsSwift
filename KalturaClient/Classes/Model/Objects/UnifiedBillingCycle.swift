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

open class UnifiedBillingCycle: ObjectBase {

	public class UnifiedBillingCycleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public func duration<T: Duration.DurationTokenizer>() -> T {
			return T(self.append("duration"))
		}
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
	}

	/**  UnifiedBillingCycle name  */
	public var name: String? = nil
	/**  cycle duration  */
	public var duration: Duration? = nil
	/**  Payment Gateway Id  */
	public var paymentGatewayId: Int? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(paymentGatewayId: String) {
		self.dict["paymentGatewayId"] = paymentGatewayId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["duration"] != nil {
		duration = try JSONParser.parse(object: dict["duration"] as! [String: Any])		}
		if dict["paymentGatewayId"] != nil {
			paymentGatewayId = dict["paymentGatewayId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(duration != nil) {
			dict["duration"] = duration!.toDictionary()
		}
		if(paymentGatewayId != nil) {
			dict["paymentGatewayId"] = paymentGatewayId!
		}
		return dict
	}
}

