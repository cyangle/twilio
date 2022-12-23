#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Twilio
  class Conference
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The SID of the Account that created this resource
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_SID = 34
    MIN_LENGTH_FOR_ACCOUNT_SID = 34
    PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to create this conference
    @[JSON::Field(key: "api_version", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    getter api_version : String? = nil

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The call SID that caused the conference to end
    @[JSON::Field(key: "call_sid_ending_conference", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: call_sid_ending_conference.nil? && !call_sid_ending_conference_present?)]
    getter call_sid_ending_conference : String? = nil
    MAX_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE = 34
    MIN_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE = 34
    PATTERN_FOR_CALL_SID_ENDING_CONFERENCE    = /^CA[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? call_sid_ending_conference_present : Bool = false

    # The RFC 2822 date and time in GMT that this resource was created
    @[JSON::Field(key: "date_created", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_created.nil? && !date_created_present?, converter: Time::RFC2822Converter)]
    getter date_created : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that this resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?, converter: Time::RFC2822Converter)]
    getter date_updated : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # A string that you assigned to describe this conference room
    @[JSON::Field(key: "friendly_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    getter friendly_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    @[JSON::Field(key: "reason_conference_ended", type: Twilio::ConferenceEnumReasonConferenceEnded?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reason_conference_ended : Twilio::ConferenceEnumReasonConferenceEnded? = nil

    # A string that represents the Twilio Region where the conference was mixed
    @[JSON::Field(key: "region", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: region.nil? && !region_present?)]
    getter region : String? = nil

    @[JSON::Field(ignore: true)]
    property? region_present : Bool = false

    # The unique string that identifies this resource
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^CF[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    @[JSON::Field(key: "status", type: Twilio::ConferenceEnumStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : Twilio::ConferenceEnumStatus? = nil

    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    getter subresource_uris : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # The URI of this resource, relative to `https://api.twilio.com`
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
      @call_sid_ending_conference : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @friendly_name : String? = nil,
      @reason_conference_ended : Twilio::ConferenceEnumReasonConferenceEnded? = nil,
      @region : String? = nil,
      @sid : String? = nil,
      @status : Twilio::ConferenceEnumStatus? = nil,
      @subresource_uris : Hash(String, String)? = nil,
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
      unless (_api_version = @api_version).nil?
      end
      unless (_call_sid_ending_conference = @call_sid_ending_conference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("call_sid_ending_conference", _call_sid_ending_conference.to_s.size, MAX_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("call_sid_ending_conference", _call_sid_ending_conference.to_s.size, MIN_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("call_sid_ending_conference", _call_sid_ending_conference, PATTERN_FOR_CALL_SID_ENDING_CONFERENCE)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_date_created = @date_created).nil?
      end
      unless (_date_updated = @date_updated).nil?
      end
      unless (_friendly_name = @friendly_name).nil?
      end
      unless (_reason_conference_ended = @reason_conference_ended).nil?
        invalid_properties.push(_reason_conference_ended.error_message) if !_reason_conference_ended.valid?
      end
      unless (_region = @region).nil?
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
      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_subresource_uris = @subresource_uris).nil?
      end
      unless (_uri = @uri).nil?
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

      unless (_api_version = @api_version).nil?
      end

      unless (_call_sid_ending_conference = @call_sid_ending_conference).nil?
        return false if _call_sid_ending_conference.to_s.size > MAX_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE
        return false if _call_sid_ending_conference.to_s.size < MIN_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE
        return false if !PATTERN_FOR_CALL_SID_ENDING_CONFERENCE.matches?(_call_sid_ending_conference)
      end

      unless (_date_created = @date_created).nil?
      end

      unless (_date_updated = @date_updated).nil?
      end

      unless (_friendly_name = @friendly_name).nil?
      end

      unless (_reason_conference_ended = @reason_conference_ended).nil?
        return false if !_reason_conference_ended.valid?
      end

      unless (_region = @region).nil?
      end

      unless (_sid = @sid).nil?
        return false if _sid.to_s.size > MAX_LENGTH_FOR_SID
        return false if _sid.to_s.size < MIN_LENGTH_FOR_SID
        return false if !PATTERN_FOR_SID.matches?(_sid)
      end

      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_subresource_uris = @subresource_uris).nil?
      end

      unless (_uri = @uri).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_sid Object to be assigned
    def account_sid=(account_sid : String?)
      if account_sid.nil?
        return @account_sid = nil
      end
      _account_sid = account_sid.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account_sid", _account_sid.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
      OpenApi::PrimitiveValidator.validate_min_length("account_sid", _account_sid.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
      OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, PATTERN_FOR_ACCOUNT_SID)
      @account_sid = _account_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] api_version Object to be assigned
    def api_version=(api_version : String?)
      if api_version.nil?
        return @api_version = nil
      end
      _api_version = api_version.not_nil!
      @api_version = _api_version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] call_sid_ending_conference Object to be assigned
    def call_sid_ending_conference=(call_sid_ending_conference : String?)
      if call_sid_ending_conference.nil?
        return @call_sid_ending_conference = nil
      end
      _call_sid_ending_conference = call_sid_ending_conference.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("call_sid_ending_conference", _call_sid_ending_conference.to_s.size, MAX_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE)
      OpenApi::PrimitiveValidator.validate_min_length("call_sid_ending_conference", _call_sid_ending_conference.to_s.size, MIN_LENGTH_FOR_CALL_SID_ENDING_CONFERENCE)
      OpenApi::PrimitiveValidator.validate_pattern("call_sid_ending_conference", _call_sid_ending_conference, PATTERN_FOR_CALL_SID_ENDING_CONFERENCE)
      @call_sid_ending_conference = _call_sid_ending_conference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_created Object to be assigned
    def date_created=(date_created : Time?)
      if date_created.nil?
        return @date_created = nil
      end
      _date_created = date_created.not_nil!
      @date_created = _date_created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_updated Object to be assigned
    def date_updated=(date_updated : Time?)
      if date_updated.nil?
        return @date_updated = nil
      end
      _date_updated = date_updated.not_nil!
      @date_updated = _date_updated
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] friendly_name Object to be assigned
    def friendly_name=(friendly_name : String?)
      if friendly_name.nil?
        return @friendly_name = nil
      end
      _friendly_name = friendly_name.not_nil!
      @friendly_name = _friendly_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason_conference_ended Object to be assigned
    def reason_conference_ended=(reason_conference_ended : Twilio::ConferenceEnumReasonConferenceEnded?)
      if reason_conference_ended.nil?
        return @reason_conference_ended = nil
      end
      _reason_conference_ended = reason_conference_ended.not_nil!
      _reason_conference_ended.validate
      @reason_conference_ended = _reason_conference_ended
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(region : String?)
      if region.nil?
        return @region = nil
      end
      _region = region.not_nil!
      @region = _region
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sid Object to be assigned
    def sid=(sid : String?)
      if sid.nil?
        return @sid = nil
      end
      _sid = sid.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("sid", _sid.to_s.size, MAX_LENGTH_FOR_SID)
      OpenApi::PrimitiveValidator.validate_min_length("sid", _sid.to_s.size, MIN_LENGTH_FOR_SID)
      OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, PATTERN_FOR_SID)
      @sid = _sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : Twilio::ConferenceEnumStatus?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      _status.validate
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subresource_uris Object to be assigned
    def subresource_uris=(subresource_uris : Hash(String, String)?)
      if subresource_uris.nil?
        return @subresource_uris = nil
      end
      _subresource_uris = subresource_uris.not_nil!
      @subresource_uris = _subresource_uris
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(uri : String?)
      if uri.nil?
        return @uri = nil
      end
      _uri = uri.not_nil!
      @uri = _uri
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @api_version, @api_version_present, @call_sid_ending_conference, @call_sid_ending_conference_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @friendly_name, @friendly_name_present, @reason_conference_ended, @region, @region_present, @sid, @sid_present, @status, @subresource_uris, @subresource_uris_present, @uri, @uri_present)
  end
end
