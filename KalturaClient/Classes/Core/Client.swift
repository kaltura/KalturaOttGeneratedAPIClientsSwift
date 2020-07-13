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

@objc public class Client: RequestBuilderData {
	public var configuration: ConnectionConfiguration
	
	@objc public init(_ config: ConnectionConfiguration) {
		configuration = config
		
		super.init()
		
		clientTag = "swift:20-07-13"
		apiVersion = "5.2.8.26204"
	}
}

public class ClientTokenizer: BaseTokenizedObject {
	
	/**
	 * Client tag
	 */
	public var clientTag: BaseTokenizedObject {
		get {
			return self.append("clientTag")
		}
	}
	
	/**
	 * API Version
	 */
	public var apiVersion: BaseTokenizedObject {
		get {
			return self.append("apiVersion")
		}
	}
	
	/**
	 * Impersonated partner id
	 */
	public var partnerId: BaseTokenizedObject {
		get {
			return self.append("partnerId")
		}
	}
	
	/**
	 * Impersonated user id
	 */
	public var userId: BaseTokenizedObject {
		get {
			return self.append("userId")
		}
	}
	
	/**
	 * Content language
	 */
	public var language: BaseTokenizedObject {
		get {
			return self.append("language")
		}
	}
	
	/**
	 * Content currency
	 */
	public var currency: BaseTokenizedObject {
		get {
			return self.append("currency")
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var ks: BaseTokenizedObject {
		get {
			return self.append("ks")
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var sessionId: BaseTokenizedObject {
		get {
			return self.append("ks")
		}
	}
	
	/**
	 * Response profile - this attribute will be automatically unset after every API call
	 */
	public var responseProfile: BaseTokenizedObject {
		get {
			return self.append("responseProfile")
		}
	}
	
	/**
	 * Abort the Multireuqset call if any error occurs in one of the requests
	 */
	public var abortOnError: BaseTokenizedObject {
		get {
			return self.append("abortOnError")
		}
	}
	
	/**
	 * Abort all following requests if current request has an error
	 */
	public var abortAllOnError: BaseTokenizedObject {
		get {
			return self.append("abortAllOnError")
		}
	}
	
	/**
	 * Skip current request according to skip condition
	 */
	public var skipCondition: BaseTokenizedObject {
		get {
			return self.append("skipCondition")
		}
	}
}

extension RequestBuilderData{
	/**
	 * Client tag
	 */
	public var clientTag: String?{
		get{
			return params["clientTag"] as? String
		}
		set(value){
			setParam(key: "clientTag", value: value)
		}
	}
	
	/**
	 * API Version
	 */
	public var apiVersion: String?{
		get{
			return params["apiVersion"] as? String
		}
		set(value){
			setParam(key: "apiVersion", value: value)
		}
	}
	
	/**
	 * Impersonated partner id
	 */
	public var partnerId: Int?{
		get{
			return params["partnerId"] as? Int
		}
		set(value){
			setParam(key: "partnerId", value: value)
		}
	}
	
	/**
	 * Impersonated user id
	 */
	public var userId: Int?{
		get{
			return params["userId"] as? Int
		}
		set(value){
			setParam(key: "userId", value: value)
		}
	}
	
	/**
	 * Content language
	 */
	public var language: String?{
		get{
			return params["language"] as? String
		}
		set(value){
			setParam(key: "language", value: value)
		}
	}
	
	/**
	 * Content currency
	 */
	public var currency: String?{
		get{
			return params["currency"] as? String
		}
		set(value){
			setParam(key: "currency", value: value)
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var ks: String?{
		get{
			return params["ks"] as? String
		}
		set(value){
			setParam(key: "ks", value: value)
		}
	}
	
	/**
	 * Kaltura API session
	 */
	public var sessionId: String?{
		get{
			return params["ks"] as? String
		}
		set(value){
			setParam(key: "ks", value: value)
		}
	}
	
	/**
	 * Response profile - this attribute will be automatically unset after every API call
	 */
	public var responseProfile: BaseResponseProfile?{
		get{
			return params["responseProfile"] as? BaseResponseProfile
		}
		set(value){
			setParam(key: "responseProfile", value: value)
		}
	}
	
	/**
	 * Abort the Multireuqset call if any error occurs in one of the requests
	 */
	public var abortOnError: Bool?{
		get{
			return params["abortOnError"] as? Bool
		}
		set(value){
			setParam(key: "abortOnError", value: value)
		}
	}
	
	/**
	 * Abort all following requests if current request has an error
	 */
	public var abortAllOnError: Bool?{
		get{
			return params["abortAllOnError"] as? Bool
		}
		set(value){
			setParam(key: "abortAllOnError", value: value)
		}
	}
	
	/**
	 * Skip current request according to skip condition
	 */
	public var skipCondition: SkipCondition?{
		get{
			return params["skipCondition"] as? SkipCondition
		}
		set(value){
			setParam(key: "skipCondition", value: value)
		}
	}
	
	public func applyParams(_ requestBuilder: RequestBuilderData) {
		if requestBuilder.clientTag == nil {
			requestBuilder.clientTag = clientTag
		}
		if requestBuilder.apiVersion == nil {
			requestBuilder.apiVersion = apiVersion
		}
		if requestBuilder.partnerId == nil {
			requestBuilder.partnerId = partnerId
		}
		if requestBuilder.userId == nil {
			requestBuilder.userId = userId
		}
		if requestBuilder.language == nil {
			requestBuilder.language = language
		}
		if requestBuilder.currency == nil {
			requestBuilder.currency = currency
		}
		if requestBuilder.ks == nil {
			requestBuilder.ks = ks
		}
		if requestBuilder.abortOnError == nil {
			requestBuilder.abortOnError = abortOnError
		}
		if requestBuilder.abortAllOnError == nil {
			requestBuilder.abortAllOnError = abortAllOnError
		}
		if requestBuilder.skipCondition == nil {
			requestBuilder.skipCondition = skipCondition
		}
	}
}
