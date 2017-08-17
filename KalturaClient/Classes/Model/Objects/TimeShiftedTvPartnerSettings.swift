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

open class TimeShiftedTvPartnerSettings: ObjectBase {

	/**  Is catch-up enabled  */
	public var catchUpEnabled: Bool? = nil
	/**  Is c-dvr enabled  */
	public var cdvrEnabled: Bool? = nil
	/**  Is start-over enabled  */
	public var startOverEnabled: Bool? = nil
	/**  Is trick-play enabled  */
	public var trickPlayEnabled: Bool? = nil
	/**  Is recording schedule window enabled  */
	public var recordingScheduleWindowEnabled: Bool? = nil
	/**  Is recording protection enabled  */
	public var protectionEnabled: Bool? = nil
	/**  Catch-up buffer length  */
	public var catchUpBufferLength: Int64? = nil
	/**  Trick play buffer length  */
	public var trickPlayBufferLength: Int64? = nil
	/**  Recording schedule window. Indicates how long (in minutes) after the program
	  starts it is allowed to schedule the recording  */
	public var recordingScheduleWindow: Int64? = nil
	/**  Indicates how long (in seconds) before the program starts the recording will
	  begin  */
	public var paddingBeforeProgramStarts: Int64? = nil
	/**  Indicates how long (in seconds) after the program ends the recording will end  */
	public var paddingAfterProgramEnds: Int64? = nil
	/**  Specify the time in days that a recording should be protected. Start time begins
	  at protection request.  */
	public var protectionPeriod: Int? = nil
	/**  Indicates how many percent of the quota can be used for protection  */
	public var protectionQuotaPercentage: Int? = nil
	/**  Specify the time in days that a recording should be kept for user. Start time
	  begins with the program end date.  */
	public var recordingLifetimePeriod: Int? = nil
	/**  The time in days before the recording lifetime is due from which the client
	  should be able to warn user about deletion.  */
	public var cleanupNoticePeriod: Int? = nil
	/**  Is recording of series enabled  */
	public var seriesRecordingEnabled: Bool? = nil
	/**  Is recording playback for non-entitled channel enables  */
	public var nonEntitledChannelPlaybackEnabled: Bool? = nil
	/**  Is recording playback for non-existing channel enables  */
	public var nonExistingChannelPlaybackEnabled: Bool? = nil
	/**  Quota Policy  */
	public var quotaOveragePolicy: QuotaOveragePolicy? = nil
	/**  Protection Policy  */
	public var protectionPolicy: ProtectionPolicy? = nil
	/**  The time in days for recovery recording that was delete by Auto Delete .  */
	public var recoveryGracePeriod: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["catchUpEnabled"] != nil {
			catchUpEnabled = dict["catchUpEnabled"] as? Bool
		}
		if dict["cdvrEnabled"] != nil {
			cdvrEnabled = dict["cdvrEnabled"] as? Bool
		}
		if dict["startOverEnabled"] != nil {
			startOverEnabled = dict["startOverEnabled"] as? Bool
		}
		if dict["trickPlayEnabled"] != nil {
			trickPlayEnabled = dict["trickPlayEnabled"] as? Bool
		}
		if dict["recordingScheduleWindowEnabled"] != nil {
			recordingScheduleWindowEnabled = dict["recordingScheduleWindowEnabled"] as? Bool
		}
		if dict["protectionEnabled"] != nil {
			protectionEnabled = dict["protectionEnabled"] as? Bool
		}
		if dict["catchUpBufferLength"] != nil {
			catchUpBufferLength = dict["catchUpBufferLength"] as? Int64
		}
		if dict["trickPlayBufferLength"] != nil {
			trickPlayBufferLength = dict["trickPlayBufferLength"] as? Int64
		}
		if dict["recordingScheduleWindow"] != nil {
			recordingScheduleWindow = dict["recordingScheduleWindow"] as? Int64
		}
		if dict["paddingBeforeProgramStarts"] != nil {
			paddingBeforeProgramStarts = dict["paddingBeforeProgramStarts"] as? Int64
		}
		if dict["paddingAfterProgramEnds"] != nil {
			paddingAfterProgramEnds = dict["paddingAfterProgramEnds"] as? Int64
		}
		if dict["protectionPeriod"] != nil {
			protectionPeriod = dict["protectionPeriod"] as? Int
		}
		if dict["protectionQuotaPercentage"] != nil {
			protectionQuotaPercentage = dict["protectionQuotaPercentage"] as? Int
		}
		if dict["recordingLifetimePeriod"] != nil {
			recordingLifetimePeriod = dict["recordingLifetimePeriod"] as? Int
		}
		if dict["cleanupNoticePeriod"] != nil {
			cleanupNoticePeriod = dict["cleanupNoticePeriod"] as? Int
		}
		if dict["seriesRecordingEnabled"] != nil {
			seriesRecordingEnabled = dict["seriesRecordingEnabled"] as? Bool
		}
		if dict["nonEntitledChannelPlaybackEnabled"] != nil {
			nonEntitledChannelPlaybackEnabled = dict["nonEntitledChannelPlaybackEnabled"] as? Bool
		}
		if dict["nonExistingChannelPlaybackEnabled"] != nil {
			nonExistingChannelPlaybackEnabled = dict["nonExistingChannelPlaybackEnabled"] as? Bool
		}
		if dict["quotaOveragePolicy"] != nil {
			quotaOveragePolicy = QuotaOveragePolicy(rawValue: "\(dict["quotaOveragePolicy"]!)")
		}
		if dict["protectionPolicy"] != nil {
			protectionPolicy = ProtectionPolicy(rawValue: "\(dict["protectionPolicy"]!)")
		}
		if dict["recoveryGracePeriod"] != nil {
			recoveryGracePeriod = dict["recoveryGracePeriod"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(catchUpEnabled != nil) {
			dict["catchUpEnabled"] = catchUpEnabled!
		}
		if(cdvrEnabled != nil) {
			dict["cdvrEnabled"] = cdvrEnabled!
		}
		if(startOverEnabled != nil) {
			dict["startOverEnabled"] = startOverEnabled!
		}
		if(trickPlayEnabled != nil) {
			dict["trickPlayEnabled"] = trickPlayEnabled!
		}
		if(recordingScheduleWindowEnabled != nil) {
			dict["recordingScheduleWindowEnabled"] = recordingScheduleWindowEnabled!
		}
		if(protectionEnabled != nil) {
			dict["protectionEnabled"] = protectionEnabled!
		}
		if(catchUpBufferLength != nil) {
			dict["catchUpBufferLength"] = catchUpBufferLength!
		}
		if(trickPlayBufferLength != nil) {
			dict["trickPlayBufferLength"] = trickPlayBufferLength!
		}
		if(recordingScheduleWindow != nil) {
			dict["recordingScheduleWindow"] = recordingScheduleWindow!
		}
		if(paddingBeforeProgramStarts != nil) {
			dict["paddingBeforeProgramStarts"] = paddingBeforeProgramStarts!
		}
		if(paddingAfterProgramEnds != nil) {
			dict["paddingAfterProgramEnds"] = paddingAfterProgramEnds!
		}
		if(protectionPeriod != nil) {
			dict["protectionPeriod"] = protectionPeriod!
		}
		if(protectionQuotaPercentage != nil) {
			dict["protectionQuotaPercentage"] = protectionQuotaPercentage!
		}
		if(recordingLifetimePeriod != nil) {
			dict["recordingLifetimePeriod"] = recordingLifetimePeriod!
		}
		if(cleanupNoticePeriod != nil) {
			dict["cleanupNoticePeriod"] = cleanupNoticePeriod!
		}
		if(seriesRecordingEnabled != nil) {
			dict["seriesRecordingEnabled"] = seriesRecordingEnabled!
		}
		if(nonEntitledChannelPlaybackEnabled != nil) {
			dict["nonEntitledChannelPlaybackEnabled"] = nonEntitledChannelPlaybackEnabled!
		}
		if(nonExistingChannelPlaybackEnabled != nil) {
			dict["nonExistingChannelPlaybackEnabled"] = nonExistingChannelPlaybackEnabled!
		}
		if(quotaOveragePolicy != nil) {
			dict["quotaOveragePolicy"] = quotaOveragePolicy!.rawValue
		}
		if(protectionPolicy != nil) {
			dict["protectionPolicy"] = protectionPolicy!.rawValue
		}
		if(recoveryGracePeriod != nil) {
			dict["recoveryGracePeriod"] = recoveryGracePeriod!
		}
		return dict
	}
}

