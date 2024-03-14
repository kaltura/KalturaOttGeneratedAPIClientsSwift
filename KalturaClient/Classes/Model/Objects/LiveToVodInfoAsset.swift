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

open class LiveToVodInfoAsset: ObjectBase {

	public class LiveToVodInfoAssetTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var linearAssetId: BaseTokenizedObject {
			get {
				return self.append("linearAssetId") 
			}
		}
		
		public var epgId: BaseTokenizedObject {
			get {
				return self.append("epgId") 
			}
		}
		
		public var epgChannelId: BaseTokenizedObject {
			get {
				return self.append("epgChannelId") 
			}
		}
		
		public var crid: BaseTokenizedObject {
			get {
				return self.append("crid") 
			}
		}
		
		public var originalStartDate: BaseTokenizedObject {
			get {
				return self.append("originalStartDate") 
			}
		}
		
		public var originalEndDate: BaseTokenizedObject {
			get {
				return self.append("originalEndDate") 
			}
		}
		
		public var paddingBeforeProgramStarts: BaseTokenizedObject {
			get {
				return self.append("paddingBeforeProgramStarts") 
			}
		}
		
		public var paddingAfterProgramEnds: BaseTokenizedObject {
			get {
				return self.append("paddingAfterProgramEnds") 
			}
		}
	}

	/**  Linear Asset Id  */
	public var linearAssetId: Int64? = nil
	/**  EPG Id  */
	public var epgId: String? = nil
	/**  EPG Channel Id  */
	public var epgChannelId: Int64? = nil
	/**  Crid  */
	public var crid: String? = nil
	/**  Original Start Date  */
	public var originalStartDate: Int64? = nil
	/**  Original End Date  */
	public var originalEndDate: Int64? = nil
	/**  Padding before program starts  */
	public var paddingBeforeProgramStarts: Int64? = nil
	/**  Padding after program ends  */
	public var paddingAfterProgramEnds: Int64? = nil


	public func setMultiRequestToken(linearAssetId: String) {
		self.dict["linearAssetId"] = linearAssetId
	}
	
	public func setMultiRequestToken(epgId: String) {
		self.dict["epgId"] = epgId
	}
	
	public func setMultiRequestToken(epgChannelId: String) {
		self.dict["epgChannelId"] = epgChannelId
	}
	
	public func setMultiRequestToken(crid: String) {
		self.dict["crid"] = crid
	}
	
	public func setMultiRequestToken(originalStartDate: String) {
		self.dict["originalStartDate"] = originalStartDate
	}
	
	public func setMultiRequestToken(originalEndDate: String) {
		self.dict["originalEndDate"] = originalEndDate
	}
	
	public func setMultiRequestToken(paddingBeforeProgramStarts: String) {
		self.dict["paddingBeforeProgramStarts"] = paddingBeforeProgramStarts
	}
	
	public func setMultiRequestToken(paddingAfterProgramEnds: String) {
		self.dict["paddingAfterProgramEnds"] = paddingAfterProgramEnds
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["linearAssetId"] != nil {
			linearAssetId = Int64("\(dict["linearAssetId"]!)")
		}
		if dict["epgId"] != nil {
			epgId = dict["epgId"] as? String
		}
		if dict["epgChannelId"] != nil {
			epgChannelId = Int64("\(dict["epgChannelId"]!)")
		}
		if dict["crid"] != nil {
			crid = dict["crid"] as? String
		}
		if dict["originalStartDate"] != nil {
			originalStartDate = Int64("\(dict["originalStartDate"]!)")
		}
		if dict["originalEndDate"] != nil {
			originalEndDate = Int64("\(dict["originalEndDate"]!)")
		}
		if dict["paddingBeforeProgramStarts"] != nil {
			paddingBeforeProgramStarts = Int64("\(dict["paddingBeforeProgramStarts"]!)")
		}
		if dict["paddingAfterProgramEnds"] != nil {
			paddingAfterProgramEnds = Int64("\(dict["paddingAfterProgramEnds"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(linearAssetId != nil) {
			dict["linearAssetId"] = linearAssetId!
		}
		if(epgId != nil) {
			dict["epgId"] = epgId!
		}
		if(epgChannelId != nil) {
			dict["epgChannelId"] = epgChannelId!
		}
		if(crid != nil) {
			dict["crid"] = crid!
		}
		if(originalStartDate != nil) {
			dict["originalStartDate"] = originalStartDate!
		}
		if(originalEndDate != nil) {
			dict["originalEndDate"] = originalEndDate!
		}
		if(paddingBeforeProgramStarts != nil) {
			dict["paddingBeforeProgramStarts"] = paddingBeforeProgramStarts!
		}
		if(paddingAfterProgramEnds != nil) {
			dict["paddingAfterProgramEnds"] = paddingAfterProgramEnds!
		}
		return dict
	}
}

