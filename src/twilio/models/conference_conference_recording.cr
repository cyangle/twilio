#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.29.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Twilio
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ConferenceConferenceRecording
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to create the recording
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The SID of the Call the resource is associated with
    @[JSON::Field(key: "call_sid", type: String?, presence: true, ignore_serialize: call_sid.nil? && !call_sid_present?)]
    getter call_sid : String?

    @[JSON::Field(ignore: true)]
    property? call_sid_present : Bool = false

    # The number of channels in the final recording file as an integer
    @[JSON::Field(key: "channels", type: Int32?, presence: true, ignore_serialize: channels.nil? && !channels_present?)]
    property channels : Int32?

    @[JSON::Field(ignore: true)]
    property? channels_present : Bool = false

    # The Conference SID that identifies the conference associated with the recording
    @[JSON::Field(key: "conference_sid", type: String?, presence: true, ignore_serialize: conference_sid.nil? && !conference_sid_present?)]
    getter conference_sid : String?

    @[JSON::Field(ignore: true)]
    property? conference_sid_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The length of the recording in seconds
    @[JSON::Field(key: "duration", type: String?, presence: true, ignore_serialize: duration.nil? && !duration_present?)]
    property duration : String?

    @[JSON::Field(ignore: true)]
    property? duration_present : Bool = false

    @[JSON::Field(key: "encryption_details", type: EncryptionDetails?, presence: true, ignore_serialize: encryption_details.nil? && !encryption_details_present?)]
    property encryption_details : EncryptionDetails?

    @[JSON::Field(ignore: true)]
    property? encryption_details_present : Bool = false

    # More information about why the recording is missing, if status is `absent`.
    @[JSON::Field(key: "error_code", type: Int32?, presence: true, ignore_serialize: error_code.nil? && !error_code_present?)]
    property error_code : Int32?

    @[JSON::Field(ignore: true)]
    property? error_code_present : Bool = false

    # The one-time cost of creating the recording.
    @[JSON::Field(key: "price", type: String?, presence: true, ignore_serialize: price.nil? && !price_present?)]
    property price : String?

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The currency used in the price property.
    @[JSON::Field(key: "price_unit", type: String?, presence: true, ignore_serialize: price_unit.nil? && !price_unit_present?)]
    property price_unit : String?

    @[JSON::Field(ignore: true)]
    property? price_unit_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # How the recording was created
    @[JSON::Field(key: "source", type: String?, presence: true, ignore_serialize: source.nil? && !source_present?)]
    getter source : String?

    @[JSON::Field(ignore: true)]
    property? source_present : Bool = false

    ENUM_VALIDATOR_FOR_SOURCE = EnumValidator.new("source", "String", ["DialVerb", "Conference", "OutboundAPI", "Trunking", "RecordVerb", "StartCallRecordingAPI", "StartConferenceRecordingAPI"])

    # The start time of the recording, given in RFC 2822 format
    @[JSON::Field(key: "start_time", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: start_time.nil? && !start_time_present?)]
    property start_time : Time?

    @[JSON::Field(ignore: true)]
    property? start_time_present : Bool = false

    # The status of the recording
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["in-progress", "paused", "stopped", "processing", "completed", "absent"])

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @api_version : String? = nil, @call_sid : String? = nil, @channels : Int32? = nil, @conference_sid : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @duration : String? = nil, @encryption_details : EncryptionDetails? = nil, @error_code : Int32? = nil, @price : String? = nil, @price_unit : String? = nil, @sid : String? = nil, @source : String? = nil, @start_time : Time? = nil, @status : String? = nil, @uri : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@account_sid.nil? && @account_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@account_sid.nil? && @account_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@account_sid.nil? && @account_sid !~ pattern
        invalid_properties.push("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      if !@call_sid.nil? && @call_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@call_sid.nil? && @call_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !@call_sid.nil? && @call_sid !~ pattern
        invalid_properties.push("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
      end

      if !@conference_sid.nil? && @conference_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"conference_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@conference_sid.nil? && @conference_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"conference_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CF[0-9a-fA-F]{32}$/
      if !@conference_sid.nil? && @conference_sid !~ pattern
        invalid_properties.push("invalid value for \"conference_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SOURCE.error_message) unless ENUM_VALIDATOR_FOR_SOURCE.valid?(@source)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/

      return false if !@call_sid.nil? && @call_sid.to_s.size > 34
      return false if !@call_sid.nil? && @call_sid.to_s.size < 34
      return false if !@call_sid.nil? && @call_sid !~ /^CA[0-9a-fA-F]{32}$/

      return false if !@conference_sid.nil? && @conference_sid.to_s.size > 34
      return false if !@conference_sid.nil? && @conference_sid.to_s.size < 34
      return false if !@conference_sid.nil? && @conference_sid !~ /^CF[0-9a-fA-F]{32}$/

      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^RE[0-9a-fA-F]{32}$/

      return false unless ENUM_VALIDATOR_FOR_SOURCE.valid?(@source)

      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_sid Value to be assigned
    def account_sid=(account_sid)
      if !account_sid.nil? && account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !account_sid.nil? && account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !account_sid.nil? && account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      @account_sid = account_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] call_sid Value to be assigned
    def call_sid=(call_sid)
      if !call_sid.nil? && call_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !call_sid.nil? && call_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !call_sid.nil? && call_sid !~ pattern
        raise ArgumentError.new("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
      end

      @call_sid = call_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] conference_sid Value to be assigned
    def conference_sid=(conference_sid)
      if !conference_sid.nil? && conference_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"conference_sid\", the character length must be smaller than or equal to 34.")
      end

      if !conference_sid.nil? && conference_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"conference_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CF[0-9a-fA-F]{32}$/
      if !conference_sid.nil? && conference_sid !~ pattern
        raise ArgumentError.new("invalid value for \"conference_sid\", must conform to the pattern #{pattern}.")
      end

      @conference_sid = conference_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] sid Value to be assigned
    def sid=(sid)
      if !sid.nil? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source)
      ENUM_VALIDATOR_FOR_SOURCE.valid!(source)
      @source = source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status)
      @status = status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @api_version, @call_sid, @channels, @conference_sid, @date_created, @date_updated, @duration, @encryption_details, @error_code, @price, @price_unit, @sid, @source, @start_time, @status, @uri)
  end
end
