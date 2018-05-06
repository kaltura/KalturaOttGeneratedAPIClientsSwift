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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Linear media asset info  */
open class LinearMediaAsset: MediaAsset {

	public class LinearMediaAssetTokenizer: MediaAsset.MediaAssetTokenizer {
		
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
		
		public var bufferCatchUp: BaseTokenizedObject {
			get {
				return self.append("bufferCatchUp") 
			}
		}
		
		public var bufferTrickPlay: BaseTokenizedObject {
			get {
				return self.append("bufferTrickPlay") 
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
		
		public var externalIngestId: BaseTokenizedObject {
			get {
				return self.append("externalIngestId") 
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
	}

	/**  Enable CDVR, configuration only  */
	public var enableCdvrState: TimeShiftedTvState? = nil
	/**  Enable catch-up, configuration only  */
	public var enableCatchUpState: TimeShiftedTvState? = nil
	/**  Enable start over, configuration only  */
	public var enableStartOverState: TimeShiftedTvState? = nil
	/**  buffer Catch-up, configuration only  */
	public var bufferCatchUp: Int64? = nil
	/**  buffer Trick-play, configuration only  */
	public var bufferTrickPlay: Int64? = nil
	/**  Enable Recording playback for non entitled channel, configuration only  */
	public var enableRecordingPlaybackNonEntitledChannelState: TimeShiftedTvState? = nil
	/**  Enable trick-play, configuration only  */
	public var enableTrickPlayState: TimeShiftedTvState? = nil
	/**  External identifier used when ingesting programs for this linear media asset  */
	public var externalIngestId: String? = nil
	/**  External identifier for the CDVR  */
	public var externalCdvrId: String? = nil
	/**  Is CDVR enabled for this asset  */
	public var enableCdvr: Bool? = nil
	/**  Is catch-up enabled for this asset  */
	public var enableCatchUp: Bool? = nil
	/**  Is start over enabled for this asset  */
	public var enableStartOver: Bool? = nil
	/**  Catch-up buffer  */
	public var catchUpBuffer: Int64? = nil
	/**  buffer Trick-play  */
	public var trickPlayBuffer: Int64? = nil
	/**  Is recording playback for non entitled channel enabled for this asset  */
	public var enableRecordingPlaybackNonEntitledChannel: Bool? = nil
	/**  Is trick-play enabled for this asset  */
	public var enableTrickPlay: Bool? = nil


	public func setMultiRequestToken(enableCdvrState: String) {
		self.dict["enableCdvrState"] = enableCdvrState
	}
	
	public func setMultiRequestToken(enableCatchUpState: String) {
		self.dict["enableCatchUpState"] = enableCatchUpState
	}
	
	public func setMultiRequestToken(enableStartOverState: String) {
		self.dict["enableStartOverState"] = enableStartOverState
	}
	
	public func setMultiRequestToken(bufferCatchUp: String) {
		self.dict["bufferCatchUp"] = bufferCatchUp
	}
	
	public func setMultiRequestToken(bufferTrickPlay: String) {
		self.dict["bufferTrickPlay"] = bufferTrickPlay
	}
	
	public func setMultiRequestToken(enableRecordingPlaybackNonEntitledChannelState: String) {
		self.dict["enableRecordingPlaybackNonEntitledChannelState"] = enableRecordingPlaybackNonEntitledChannelState
	}
	
	public func setMultiRequestToken(enableTrickPlayState: String) {
		self.dict["enableTrickPlayState"] = enableTrickPlayState
	}
	
	public func setMultiRequestToken(externalIngestId: String) {
		self.dict["externalIngestId"] = externalIngestId
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
	
	internal override func populate(_ dict: [String: Any]) throws {
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
		if dict["bufferCatchUp"] != nil {
			bufferCatchUp = Int64("\(dict["bufferCatchUp"]!)")
		}
		if dict["bufferTrickPlay"] != nil {
			bufferTrickPlay = Int64("\(dict["bufferTrickPlay"]!)")
		}
		if dict["enableRecordingPlaybackNonEntitledChannelState"] != nil {
			enableRecordingPlaybackNonEntitledChannelState = TimeShiftedTvState(rawValue: "\(dict["enableRecordingPlaybackNonEntitledChannelState"]!)")
		}
		if dict["enableTrickPlayState"] != nil {
			enableTrickPlayState = TimeShiftedTvState(rawValue: "\(dict["enableTrickPlayState"]!)")
		}
		if dict["externalIngestId"] != nil {
			externalIngestId = dict["externalIngestId"] as? String
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
		if(bufferCatchUp != nil) {
			dict["bufferCatchUp"] = bufferCatchUp!
		}
		if(bufferTrickPlay != nil) {
			dict["bufferTrickPlay"] = bufferTrickPlay!
		}
		if(enableRecordingPlaybackNonEntitledChannelState != nil) {
			dict["enableRecordingPlaybackNonEntitledChannelState"] = enableRecordingPlaybackNonEntitledChannelState!.rawValue
		}
		if(enableTrickPlayState != nil) {
			dict["enableTrickPlayState"] = enableTrickPlayState!.rawValue
		}
		if(externalIngestId != nil) {
			dict["externalIngestId"] = externalIngestId!
		}
		if(externalCdvrId != nil) {
			dict["externalCdvrId"] = externalCdvrId!
		}
		return dict
	}
}

