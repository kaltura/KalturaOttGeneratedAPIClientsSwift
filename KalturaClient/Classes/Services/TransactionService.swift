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

public final class TransactionService{

	public class DowngradeTokenizer: ClientTokenizer  {
		
		public func purchase<T: Purchase.PurchaseTokenizer>() -> T {
			return T(self.append("purchase"))
		}
	}

	/**  downgrade specific subscription for a household. entitlements will be updated on
	  the existing subscription end date.  */
	public static func downgrade(purchase: Purchase) -> NullRequestBuilder<DowngradeTokenizer> {
		let request: NullRequestBuilder<DowngradeTokenizer> = NullRequestBuilder<DowngradeTokenizer>(service: "transaction", action: "downgrade")
			.setParam(key: "purchase", value: purchase)

		return request
	}

	public class GetPurchaseSessionIdTokenizer: ClientTokenizer  {
		
		public func purchaseSession<T: PurchaseSession.PurchaseSessionTokenizer>() -> T {
			return T(self.append("purchaseSession"))
		}
	}

	/**  Retrieve the purchase session identifier  */
	public static func getPurchaseSessionId(purchaseSession: PurchaseSession) -> RequestBuilder<Int64, BaseTokenizedObject, GetPurchaseSessionIdTokenizer> {
		let request: RequestBuilder<Int64, BaseTokenizedObject, GetPurchaseSessionIdTokenizer> = RequestBuilder<Int64, BaseTokenizedObject, GetPurchaseSessionIdTokenizer>(service: "transaction", action: "getPurchaseSessionId")
			.setParam(key: "purchaseSession", value: purchaseSession)

		return request
	}

	public class PurchaseTokenizer: ClientTokenizer  {
		
		public func purchase_<T: Purchase.PurchaseTokenizer>() -> T {
			return T(self.append("purchase_"))
		}
	}

	/**  Purchase specific product or subscription for a household. Upon successful
	  charge entitlements to use the requested product or subscription are granted.  */
	public static func purchase(purchase_: Purchase) -> RequestBuilder<Transaction, Transaction.TransactionTokenizer, PurchaseTokenizer> {
		let request: RequestBuilder<Transaction, Transaction.TransactionTokenizer, PurchaseTokenizer> = RequestBuilder<Transaction, Transaction.TransactionTokenizer, PurchaseTokenizer>(service: "transaction", action: "purchase")
			.setParam(key: "purchase", value: purchase_)

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
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "transactionType", value: transactionType.rawValue)

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
		
		public func status<T: TransactionStatus.TransactionStatusTokenizer>() -> T {
			return T(self.append("status"))
		}
	}

	/**  Updates a pending purchase transaction state.  */
	public static func updateStatus(paymentGatewayId: String, externalTransactionId: String, signature: String, status: TransactionStatus) -> NullRequestBuilder<UpdateStatusTokenizer> {
		let request: NullRequestBuilder<UpdateStatusTokenizer> = NullRequestBuilder<UpdateStatusTokenizer>(service: "transaction", action: "updateStatus")
			.setParam(key: "paymentGatewayId", value: paymentGatewayId)
			.setParam(key: "externalTransactionId", value: externalTransactionId)
			.setParam(key: "signature", value: signature)
			.setParam(key: "status", value: status)

		return request
	}

	public class UpgradeTokenizer: ClientTokenizer  {
		
		public func purchase<T: Purchase.PurchaseTokenizer>() -> T {
			return T(self.append("purchase"))
		}
	}

	/**  upgrade specific subscription for a household. Upon successful charge
	  entitlements to use the requested product or subscription are granted.  */
	public static func upgrade(purchase: Purchase) -> RequestBuilder<Transaction, Transaction.TransactionTokenizer, UpgradeTokenizer> {
		let request: RequestBuilder<Transaction, Transaction.TransactionTokenizer, UpgradeTokenizer> = RequestBuilder<Transaction, Transaction.TransactionTokenizer, UpgradeTokenizer>(service: "transaction", action: "upgrade")
			.setParam(key: "purchase", value: purchase)

		return request
	}

	public class ValidateReceiptTokenizer: ClientTokenizer  {
		
		public func externalReceipt<T: ExternalReceipt.ExternalReceiptTokenizer>() -> T {
			return T(self.append("externalReceipt"))
		}
	}

	/**  Verifies PPV/Subscription/Collection client purchase (such as InApp) and
	  entitles the user.  */
	public static func validateReceipt(externalReceipt: ExternalReceipt) -> RequestBuilder<Transaction, Transaction.TransactionTokenizer, ValidateReceiptTokenizer> {
		let request: RequestBuilder<Transaction, Transaction.TransactionTokenizer, ValidateReceiptTokenizer> = RequestBuilder<Transaction, Transaction.TransactionTokenizer, ValidateReceiptTokenizer>(service: "transaction", action: "validateReceipt")
			.setParam(key: "externalReceipt", value: externalReceipt)

		return request
	}
}
