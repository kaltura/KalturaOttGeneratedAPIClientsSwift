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

public final class EntitlementService{

	/**  Immediately cancel a subscription, PPV or collection. Cancel is possible only if
	  within cancellation window and content not already consumed  */
	public static func cancel(assetId: Int, transactionType: TransactionType) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "entitlement", action: "cancel")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "transactionType", value: transactionType.rawValue)

		return request
	}

	/**  Cancel a household service subscription at the next renewal. The subscription
	  stays valid till the next renewal.  */
	public static func cancelRenewal(subscriptionId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "entitlement", action: "cancelRenewal")
			.setBody(key: "subscriptionId", value: subscriptionId)

		return request
	}

	/**  Reconcile the user household&amp;#39;s entitlements with an external
	  entitlements source. This request is frequency protected to avoid too frequent
	  calls per household.  */
	public static func externalReconcile() -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "entitlement", action: "externalReconcile")

		return request
	}

	/**  Immediately cancel a subscription, PPV or collection. Cancel applies regardless
	  of cancellation window and content consumption status  */
	public static func forceCancel(assetId: Int, transactionType: TransactionType) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "entitlement", action: "forceCancel")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "transactionType", value: transactionType.rawValue)

		return request
	}

	public static func grant(productId: Int, productType: TransactionType, history: Bool) -> RequestBuilder<Bool> {
		return grant(productId: productId, productType: productType, history: history, contentId: 0)
	}

	/**  Grant household for an entitlement for a PPV or Subscription.  */
	public static func grant(productId: Int, productType: TransactionType, history: Bool, contentId: Int?) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "entitlement", action: "grant")
			.setBody(key: "productId", value: productId)
			.setBody(key: "productType", value: productType.rawValue)
			.setBody(key: "history", value: history)
			.setBody(key: "contentId", value: contentId)

		return request
	}

	public static func list(filter: EntitlementFilter) -> RequestBuilder<EntitlementListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Gets all the entitled media items for a household  */
	public static func list(filter: EntitlementFilter, pager: FilterPager?) -> RequestBuilder<EntitlementListResponse> {
		let request: RequestBuilder<EntitlementListResponse> = RequestBuilder<EntitlementListResponse>(service: "entitlement", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Swap current entitlement (subscription) with new entitlement (subscription) -
	  only Grant  */
	public static func swap(currentProductId: Int, newProductId: Int, history: Bool) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "entitlement", action: "swap")
			.setBody(key: "currentProductId", value: currentProductId)
			.setBody(key: "newProductId", value: newProductId)
			.setBody(key: "history", value: history)

		return request
	}

	/**  Update Kaltura Entitelment by Purchase id  */
	public static func update(id: Int, entitlement: Entitlement) -> RequestBuilder<Entitlement> {
		let request: RequestBuilder<Entitlement> = RequestBuilder<Entitlement>(service: "entitlement", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "entitlement", value: entitlement)

		return request
	}
}
