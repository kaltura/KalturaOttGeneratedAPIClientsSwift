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

	public class CancelTokenizer: ClientTokenizer  {
		
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

	/**  Immediately cancel a subscription, PPV or collection. Cancel is possible only if
	  within cancellation window and content not already consumed  */
	public static func cancel(assetId: Int, transactionType: TransactionType) -> RequestBuilder<Bool, BaseTokenizedObject, CancelTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, CancelTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, CancelTokenizer>(service: "entitlement", action: "cancel")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "transactionType", value: transactionType.rawValue)

		return request
	}

	public class CancelRenewalTokenizer: ClientTokenizer  {
		
		public var subscriptionId: BaseTokenizedObject {
			get {
				return self.append("subscriptionId") 
			}
		}
	}

	/**  Cancel a household service subscription at the next renewal. The subscription
	  stays valid till the next renewal.  */
	public static func cancelRenewal(subscriptionId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "entitlement", action: "cancelRenewal")
			.setBody(key: "subscriptionId", value: subscriptionId)

		return request
	}

	public class CancelScheduledSubscriptionTokenizer: ClientTokenizer  {
		
		public var scheduledSubscriptionId: BaseTokenizedObject {
			get {
				return self.append("scheduledSubscriptionId") 
			}
		}
	}

	/**  Cancel Scheduled Subscription  */
	public static func cancelScheduledSubscription(scheduledSubscriptionId: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, CancelScheduledSubscriptionTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, CancelScheduledSubscriptionTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, CancelScheduledSubscriptionTokenizer>(service: "entitlement", action: "cancelScheduledSubscription")
			.setBody(key: "scheduledSubscriptionId", value: scheduledSubscriptionId)

		return request
	}

	public class ExternalReconcileTokenizer: ClientTokenizer  {
	}

	/**  Reconcile the user household&amp;#39;s entitlements with an external
	  entitlements source. This request is frequency protected to avoid too frequent
	  calls per household.  */
	public static func externalReconcile() -> RequestBuilder<Bool, BaseTokenizedObject, ExternalReconcileTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ExternalReconcileTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ExternalReconcileTokenizer>(service: "entitlement", action: "externalReconcile")

		return request
	}

	public class ForceCancelTokenizer: ClientTokenizer  {
		
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

	/**  Immediately cancel a subscription, PPV or collection. Cancel applies regardless
	  of cancellation window and content consumption status  */
	public static func forceCancel(assetId: Int, transactionType: TransactionType) -> RequestBuilder<Bool, BaseTokenizedObject, ForceCancelTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, ForceCancelTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, ForceCancelTokenizer>(service: "entitlement", action: "forceCancel")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "transactionType", value: transactionType.rawValue)

		return request
	}

	public class GrantTokenizer: ClientTokenizer  {
		
		public var productId: BaseTokenizedObject {
			get {
				return self.append("productId") 
			}
		}
		
		public var productType: BaseTokenizedObject {
			get {
				return self.append("productType") 
			}
		}
		
		public var history: BaseTokenizedObject {
			get {
				return self.append("history") 
			}
		}
		
		public var contentId: BaseTokenizedObject {
			get {
				return self.append("contentId") 
			}
		}
	}

	public static func grant(productId: Int, productType: TransactionType, history: Bool) -> RequestBuilder<Bool, BaseTokenizedObject, GrantTokenizer> {
		return grant(productId: productId, productType: productType, history: history, contentId: 0)
	}

	/**  Grant household for an entitlement for a PPV or Subscription.  */
	public static func grant(productId: Int, productType: TransactionType, history: Bool, contentId: Int?) -> RequestBuilder<Bool, BaseTokenizedObject, GrantTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, GrantTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, GrantTokenizer>(service: "entitlement", action: "grant")
			.setBody(key: "productId", value: productId)
			.setBody(key: "productType", value: productType.rawValue)
			.setBody(key: "history", value: history)
			.setBody(key: "contentId", value: contentId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: EntitlementFilter.EntitlementFilterTokenizer {
			get {
				return EntitlementFilter.EntitlementFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list(filter: EntitlementFilter) -> RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Gets all the entitled media items for a household  */
	public static func list(filter: EntitlementFilter, pager: FilterPager?) -> RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer> = RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer>(service: "entitlement", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class SwapTokenizer: ClientTokenizer  {
		
		public var currentProductId: BaseTokenizedObject {
			get {
				return self.append("currentProductId") 
			}
		}
		
		public var newProductId: BaseTokenizedObject {
			get {
				return self.append("newProductId") 
			}
		}
		
		public var history: BaseTokenizedObject {
			get {
				return self.append("history") 
			}
		}
	}

	/**  Swap current entitlement (subscription) with new entitlement (subscription) -
	  only Grant  */
	public static func swap(currentProductId: Int, newProductId: Int, history: Bool) -> RequestBuilder<Bool, BaseTokenizedObject, SwapTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, SwapTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, SwapTokenizer>(service: "entitlement", action: "swap")
			.setBody(key: "currentProductId", value: currentProductId)
			.setBody(key: "newProductId", value: newProductId)
			.setBody(key: "history", value: history)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var entitlement: Entitlement.EntitlementTokenizer {
			get {
				return Entitlement.EntitlementTokenizer(self.append("entitlement")) 
			}
		}
	}

	/**  Update Kaltura Entitelment by Purchase id  */
	public static func update(id: Int, entitlement: Entitlement) -> RequestBuilder<Entitlement, Entitlement.EntitlementTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Entitlement, Entitlement.EntitlementTokenizer, UpdateTokenizer> = RequestBuilder<Entitlement, Entitlement.EntitlementTokenizer, UpdateTokenizer>(service: "entitlement", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "entitlement", value: entitlement)

		return request
	}
}
