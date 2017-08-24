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

public final class TransactionService{

	public class DowngradeTokenizer: ClientTokenizer  {
		
		public var purchase: Purchase.PurchaseTokenizer {
			get {
				return Purchase.PurchaseTokenizer(self.append("purchase")) 
			}
		}
	}

	/**  downgrade specific subscription for a household. entitlements will be updated on
	  the existing subscription end date.  */
	public static func downgrade(purchase: Purchase) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "transaction", action: "downgrade")
			.setBody(key: "purchase", value: purchase)

		return request
	}

	public class GetPurchaseSessionIdTokenizer: ClientTokenizer  {
		
		public var purchaseSession: PurchaseSession.PurchaseSessionTokenizer {
			get {
				return PurchaseSession.PurchaseSessionTokenizer(self.append("purchaseSession")) 
			}
		}
	}

	/**  Retrieve the purchase session identifier  */
	public static func getPurchaseSessionId(purchaseSession: PurchaseSession) -> RequestBuilder<Int64, BaseTokenizedObject, GetPurchaseSessionIdTokenizer> {
		let request: RequestBuilder<Int64, BaseTokenizedObject, GetPurchaseSessionIdTokenizer> = RequestBuilder<Int64, BaseTokenizedObject, GetPurchaseSessionIdTokenizer>(service: "transaction", action: "getPurchaseSessionId")
			.setBody(key: "purchaseSession", value: purchaseSession)

		return request
	}

	public class PurchaseTokenizer: ClientTokenizer  {
		
		public var purchase_: Purchase.PurchaseTokenizer {
			get {
				return Purchase.PurchaseTokenizer(self.append("purchase_")) 
			}
		}
	}

	/**  Purchase specific product or subscription for a household. Upon successful
	  charge entitlements to use the requested product or subscription are granted.  */
	public static func purchase(purchase_: Purchase) -> RequestBuilder<Transaction, Transaction.TransactionTokenizer, PurchaseTokenizer> {
		let request: RequestBuilder<Transaction, Transaction.TransactionTokenizer, PurchaseTokenizer> = RequestBuilder<Transaction, Transaction.TransactionTokenizer, PurchaseTokenizer>(service: "transaction", action: "purchase")
			.setBody(key: "purchase", value: purchase_)

		return request
	}

	public class SetWaiverTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var transactionType: BaseTokenizedObject {
			get {
				return self.append("transactionType") 
			}
		}
	}

	/**  This method shall set the waiver flag on the user entitlement table and the
	  waiver date field to the current date.  */
	public static func setWaiver(assetId: Int, transactionType: TransactionType) -> RequestBuilder<Bool, BaseTokenizedObject, SetWaiverTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SetWaiverTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SetWaiverTokenizer>(service: "transaction", action: "setWaiver")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "transactionType", value: transactionType.rawValue)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var paymentGatewayId: BaseTokenizedObject {
			get {
				return self.append("paymentGatewayId") 
			}
		}
		
		public var externalTransactionId: BaseTokenizedObject {
			get {
				return self.append("externalTransactionId") 
			}
		}
		
		public var signature: BaseTokenizedObject {
			get {
				return self.append("signature") 
			}
		}
		
		public var status: TransactionStatus.TransactionStatusTokenizer {
			get {
				return TransactionStatus.TransactionStatusTokenizer(self.append("status")) 
			}
		}
	}

	/**  Updates a pending purchase transaction state.  */
	public static func updateStatus(paymentGatewayId: String, externalTransactionId: String, signature: String, status: TransactionStatus) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "transaction", action: "updateStatus")
			.setBody(key: "paymentGatewayId", value: paymentGatewayId)
			.setBody(key: "externalTransactionId", value: externalTransactionId)
			.setBody(key: "signature", value: signature)
			.setBody(key: "status", value: status)

		return request
	}

	public class UpgradeTokenizer: ClientTokenizer  {
		
		public var purchase: Purchase.PurchaseTokenizer {
			get {
				return Purchase.PurchaseTokenizer(self.append("purchase")) 
			}
		}
	}

	/**  upgrade specific subscription for a household. Upon successful charge
	  entitlements to use the requested product or subscription are granted.  */
	public static func upgrade(purchase: Purchase) -> RequestBuilder<Transaction, Transaction.TransactionTokenizer, UpgradeTokenizer> {
		let request: RequestBuilder<Transaction, Transaction.TransactionTokenizer, UpgradeTokenizer> = RequestBuilder<Transaction, Transaction.TransactionTokenizer, UpgradeTokenizer>(service: "transaction", action: "upgrade")
			.setBody(key: "purchase", value: purchase)

		return request
	}

	public class ValidateReceiptTokenizer: ClientTokenizer  {
		
		public var externalReceipt: ExternalReceipt.ExternalReceiptTokenizer {
			get {
				return ExternalReceipt.ExternalReceiptTokenizer(self.append("externalReceipt")) 
			}
		}
	}

	/**  Verifies PPV/Subscription/Collection client purchase (such as InApp) and
	  entitles the user.  */
	public static func validateReceipt(externalReceipt: ExternalReceipt) -> RequestBuilder<Transaction, Transaction.TransactionTokenizer, ValidateReceiptTokenizer> {
		let request: RequestBuilder<Transaction, Transaction.TransactionTokenizer, ValidateReceiptTokenizer> = RequestBuilder<Transaction, Transaction.TransactionTokenizer, ValidateReceiptTokenizer>(service: "transaction", action: "validateReceipt")
			.setBody(key: "externalReceipt", value: externalReceipt)

		return request
	}
}
