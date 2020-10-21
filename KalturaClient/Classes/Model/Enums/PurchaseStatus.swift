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
public enum PurchaseStatus: String {
	case PPV_PURCHASED = "ppv_purchased"
	case FREE = "free"
	case FOR_PURCHASE_SUBSCRIPTION_ONLY = "for_purchase_subscription_only"
	case SUBSCRIPTION_PURCHASED = "subscription_purchased"
	case FOR_PURCHASE = "for_purchase"
	case SUBSCRIPTION_PURCHASED_WRONG_CURRENCY = "subscription_purchased_wrong_currency"
	case PRE_PAID_PURCHASED = "pre_paid_purchased"
	case GEO_COMMERCE_BLOCKED = "geo_commerce_blocked"
	case ENTITLED_TO_PREVIEW_MODULE = "entitled_to_preview_module"
	case FIRST_DEVICE_LIMITATION = "first_device_limitation"
	case COLLECTION_PURCHASED = "collection_purchased"
	case USER_SUSPENDED = "user_suspended"
	case NOT_FOR_PURCHASE = "not_for_purchase"
	case INVALID_CURRENCY = "invalid_currency"
	case CURRENCY_NOT_DEFINED_ON_PRICE_CODE = "currency_not_defined_on_price_code"
}
