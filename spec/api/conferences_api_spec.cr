#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/twilio/api/conferences_api"

# Unit tests for Twilio::ConferencesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ConferencesApi" do
  describe "test an instance of ConferencesApi" do
    it "should create an instance of ConferencesApi" do
      api_instance = Twilio::ConferencesApi.new
      api_instance.should be_a(Twilio::ConferencesApi)
    end
  end

  # unit tests for create_participant
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that will create the resource.
  # @param conference_sid The SID of the participant&#39;s conference.
  # @param from The phone number, Client identifier, or username portion of SIP address that made this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). Client identifiers are formatted &#x60;client:name&#x60;. If using a phone number, it must be a Twilio number or a Verified [outgoing caller id](https://www.twilio.com/docs/voice/api/outgoing-caller-ids) for your account. If the &#x60;to&#x60; parameter is a phone number, &#x60;from&#x60; must also be a phone number. If &#x60;to&#x60; is sip address, this value of &#x60;from&#x60; should be a username portion to be used to populate the P-Asserted-Identity header that is passed to the SIP endpoint.
  # @param to The phone number, SIP address, or Client identifier that received this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). SIP addresses are formatted as &#x60;sip:name@company.com&#x60;. Client identifiers are formatted &#x60;client:name&#x60;. [Custom parameters](https://www.twilio.com/docs/voice/api/conference-participant-resource#custom-parameters) may also be specified.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :amd_status_callback The URL that we should call using the &#x60;amd_status_callback_method&#x60; to notify customer application whether the call was answered by human, machine or fax.
  # @option opts [HttpMethod] :amd_status_callback_method
  # @option opts [String] :beep Whether to play a notification beep to the conference when the participant joins. Can be: &#x60;true&#x60;, &#x60;false&#x60;, &#x60;onEnter&#x60;, or &#x60;onExit&#x60;. The default value is &#x60;true&#x60;.
  # @option opts [String] :byoc The SID of a BYOC (Bring Your Own Carrier) trunk to route this call with. Note that &#x60;byoc&#x60; is only meaningful when &#x60;to&#x60; is a phone number; it will otherwise be ignored. (Beta)
  # @option opts [String] :call_reason The Reason for the outgoing call. Use it to specify the purpose of the call that is presented on the called party&#39;s phone. (Branded Calls Beta)
  # @option opts [String] :call_sid_to_coach The SID of the participant who is being &#x60;coached&#x60;. The participant being coached is the only participant who can hear the participant who is &#x60;coaching&#x60;.
  # @option opts [String] :caller_id The phone number, Client identifier, or username portion of SIP address that made this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). Client identifiers are formatted &#x60;client:name&#x60;. If using a phone number, it must be a Twilio number or a Verified [outgoing caller id](https://www.twilio.com/docs/voice/api/outgoing-caller-ids) for your account. If the &#x60;to&#x60; parameter is a phone number, &#x60;callerId&#x60; must also be a phone number. If &#x60;to&#x60; is sip address, this value of &#x60;callerId&#x60; should be a username portion to be used to populate the From header that is passed to the SIP endpoint.
  # @option opts [Bool] :coaching Whether the participant is coaching another call. Can be: &#x60;true&#x60; or &#x60;false&#x60;. If not present, defaults to &#x60;false&#x60; unless &#x60;call_sid_to_coach&#x60; is defined. If &#x60;true&#x60;, &#x60;call_sid_to_coach&#x60; must be defined.
  # @option opts [String] :conference_record Whether to record the conference the participant is joining. Can be: &#x60;true&#x60;, &#x60;false&#x60;, &#x60;record-from-start&#x60;, and &#x60;do-not-record&#x60;. The default value is &#x60;false&#x60;.
  # @option opts [String] :conference_recording_status_callback The URL we should call using the &#x60;conference_recording_status_callback_method&#x60; when the conference recording is available.
  # @option opts [Array(String)] :conference_recording_status_callback_event The conference recording state changes that generate a call to &#x60;conference_recording_status_callback&#x60;. Can be: &#x60;in-progress&#x60;, &#x60;completed&#x60;, &#x60;failed&#x60;, and &#x60;absent&#x60;. Separate multiple values with a space, ex: &#x60;&#39;in-progress completed failed&#39;&#x60;
  # @option opts [HttpMethod] :conference_recording_status_callback_method
  # @option opts [String] :conference_status_callback The URL we should call using the &#x60;conference_status_callback_method&#x60; when the conference events in &#x60;conference_status_callback_event&#x60; occur. Only the value set by the first participant to join the conference is used. Subsequent &#x60;conference_status_callback&#x60; values are ignored.
  # @option opts [Array(String)] :conference_status_callback_event The conference state changes that should generate a call to &#x60;conference_status_callback&#x60;. Can be: &#x60;start&#x60;, &#x60;end&#x60;, &#x60;join&#x60;, &#x60;leave&#x60;, &#x60;mute&#x60;, &#x60;hold&#x60;, &#x60;modify&#x60;, &#x60;speaker&#x60;, and &#x60;announcement&#x60;. Separate multiple values with a space. Defaults to &#x60;start end&#x60;.
  # @option opts [HttpMethod] :conference_status_callback_method
  # @option opts [String] :conference_trim Whether to trim leading and trailing silence from your recorded conference audio files. Can be: &#x60;trim-silence&#x60; or &#x60;do-not-trim&#x60; and defaults to &#x60;trim-silence&#x60;.
  # @option opts [Bool] :early_media Whether to allow an agent to hear the state of the outbound call, including ringing or disconnect messages. Can be: &#x60;true&#x60; or &#x60;false&#x60; and defaults to &#x60;true&#x60;.
  # @option opts [Bool] :end_conference_on_exit Whether to end the conference when the participant leaves. Can be: &#x60;true&#x60; or &#x60;false&#x60; and defaults to &#x60;false&#x60;.
  # @option opts [String] :jitter_buffer_size Jitter buffer size for the connecting participant. Twilio will use this setting to apply Jitter Buffer before participant&#39;s audio is mixed into the conference. Can be: &#x60;off&#x60;, &#x60;small&#x60;, &#x60;medium&#x60;, and &#x60;large&#x60;. Default to &#x60;large&#x60;.
  # @option opts [String] :label A label for this participant. If one is supplied, it may subsequently be used to fetch, update or delete the participant.
  # @option opts [String] :machine_detection Whether to detect if a human, answering machine, or fax has picked up the call. Can be: &#x60;Enable&#x60; or &#x60;DetectMessageEnd&#x60;. Use &#x60;Enable&#x60; if you would like us to return &#x60;AnsweredBy&#x60; as soon as the called party is identified. Use &#x60;DetectMessageEnd&#x60;, if you would like to leave a message on an answering machine. If &#x60;send_digits&#x60; is provided, this parameter is ignored. For more information, see [Answering Machine Detection](https://www.twilio.com/docs/voice/answering-machine-detection).
  # @option opts [Int32] :machine_detection_silence_timeout The number of milliseconds of initial silence after which an &#x60;unknown&#x60; AnsweredBy result will be returned. Possible Values: 2000-10000. Default: 5000.
  # @option opts [Int32] :machine_detection_speech_end_threshold The number of milliseconds of silence after speech activity at which point the speech activity is considered complete. Possible Values: 500-5000. Default: 1200.
  # @option opts [Int32] :machine_detection_speech_threshold The number of milliseconds that is used as the measuring stick for the length of the speech activity, where durations lower than this value will be interpreted as a human and longer than this value as a machine. Possible Values: 1000-6000. Default: 2400.
  # @option opts [Int32] :machine_detection_timeout The number of seconds that we should attempt to detect an answering machine before timing out and sending a voice request with &#x60;AnsweredBy&#x60; of &#x60;unknown&#x60;. The default timeout is 30 seconds.
  # @option opts [Int32] :max_participants The maximum number of participants in the conference. Can be a positive integer from &#x60;2&#x60; to &#x60;250&#x60;. The default value is &#x60;250&#x60;.
  # @option opts [Bool] :muted Whether the agent is muted in the conference. Can be &#x60;true&#x60; or &#x60;false&#x60; and the default is &#x60;false&#x60;.
  # @option opts [Bool] :record Whether to record the participant and their conferences, including the time between conferences. Can be &#x60;true&#x60; or &#x60;false&#x60; and the default is &#x60;false&#x60;.
  # @option opts [String] :recording_channels The recording channels for the final recording. Can be: &#x60;mono&#x60; or &#x60;dual&#x60; and the default is &#x60;mono&#x60;.
  # @option opts [String] :recording_status_callback The URL that we should call using the &#x60;recording_status_callback_method&#x60; when the recording status changes.
  # @option opts [Array(String)] :recording_status_callback_event The recording state changes that should generate a call to &#x60;recording_status_callback&#x60;. Can be: &#x60;started&#x60;, &#x60;in-progress&#x60;, &#x60;paused&#x60;, &#x60;resumed&#x60;, &#x60;stopped&#x60;, &#x60;completed&#x60;, &#x60;failed&#x60;, and &#x60;absent&#x60;. Separate multiple values with a space, ex: &#x60;&#39;in-progress completed failed&#39;&#x60;.
  # @option opts [HttpMethod] :recording_status_callback_method
  # @option opts [String] :recording_track The audio track to record for the call. Can be: &#x60;inbound&#x60;, &#x60;outbound&#x60; or &#x60;both&#x60;. The default is &#x60;both&#x60;. &#x60;inbound&#x60; records the audio that is received by Twilio. &#x60;outbound&#x60; records the audio that is sent from Twilio. &#x60;both&#x60; records the audio that is received and sent by Twilio.
  # @option opts [String] :region The [region](https://support.twilio.com/hc/en-us/articles/223132167-How-global-low-latency-routing-and-region-selection-work-for-conferences-and-Client-calls) where we should mix the recorded audio. Can be:&#x60;us1&#x60;, &#x60;ie1&#x60;, &#x60;de1&#x60;, &#x60;sg1&#x60;, &#x60;br1&#x60;, &#x60;au1&#x60;, or &#x60;jp1&#x60;.
  # @option opts [String] :sip_auth_password The SIP password for authentication.
  # @option opts [String] :sip_auth_username The SIP username used for authentication.
  # @option opts [Bool] :start_conference_on_enter Whether to start the conference when the participant joins, if it has not already started. Can be: &#x60;true&#x60; or &#x60;false&#x60; and the default is &#x60;true&#x60;. If &#x60;false&#x60; and the conference has not started, the participant is muted and hears background music until another participant starts the conference.
  # @option opts [String] :status_callback The URL we should call using the &#x60;status_callback_method&#x60; to send status information to your application.
  # @option opts [Array(String)] :status_callback_event The conference state changes that should generate a call to &#x60;status_callback&#x60;. Can be: &#x60;initiated&#x60;, &#x60;ringing&#x60;, &#x60;answered&#x60;, and &#x60;completed&#x60;. Separate multiple values with a space. The default value is &#x60;completed&#x60;.
  # @option opts [HttpMethod] :status_callback_method
  # @option opts [Int32] :time_limit The maximum duration of the call in seconds. Constraints depend on account and configuration.
  # @option opts [Int32] :timeout The number of seconds that we should allow the phone to ring before assuming there is no answer. Can be an integer between &#x60;5&#x60; and &#x60;600&#x60;, inclusive. The default value is &#x60;60&#x60;. We always add a 5-second timeout buffer to outgoing calls, so  value of 10 would result in an actual timeout that was closer to 15 seconds.
  # @option opts [HttpMethod] :wait_method
  # @option opts [String] :wait_url The URL we should call using the &#x60;wait_method&#x60; for the music to play while participants are waiting for the conference to start. The default value is the URL of our standard hold music. [Learn more about hold music](https://www.twilio.com/labs/twimlets/holdmusic).
  # @return [ConferenceParticipant]
  describe "create_participant test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_conference_recording
  # Delete a recording from your account
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference Recording resources to delete.
  # @param conference_sid The Conference SID that identifies the conference associated with the recording to delete.
  # @param sid The Twilio-provided string that uniquely identifies the Conference Recording resource to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_conference_recording test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_participant
  # Kick a participant from a given conference
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Participant resources to delete.
  # @param conference_sid The SID of the conference with the participants to delete.
  # @param call_sid The [Call](https://www.twilio.com/docs/voice/api/call-resource) SID or label of the participant to delete. Non URL safe characters in a label must be percent encoded, for example, a space character is represented as %20.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_participant test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fetch_conference
  # Fetch an instance of a conference
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference resource(s) to fetch.
  # @param sid The Twilio-provided string that uniquely identifies the Conference resource to fetch
  # @param [Hash] opts the optional parameters
  # @return [Conference]
  describe "fetch_conference test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fetch_conference_recording
  # Fetch an instance of a recording for a call
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference Recording resource to fetch.
  # @param conference_sid The Conference SID that identifies the conference associated with the recording to fetch.
  # @param sid The Twilio-provided string that uniquely identifies the Conference Recording resource to fetch.
  # @param [Hash] opts the optional parameters
  # @return [ConferenceConferenceRecording]
  describe "fetch_conference_recording test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fetch_participant
  # Fetch an instance of a participant
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Participant resource to fetch.
  # @param conference_sid The SID of the conference with the participant to fetch.
  # @param call_sid The [Call](https://www.twilio.com/docs/voice/api/call-resource) SID or label of the participant to fetch. Non URL safe characters in a label must be percent encoded, for example, a space character is represented as %20.
  # @param [Hash] opts the optional parameters
  # @return [ConferenceParticipant]
  describe "fetch_participant test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_conference
  # Retrieve a list of conferences belonging to the account used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference resource(s) to read.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :date_created The &#x60;date_created&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. To read conferences that started on or before midnight on a date, use &#x60;&lt;&#x3D;YYYY-MM-DD&#x60;, and to specify  conferences that started on or after midnight on a date, use &#x60;&gt;&#x3D;YYYY-MM-DD&#x60;.
  # @option opts [Time] :date_created2 The &#x60;date_created&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. To read conferences that started on or before midnight on a date, use &#x60;&lt;&#x3D;YYYY-MM-DD&#x60;, and to specify  conferences that started on or after midnight on a date, use &#x60;&gt;&#x3D;YYYY-MM-DD&#x60;.
  # @option opts [Time] :date_created3 The &#x60;date_created&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. To read conferences that started on or before midnight on a date, use &#x60;&lt;&#x3D;YYYY-MM-DD&#x60;, and to specify  conferences that started on or after midnight on a date, use &#x60;&gt;&#x3D;YYYY-MM-DD&#x60;.
  # @option opts [Time] :date_updated The &#x60;date_updated&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. To read conferences that were last updated on or before midnight on a date, use &#x60;&lt;&#x3D;YYYY-MM-DD&#x60;, and to specify conferences that were last updated on or after midnight on a given date, use  &#x60;&gt;&#x3D;YYYY-MM-DD&#x60;.
  # @option opts [Time] :date_updated2 The &#x60;date_updated&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. To read conferences that were last updated on or before midnight on a date, use &#x60;&lt;&#x3D;YYYY-MM-DD&#x60;, and to specify conferences that were last updated on or after midnight on a given date, use  &#x60;&gt;&#x3D;YYYY-MM-DD&#x60;.
  # @option opts [Time] :date_updated3 The &#x60;date_updated&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. To read conferences that were last updated on or before midnight on a date, use &#x60;&lt;&#x3D;YYYY-MM-DD&#x60;, and to specify conferences that were last updated on or after midnight on a given date, use  &#x60;&gt;&#x3D;YYYY-MM-DD&#x60;.
  # @option opts [String] :friendly_name The string that identifies the Conference resources to read.
  # @option opts [ConferenceEnumStatus] :status The status of the resources to read. Can be: &#x60;init&#x60;, &#x60;in-progress&#x60;, or &#x60;completed&#x60;.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListConferenceResponse]
  describe "list_conference test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_conference_recording
  # Retrieve a list of recordings belonging to the call used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference Recording resources to read.
  # @param conference_sid The Conference SID that identifies the conference associated with the recording to read.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :date_created The &#x60;date_created&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. You can also specify inequality: &#x60;DateCreated&lt;&#x3D;YYYY-MM-DD&#x60; will return recordings generated at or before midnight on a given date, and &#x60;DateCreated&gt;&#x3D;YYYY-MM-DD&#x60; returns recordings generated at or after midnight on a date.
  # @option opts [Time] :date_created2 The &#x60;date_created&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. You can also specify inequality: &#x60;DateCreated&lt;&#x3D;YYYY-MM-DD&#x60; will return recordings generated at or before midnight on a given date, and &#x60;DateCreated&gt;&#x3D;YYYY-MM-DD&#x60; returns recordings generated at or after midnight on a date.
  # @option opts [Time] :date_created3 The &#x60;date_created&#x60; value, specified as &#x60;YYYY-MM-DD&#x60;, of the resources to read. You can also specify inequality: &#x60;DateCreated&lt;&#x3D;YYYY-MM-DD&#x60; will return recordings generated at or before midnight on a given date, and &#x60;DateCreated&gt;&#x3D;YYYY-MM-DD&#x60; returns recordings generated at or after midnight on a date.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListConferenceRecordingResponse]
  describe "list_conference_recording test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for list_participant
  # Retrieve a list of participants belonging to the account used to make the request
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Participant resources to read.
  # @param conference_sid The SID of the conference with the participants to read.
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :muted Whether to return only participants that are muted. Can be: &#x60;true&#x60; or &#x60;false&#x60;.
  # @option opts [Bool] :hold Whether to return only participants that are on hold. Can be: &#x60;true&#x60; or &#x60;false&#x60;.
  # @option opts [Bool] :coaching Whether to return only participants who are coaching another call. Can be: &#x60;true&#x60; or &#x60;false&#x60;.
  # @option opts [Int32] :page_size How many resources to return in each list page. The default is 50, and the maximum is 1000.
  # @return [ListParticipantResponse]
  describe "list_participant test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for update_conference
  #
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference resource(s) to update.
  # @param sid The Twilio-provided string that uniquely identifies the Conference resource to update
  # @param [Hash] opts the optional parameters
  # @option opts [HttpMethod] :announce_method
  # @option opts [String] :announce_url The URL we should call to announce something into the conference. The URL may return an MP3 file, a WAV file, or a TwiML document that contains &#x60;&lt;Play&gt;&#x60;, &#x60;&lt;Say&gt;&#x60;, &#x60;&lt;Pause&gt;&#x60;, or &#x60;&lt;Redirect&gt;&#x60; verbs.
  # @option opts [ConferenceEnumUpdateStatus] :status
  # @return [Conference]
  describe "update_conference test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for update_conference_recording
  # Changes the status of the recording to paused, stopped, or in-progress. Note: To use &#x60;Twilio.CURRENT&#x60;, pass it as recording sid.
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference Recording resource to update.
  # @param conference_sid The Conference SID that identifies the conference associated with the recording to update.
  # @param sid The Twilio-provided string that uniquely identifies the Conference Recording resource to update. Use &#x60;Twilio.CURRENT&#x60; to reference the current active recording.
  # @param status
  # @param [Hash] opts the optional parameters
  # @option opts [String] :pause_behavior Whether to record during a pause. Can be: &#x60;skip&#x60; or &#x60;silence&#x60; and the default is &#x60;silence&#x60;. &#x60;skip&#x60; does not record during the pause period, while &#x60;silence&#x60; will replace the actual audio of the call with silence during the pause period. This parameter only applies when setting &#x60;status&#x60; is set to &#x60;paused&#x60;.
  # @return [ConferenceConferenceRecording]
  describe "update_conference_recording test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for update_participant
  # Update the properties of the participant
  # @param account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Participant resources to update.
  # @param conference_sid The SID of the conference with the participant to update.
  # @param call_sid The [Call](https://www.twilio.com/docs/voice/api/call-resource) SID or label of the participant to update. Non URL safe characters in a label must be percent encoded, for example, a space character is represented as %20.
  # @param [Hash] opts the optional parameters
  # @option opts [HttpMethod] :announce_method
  # @option opts [String] :announce_url The URL we call using the &#x60;announce_method&#x60; for an announcement to the participant. The URL may return an MP3 file, a WAV file, or a TwiML document that contains &#x60;&lt;Play&gt;&#x60;, &#x60;&lt;Say&gt;&#x60;, &#x60;&lt;Pause&gt;&#x60;, or &#x60;&lt;Redirect&gt;&#x60; verbs.
  # @option opts [Bool] :beep_on_exit Whether to play a notification beep to the conference when the participant exits. Can be: &#x60;true&#x60; or &#x60;false&#x60;.
  # @option opts [String] :call_sid_to_coach The SID of the participant who is being &#x60;coached&#x60;. The participant being coached is the only participant who can hear the participant who is &#x60;coaching&#x60;.
  # @option opts [Bool] :coaching Whether the participant is coaching another call. Can be: &#x60;true&#x60; or &#x60;false&#x60;. If not present, defaults to &#x60;false&#x60; unless &#x60;call_sid_to_coach&#x60; is defined. If &#x60;true&#x60;, &#x60;call_sid_to_coach&#x60; must be defined.
  # @option opts [Bool] :end_conference_on_exit Whether to end the conference when the participant leaves. Can be: &#x60;true&#x60; or &#x60;false&#x60; and defaults to &#x60;false&#x60;.
  # @option opts [Bool] :hold Whether the participant should be on hold. Can be: &#x60;true&#x60; or &#x60;false&#x60;. &#x60;true&#x60; puts the participant on hold, and &#x60;false&#x60; lets them rejoin the conference.
  # @option opts [HttpMethod] :hold_method
  # @option opts [String] :hold_url The URL we call using the &#x60;hold_method&#x60; for music that plays when the participant is on hold. The URL may return an MP3 file, a WAV file, or a TwiML document that contains &#x60;&lt;Play&gt;&#x60;, &#x60;&lt;Say&gt;&#x60;, &#x60;&lt;Pause&gt;&#x60;, or &#x60;&lt;Redirect&gt;&#x60; verbs.
  # @option opts [Bool] :muted Whether the participant should be muted. Can be &#x60;true&#x60; or &#x60;false&#x60;. &#x60;true&#x60; will mute the participant, and &#x60;false&#x60; will un-mute them. Anything value other than &#x60;true&#x60; or &#x60;false&#x60; is interpreted as &#x60;false&#x60;.
  # @option opts [HttpMethod] :wait_method
  # @option opts [String] :wait_url The URL we call using the &#x60;wait_method&#x60; for the music to play while participants are waiting for the conference to start. The URL may return an MP3 file, a WAV file, or a TwiML document that contains &#x60;&lt;Play&gt;&#x60;, &#x60;&lt;Say&gt;&#x60;, &#x60;&lt;Pause&gt;&#x60;, or &#x60;&lt;Redirect&gt;&#x60; verbs. The default value is the URL of our standard hold music. [Learn more about hold music](https://www.twilio.com/labs/twimlets/holdmusic).
  # @return [ConferenceParticipant]
  describe "update_participant test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
