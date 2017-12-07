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
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "transactionType", value: transactionType.rawValue)

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
	public static func cancelRenewal(subscriptionId: String) -> NullRequestBuilder<CancelRenewalTokenizer> {
		let request: NullRequestBuilder<CancelRenewalTokenizer> = NullRequestBuilder<CancelRenewalTokenizer>(service: "entitlement", action: "cancelRenewal")
			.setParam(key: "subscriptionId", value: subscriptionId)

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
			.setParam(key: "scheduledSubscriptionId", value: scheduledSubscriptionId)

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
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "transactionType", value: transactionType.rawValue)

		return request
	}

	public class GetNextRenewalTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Returns the data about the next renewal  */
	public static func getNextRenewal(id: Int) -> RequestBuilder<EntitlementRenewal, EntitlementRenewal.EntitlementRenewalTokenizer, GetNextRenewalTokenizer> {
		let request: RequestBuilder<EntitlementRenewal, EntitlementRenewal.EntitlementRenewalTokenizer, GetNextRenewalTokenizer> = RequestBuilder<EntitlementRenewal, EntitlementRenewal.EntitlementRenewalTokenizer, GetNextRenewalTokenizer>(service: "entitlement", action: "getNextRenewal")
			.setParam(key: "id", value: id)

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
			.setParam(key: "productId", value: productId)
			.setParam(key: "productType", value: productType.rawValue)
			.setParam(key: "history", value: history)
			.setParam(key: "contentId", value: contentId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: EntitlementFilter.EntitlementFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: EntitlementFilter) -> RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Gets all the entitled media items for a household  */
	public static func list(filter: EntitlementFilter, pager: FilterPager?) -> RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer> = RequestBuilder<EntitlementListResponse, EntitlementListResponse.EntitlementListResponseTokenizer, ListTokenizer>(service: "entitlement", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

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
			.setParam(key: "currentProductId", value: currentProductId)
			.setParam(key: "newProductId", value: newProductId)
			.setParam(key: "history", value: history)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func entitlement<T: Entitlement.EntitlementTokenizer>() -> T {
			return T(self.append("entitlement"))
		}
	}

	/**  Update Kaltura Entitelment by Purchase id  */
	public static func update(id: Int, entitlement: Entitlement) -> RequestBuilder<Entitlement, Entitlement.EntitlementTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Entitlement, Entitlement.EntitlementTokenizer, UpdateTokenizer> = RequestBuilder<Entitlement, Entitlement.EntitlementTokenizer, UpdateTokenizer>(service: "entitlement", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "entitlement", value: entitlement)

		return request
	}
}
