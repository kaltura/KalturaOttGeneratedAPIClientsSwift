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

/**  Compensation request parameters  */
open class Compensation: ObjectBase {

	public class CompensationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var subscriptionId: BaseTokenizedObject {
			get {
				return self.append("subscriptionId") 
			}
		}
		
		public var compensationType: BaseTokenizedObject {
			get {
				return self.append("compensationType") 
			}
		}
		
		public var amount: BaseTokenizedObject {
			get {
				return self.append("amount") 
			}
		}
		
		public var totalRenewalIterations: BaseTokenizedObject {
			get {
				return self.append("totalRenewalIterations") 
			}
		}
		
		public var appliedRenewalIterations: BaseTokenizedObject {
			get {
				return self.append("appliedRenewalIterations") 
			}
		}
		
		public var purchaseId: BaseTokenizedObject {
			get {
				return self.append("purchaseId") 
			}
		}
	}

	/**  Compensation identifier  */
	public var id: Int64? = nil
	/**  Subscription identifier  */
	public var subscriptionId: Int64? = nil
	/**  Compensation type  */
	public var compensationType: CompensationType? = nil
	/**  Compensation amount  */
	public var amount: Double? = nil
	/**  The number of renewals for compensation  */
	public var totalRenewalIterations: Int? = nil
	/**  The number of renewals the compensation was already applied on  */
	public var appliedRenewalIterations: Int? = nil
	/**  Purchase identifier  */
	public var purchaseId: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(subscriptionId: String) {
		self.dict["subscriptionId"] = subscriptionId
	}
	
	public func setMultiRequestToken(compensationType: String) {
		self.dict["compensationType"] = compensationType
	}
	
	public func setMultiRequestToken(amount: String) {
		self.dict["amount"] = amount
	}
	
	public func setMultiRequestToken(totalRenewalIterations: String) {
		self.dict["totalRenewalIterations"] = totalRenewalIterations
	}
	
	public func setMultiRequestToken(appliedRenewalIterations: String) {
		self.dict["appliedRenewalIterations"] = appliedRenewalIterations
	}
	
	public func setMultiRequestToken(purchaseId: String) {
		self.dict["purchaseId"] = purchaseId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["subscriptionId"] != nil {
			subscriptionId = Int64("\(dict["subscriptionId"]!)")
		}
		if dict["compensationType"] != nil {
			compensationType = CompensationType(rawValue: "\(dict["compensationType"]!)")
		}
		if dict["amount"] != nil {
			amount = dict["amount"] as? Double
		}
		if dict["totalRenewalIterations"] != nil {
			totalRenewalIterations = dict["totalRenewalIterations"] as? Int
		}
		if dict["appliedRenewalIterations"] != nil {
			appliedRenewalIterations = dict["appliedRenewalIterations"] as? Int
		}
		if dict["purchaseId"] != nil {
			purchaseId = dict["purchaseId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(compensationType != nil) {
			dict["compensationType"] = compensationType!.rawValue
		}
		if(amount != nil) {
			dict["amount"] = amount!
		}
		if(totalRenewalIterations != nil) {
			dict["totalRenewalIterations"] = totalRenewalIterations!
		}
		if(purchaseId != nil) {
			dict["purchaseId"] = purchaseId!
		}
		return dict
	}
}

