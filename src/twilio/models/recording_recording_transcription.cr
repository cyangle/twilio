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
  class RecordingRecordingTranscription
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    property account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to create the transcription
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

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

    # The duration of the transcribed audio in seconds.
    @[JSON::Field(key: "duration", type: String?, presence: true, ignore_serialize: duration.nil? && !duration_present?)]
    property duration : String?

    @[JSON::Field(ignore: true)]
    property? duration_present : Bool = false

    # The charge for the transcription
    @[JSON::Field(key: "price", type: String?, presence: true, ignore_serialize: price.nil? && !price_present?)]
    property price : String?

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The currency in which price is measured
    @[JSON::Field(key: "price_unit", type: String?, presence: true, ignore_serialize: price_unit.nil? && !price_unit_present?)]
    property price_unit : String?

    @[JSON::Field(ignore: true)]
    property? price_unit_present : Bool = false

    # The SID that identifies the transcription's recording
    @[JSON::Field(key: "recording_sid", type: String?, presence: true, ignore_serialize: recording_sid.nil? && !recording_sid_present?)]
    property recording_sid : String?

    @[JSON::Field(ignore: true)]
    property? recording_sid_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    property sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The status of the transcription
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    property status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    # The text content of the transcription.
    @[JSON::Field(key: "transcription_text", type: String?, presence: true, ignore_serialize: transcription_text.nil? && !transcription_text_present?)]
    property transcription_text : String?

    @[JSON::Field(ignore: true)]
    property? transcription_text_present : Bool = false

    # The transcription type
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    property _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String | Int32 | Float64)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        value.nil? || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @api_version : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @duration : String? = nil, @price : String? = nil, @price_unit : String? = nil, @recording_sid : String? = nil, @sid : String? = nil, @status : String? = nil, @transcription_text : String? = nil, @_type : String? = nil, @uri : String? = nil)
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

      if !@recording_sid.nil? && @recording_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"recording_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@recording_sid.nil? && @recording_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"recording_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !@recording_sid.nil? && @recording_sid !~ pattern
        invalid_properties.push("invalid value for \"recording_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^TR[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@recording_sid.nil? && @recording_sid.to_s.size > 34
      return false if !@recording_sid.nil? && @recording_sid.to_s.size < 34
      return false if !@recording_sid.nil? && @recording_sid !~ /^RE[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^TR[0-9a-fA-F]{32}$/
      status_validator = EnumAttributeValidator.new("String", ["in-progress", "completed", "failed"])
      return false unless status_validator.valid?(@status)
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
    # @param [Object] recording_sid Value to be assigned
    def recording_sid=(recording_sid)
      if !recording_sid.nil? && recording_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"recording_sid\", the character length must be smaller than or equal to 34.")
      end

      if !recording_sid.nil? && recording_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"recording_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^RE[0-9a-fA-F]{32}$/
      if !recording_sid.nil? && recording_sid !~ pattern
        raise ArgumentError.new("invalid value for \"recording_sid\", must conform to the pattern #{pattern}.")
      end

      @recording_sid = recording_sid
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

      pattern = /^TR[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new("String", ["in-progress", "completed", "failed"])
      unless validator.valid?(status)
        raise ArgumentError.new("invalid value for \"status\", must be one of #{validator.allowable_values}.")
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        duration == o.duration &&
        price == o.price &&
        price_unit == o.price_unit &&
        recording_sid == o.recording_sid &&
        sid == o.sid &&
        status == o.status &&
        transcription_text == o.transcription_text &&
        _type == o._type &&
        uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_sid, api_version, date_created, date_updated, duration, price, price_unit, recording_sid, sid, status, transcription_text, _type, uri].hash
    end
  end
end
