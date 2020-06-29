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

/**  Linear media asset info  */
open class LiveAsset: MediaAsset {

	public class LiveAssetTokenizer: MediaAsset.MediaAssetTokenizer {
		
		public var enableCdvrState: BaseTokenizedObject {
			get {
				return self.append("enableCdvrState") 
			}
		}
		
		public var enableCatchUpState: BaseTokenizedObject {
			get {
				return self.append("enableCatchUpState") 
			}
		}
		
		public var enableStartOverState: BaseTokenizedObject {
			get {
				return self.append("enableStartOverState") 
			}
		}
		
		public var bufferCatchUpSetting: BaseTokenizedObject {
			get {
				return self.append("bufferCatchUpSetting") 
			}
		}
		
		public var bufferTrickPlaySetting: BaseTokenizedObject {
			get {
				return self.append("bufferTrickPlaySetting") 
			}
		}
		
		public var enableRecordingPlaybackNonEntitledChannelState: BaseTokenizedObject {
			get {
				return self.append("enableRecordingPlaybackNonEntitledChannelState") 
			}
		}
		
		public var enableTrickPlayState: BaseTokenizedObject {
			get {
				return self.append("enableTrickPlayState") 
			}
		}
		
		public var externalEpgIngestId: BaseTokenizedObject {
			get {
				return self.append("externalEpgIngestId") 
			}
		}
		
		public var externalCdvrId: BaseTokenizedObject {
			get {
				return self.append("externalCdvrId") 
			}
		}
		
		public var enableCdvr: BaseTokenizedObject {
			get {
				return self.append("enableCdvr") 
			}
		}
		
		public var enableCatchUp: BaseTokenizedObject {
			get {
				return self.append("enableCatchUp") 
			}
		}
		
		public var enableStartOver: BaseTokenizedObject {
			get {
				return self.append("enableStartOver") 
			}
		}
		
		public var catchUpBuffer: BaseTokenizedObject {
			get {
				return self.append("catchUpBuffer") 
			}
		}
		
		public var trickPlayBuffer: BaseTokenizedObject {
			get {
				return self.append("trickPlayBuffer") 
			}
		}
		
		public var enableRecordingPlaybackNonEntitledChannel: BaseTokenizedObject {
			get {
				return self.append("enableRecordingPlaybackNonEntitledChannel") 
			}
		}
		
		public var enableTrickPlay: BaseTokenizedObject {
			get {
				return self.append("enableTrickPlay") 
			}
		}
		
		public var channelType: BaseTokenizedObject {
			get {
				return self.append("channelType") 
			}
		}
	}

	/**  Enable CDVR, configuration only  */
	public var enableCdvrState: TimeShiftedTvState? = nil
	/**  Enable catch-up, configuration only  */
	public var enableCatchUpState: TimeShiftedTvState? = nil
	/**  Enable start over, configuration only  */
	public var enableStartOverState: TimeShiftedTvState? = nil
	/**  buffer Catch-up, configuration only  */
	public var bufferCatchUpSetting: Int64? = nil
	/**  buffer Trick-play, configuration only  */
	public var bufferTrickPlaySetting: Int64? = nil
	/**  Enable Recording playback for non entitled channel, configuration only  */
	public var enableRecordingPlaybackNonEntitledChannelState: TimeShiftedTvState? = nil
	/**  Enable trick-play, configuration only  */
	public var enableTrickPlayState: TimeShiftedTvState? = nil
	/**  External identifier used when ingesting programs for this linear media asset  */
	public var externalEpgIngestId: String? = nil
	/**  External identifier for the CDVR  */
	public var externalCdvrId: String? = nil
	/**  Is CDVR enabled for this asset  */
	public var enableCdvr: Bool? = nil
	/**  Is catch-up enabled for this asset  */
	public var enableCatchUp: Bool? = nil
	/**  Is start over enabled for this asset  */
	public var enableStartOver: Bool? = nil
	/**  summed Catch-up buffer, the TimeShiftedTvPartnerSettings are also taken into
	  consideration  */
	public var catchUpBuffer: Int64? = nil
	/**  summed Trick-play buffer, the TimeShiftedTvPartnerSettings are also taken into
	  consideration  */
	public var trickPlayBuffer: Int64? = nil
	/**  Is recording playback for non entitled channel enabled for this asset  */
	public var enableRecordingPlaybackNonEntitledChannel: Bool? = nil
	/**  Is trick-play enabled for this asset  */
	public var enableTrickPlay: Bool? = nil
	/**  channel type, possible values: UNKNOWN, DTT, OTT, DTT_AND_OTT  */
	public var channelType: LinearChannelType? = nil


	public func setMultiRequestToken(enableCdvrState: String) {
		self.dict["enableCdvrState"] = enableCdvrState
	}
	
	public func setMultiRequestToken(enableCatchUpState: String) {
		self.dict["enableCatchUpState"] = enableCatchUpState
	}
	
	public func setMultiRequestToken(enableStartOverState: String) {
		self.dict["enableStartOverState"] = enableStartOverState
	}
	
	public func setMultiRequestToken(bufferCatchUpSetting: String) {
		self.dict["bufferCatchUpSetting"] = bufferCatchUpSetting
	}
	
	public func setMultiRequestToken(bufferTrickPlaySetting: String) {
		self.dict["bufferTrickPlaySetting"] = bufferTrickPlaySetting
	}
	
	public func setMultiRequestToken(enableRecordingPlaybackNonEntitledChannelState: String) {
		self.dict["enableRecordingPlaybackNonEntitledChannelState"] = enableRecordingPlaybackNonEntitledChannelState
	}
	
	public func setMultiRequestToken(enableTrickPlayState: String) {
		self.dict["enableTrickPlayState"] = enableTrickPlayState
	}
	
	public func setMultiRequestToken(externalEpgIngestId: String) {
		self.dict["externalEpgIngestId"] = externalEpgIngestId
	}
	
	public func setMultiRequestToken(externalCdvrId: String) {
		self.dict["externalCdvrId"] = externalCdvrId
	}
	
	public func setMultiRequestToken(enableCdvr: String) {
		self.dict["enableCdvr"] = enableCdvr
	}
	
	public func setMultiRequestToken(enableCatchUp: String) {
		self.dict["enableCatchUp"] = enableCatchUp
	}
	
	public func setMultiRequestToken(enableStartOver: String) {
		self.dict["enableStartOver"] = enableStartOver
	}
	
	public func setMultiRequestToken(catchUpBuffer: String) {
		self.dict["catchUpBuffer"] = catchUpBuffer
	}
	
	public func setMultiRequestToken(trickPlayBuffer: String) {
		self.dict["trickPlayBuffer"] = trickPlayBuffer
	}
	
	public func setMultiRequestToken(enableRecordingPlaybackNonEntitledChannel: String) {
		self.dict["enableRecordingPlaybackNonEntitledChannel"] = enableRecordingPlaybackNonEntitledChannel
	}
	
	public func setMultiRequestToken(enableTrickPlay: String) {
		self.dict["enableTrickPlay"] = enableTrickPlay
	}
	
	public func setMultiRequestToken(channelType: String) {
		self.dict["channelType"] = channelType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["enableCdvrState"] != nil {
			enableCdvrState = TimeShiftedTvState(rawValue: "\(dict["enableCdvrState"]!)")
		}
		if dict["enableCatchUpState"] != nil {
			enableCatchUpState = TimeShiftedTvState(rawValue: "\(dict["enableCatchUpState"]!)")
		}
		if dict["enableStartOverState"] != nil {
			enableStartOverState = TimeShiftedTvState(rawValue: "\(dict["enableStartOverState"]!)")
		}
		if dict["bufferCatchUpSetting"] != nil {
			bufferCatchUpSetting = Int64("\(dict["bufferCatchUpSetting"]!)")
		}
		if dict["bufferTrickPlaySetting"] != nil {
			bufferTrickPlaySetting = Int64("\(dict["bufferTrickPlaySetting"]!)")
		}
		if dict["enableRecordingPlaybackNonEntitledChannelState"] != nil {
			enableRecordingPlaybackNonEntitledChannelState = TimeShiftedTvState(rawValue: "\(dict["enableRecordingPlaybackNonEntitledChannelState"]!)")
		}
		if dict["enableTrickPlayState"] != nil {
			enableTrickPlayState = TimeShiftedTvState(rawValue: "\(dict["enableTrickPlayState"]!)")
		}
		if dict["externalEpgIngestId"] != nil {
			externalEpgIngestId = dict["externalEpgIngestId"] as? String
		}
		if dict["externalCdvrId"] != nil {
			externalCdvrId = dict["externalCdvrId"] as? String
		}
		if dict["enableCdvr"] != nil {
			enableCdvr = dict["enableCdvr"] as? Bool
		}
		if dict["enableCatchUp"] != nil {
			enableCatchUp = dict["enableCatchUp"] as? Bool
		}
		if dict["enableStartOver"] != nil {
			enableStartOver = dict["enableStartOver"] as? Bool
		}
		if dict["catchUpBuffer"] != nil {
			catchUpBuffer = Int64("\(dict["catchUpBuffer"]!)")
		}
		if dict["trickPlayBuffer"] != nil {
			trickPlayBuffer = Int64("\(dict["trickPlayBuffer"]!)")
		}
		if dict["enableRecordingPlaybackNonEntitledChannel"] != nil {
			enableRecordingPlaybackNonEntitledChannel = dict["enableRecordingPlaybackNonEntitledChannel"] as? Bool
		}
		if dict["enableTrickPlay"] != nil {
			enableTrickPlay = dict["enableTrickPlay"] as? Bool
		}
		if dict["channelType"] != nil {
			channelType = LinearChannelType(rawValue: "\(dict["channelType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(enableCdvrState != nil) {
			dict["enableCdvrState"] = enableCdvrState!.rawValue
		}
		if(enableCatchUpState != nil) {
			dict["enableCatchUpState"] = enableCatchUpState!.rawValue
		}
		if(enableStartOverState != nil) {
			dict["enableStartOverState"] = enableStartOverState!.rawValue
		}
		if(bufferCatchUpSetting != nil) {
			dict["bufferCatchUpSetting"] = bufferCatchUpSetting!
		}
		if(bufferTrickPlaySetting != nil) {
			dict["bufferTrickPlaySetting"] = bufferTrickPlaySetting!
		}
		if(enableRecordingPlaybackNonEntitledChannelState != nil) {
			dict["enableRecordingPlaybackNonEntitledChannelState"] = enableRecordingPlaybackNonEntitledChannelState!.rawValue
		}
		if(enableTrickPlayState != nil) {
			dict["enableTrickPlayState"] = enableTrickPlayState!.rawValue
		}
		if(externalEpgIngestId != nil) {
			dict["externalEpgIngestId"] = externalEpgIngestId!
		}
		if(externalCdvrId != nil) {
			dict["externalCdvrId"] = externalCdvrId!
		}
		if(channelType != nil) {
			dict["channelType"] = channelType!.rawValue
		}
		return dict
	}
}

