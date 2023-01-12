#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./call_recording_enum_status"
require "./encryption_details"
require "./recording_enum_source"

module Twilio
  class CallCallRecording
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_SID = 34
    MIN_LENGTH_FOR_ACCOUNT_SID = 34
    PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to make the recording
    @[JSON::Field(key: "api_version", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    getter api_version : String? = nil

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The SID of the Call the resource is associated with
    @[JSON::Field(key: "call_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: call_sid.nil? && !call_sid_present?)]
    getter call_sid : String? = nil
    MAX_LENGTH_FOR_CALL_SID = 34
    MIN_LENGTH_FOR_CALL_SID = 34
    PATTERN_FOR_CALL_SID    = /^CA[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? call_sid_present : Bool = false

    # The number of channels in the final recording file
    @[JSON::Field(key: "channels", type: Int32?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: channels.nil? && !channels_present?)]
    getter channels : Int32? = nil

    @[JSON::Field(ignore: true)]
    property? channels_present : Bool = false

    # The Conference SID that identifies the conference associated with the recording
    @[JSON::Field(key: "conference_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: conference_sid.nil? && !conference_sid_present?)]
    getter conference_sid : String? = nil
    MAX_LENGTH_FOR_CONFERENCE_SID = 34
    MIN_LENGTH_FOR_CONFERENCE_SID = 34
    PATTERN_FOR_CONFERENCE_SID    = /^CF[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? conference_sid_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_created.nil? && !date_created_present?, converter: Time::RFC2822Converter)]
    getter date_created : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?, converter: Time::RFC2822Converter)]
    getter date_updated : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The length of the recording in seconds
    @[JSON::Field(key: "duration", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: duration.nil? && !duration_present?)]
    getter duration : String? = nil

    @[JSON::Field(ignore: true)]
    property? duration_present : Bool = false

    @[JSON::Field(key: "encryption_details", type: Twilio::EncryptionDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: encryption_details.nil? && !encryption_details_present?)]
    getter encryption_details : Twilio::EncryptionDetails? = nil

    @[JSON::Field(ignore: true)]
    property? encryption_details_present : Bool = false

    # More information about why the recording is missing, if status is `absent`.
    @[JSON::Field(key: "error_code", type: Int32?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error_code.nil? && !error_code_present?)]
    getter error_code : Int32? = nil

    @[JSON::Field(ignore: true)]
    property? error_code_present : Bool = false

    # The one-time cost of creating the recording.
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price.nil? && !price_present?)]
    getter price : String? = nil

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The currency used in the price property.
    @[JSON::Field(key: "price_unit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price_unit.nil? && !price_unit_present?)]
    getter price_unit : String? = nil

    @[JSON::Field(ignore: true)]
    property? price_unit_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^RE[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    @[JSON::Field(key: "source", type: Twilio::RecordingEnumSource?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source : Twilio::RecordingEnumSource? = nil

    # The start time of the recording, given in RFC 2822 format
    @[JSON::Field(key: "start_time", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: start_time.nil? && !start_time_present?, converter: Time::RFC2822Converter)]
    getter start_time : Time? = nil

    @[JSON::Field(ignore: true)]
    property? start_time_present : Bool = false

    @[JSON::Field(key: "status", type: Twilio::CallRecordingEnumStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : Twilio::CallRecordingEnumStatus? = nil

    # The recorded track. Can be: `inbound`, `outbound`, or `both`.
    @[JSON::Field(key: "track", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: track.nil? && !track_present?)]
    getter track : String? = nil

    @[JSON::Field(ignore: true)]
    property? track_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    getter uri : String? = nil

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @api_version : String? = nil,
      @call_sid : String? = nil,
      @channels : Int32? = nil,
      @conference_sid : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @duration : String? = nil,
      @encryption_details : Twilio::EncryptionDetails? = nil,
      @error_code : Int32? = nil,
      @price : String? = nil,
      @price_unit : String? = nil,
      @sid : String? = nil,
      @source : Twilio::RecordingEnumSource? = nil,
      @start_time : Time? = nil,
      @status : Twilio::CallRecordingEnumStatus? = nil,
      @track : String? = nil,
      @uri : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_sid = @account_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_sid", _account_sid.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("account_sid", _account_sid.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("account_sid", _account_sid, PATTERN_FOR_ACCOUNT_SID)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_call_sid = @call_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("call_sid", _call_sid.to_s.size, MAX_LENGTH_FOR_CALL_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("call_sid", _call_sid.to_s.size, MIN_LENGTH_FOR_CALL_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("call_sid", _call_sid, PATTERN_FOR_CALL_SID)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_conference_sid = @conference_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("conference_sid", _conference_sid.to_s.size, MAX_LENGTH_FOR_CONFERENCE_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("conference_sid", _conference_sid.to_s.size, MIN_LENGTH_FOR_CONFERENCE_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("conference_sid", _conference_sid, PATTERN_FOR_CONFERENCE_SID)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_encryption_details = @encryption_details).nil?
        invalid_properties.concat(_encryption_details.list_invalid_properties_for("encryption_details")) if _encryption_details.is_a?(OpenApi::Validatable)
      end

      unless (_sid = @sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sid", _sid.to_s.size, MAX_LENGTH_FOR_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("sid", _sid.to_s.size, MIN_LENGTH_FOR_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("sid", _sid, PATTERN_FOR_SID)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_source = @source).nil?
        invalid_properties.push(_source.error_message) if !_source.valid?
      end

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_sid = @account_sid).nil?
        return false if _account_sid.to_s.size > MAX_LENGTH_FOR_ACCOUNT_SID
        return false if _account_sid.to_s.size < MIN_LENGTH_FOR_ACCOUNT_SID
        return false if !PATTERN_FOR_ACCOUNT_SID.matches?(_account_sid)
      end

      unless (_call_sid = @call_sid).nil?
        return false if _call_sid.to_s.size > MAX_LENGTH_FOR_CALL_SID
        return false if _call_sid.to_s.size < MIN_LENGTH_FOR_CALL_SID
        return false if !PATTERN_FOR_CALL_SID.matches?(_call_sid)
      end

      unless (_conference_sid = @conference_sid).nil?
        return false if _conference_sid.to_s.size > MAX_LENGTH_FOR_CONFERENCE_SID
        return false if _conference_sid.to_s.size < MIN_LENGTH_FOR_CONFERENCE_SID
        return false if !PATTERN_FOR_CONFERENCE_SID.matches?(_conference_sid)
      end

      unless (_encryption_details = @encryption_details).nil?
        return false if _encryption_details.is_a?(OpenApi::Validatable) && !_encryption_details.valid?
      end

      unless (_sid = @sid).nil?
        return false if _sid.to_s.size > MAX_LENGTH_FOR_SID
        return false if _sid.to_s.size < MIN_LENGTH_FOR_SID
        return false if !PATTERN_FOR_SID.matches?(_sid)
      end

      unless (_source = @source).nil?
        return false if !_source.valid?
      end

      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_sid Object to be assigned
    def account_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account_sid", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_min_length("account_sid", new_value.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_pattern("account_sid", new_value, PATTERN_FOR_ACCOUNT_SID)
      end

      @account_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] api_version Object to be assigned
    def api_version=(new_value : String?)
      @api_version = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] call_sid Object to be assigned
    def call_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("call_sid", new_value.to_s.size, MAX_LENGTH_FOR_CALL_SID)
        OpenApi::PrimitiveValidator.validate_min_length("call_sid", new_value.to_s.size, MIN_LENGTH_FOR_CALL_SID)
        OpenApi::PrimitiveValidator.validate_pattern("call_sid", new_value, PATTERN_FOR_CALL_SID)
      end

      @call_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] channels Object to be assigned
    def channels=(new_value : Int32?)
      @channels = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] conference_sid Object to be assigned
    def conference_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("conference_sid", new_value.to_s.size, MAX_LENGTH_FOR_CONFERENCE_SID)
        OpenApi::PrimitiveValidator.validate_min_length("conference_sid", new_value.to_s.size, MIN_LENGTH_FOR_CONFERENCE_SID)
        OpenApi::PrimitiveValidator.validate_pattern("conference_sid", new_value, PATTERN_FOR_CONFERENCE_SID)
      end

      @conference_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_created Object to be assigned
    def date_created=(new_value : Time?)
      @date_created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_updated Object to be assigned
    def date_updated=(new_value : Time?)
      @date_updated = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duration Object to be assigned
    def duration=(new_value : String?)
      @duration = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] encryption_details Object to be assigned
    def encryption_details=(new_value : Twilio::EncryptionDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @encryption_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(new_value : Int32?)
      @error_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(new_value : String?)
      @price = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_unit Object to be assigned
    def price_unit=(new_value : String?)
      @price_unit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sid Object to be assigned
    def sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sid", new_value.to_s.size, MAX_LENGTH_FOR_SID)
        OpenApi::PrimitiveValidator.validate_min_length("sid", new_value.to_s.size, MIN_LENGTH_FOR_SID)
        OpenApi::PrimitiveValidator.validate_pattern("sid", new_value, PATTERN_FOR_SID)
      end

      @sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(new_value : Twilio::RecordingEnumSource?)
      unless new_value.nil?
        new_value.validate
      end

      @source = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_time Object to be assigned
    def start_time=(new_value : Time?)
      @start_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Twilio::CallRecordingEnumStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] track Object to be assigned
    def track=(new_value : String?)
      @track = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(new_value : String?)
      @uri = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @api_version, @api_version_present, @call_sid, @call_sid_present, @channels, @channels_present, @conference_sid, @conference_sid_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @duration, @duration_present, @encryption_details, @encryption_details_present, @error_code, @error_code_present, @price, @price_present, @price_unit, @price_unit_present, @sid, @sid_present, @source, @start_time, @start_time_present, @status, @track, @track_present, @uri, @uri_present)
  end
end
