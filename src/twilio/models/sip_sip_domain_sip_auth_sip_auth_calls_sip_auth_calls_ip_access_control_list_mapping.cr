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
  class SipSipDomainSipAuthSipAuthCallsSipAuthCallsIpAccessControlListMapping
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

    # The string that you assigned to describe the resource
    @[JSON::Field(key: "friendly_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    getter friendly_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^AL[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @friendly_name : String? = nil,
      @sid : String? = nil
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
      unless (_date_created = @date_created).nil?
      end
      unless (_date_updated = @date_updated).nil?
      end
      unless (_friendly_name = @friendly_name).nil?
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

      unless (_date_created = @date_created).nil?
      end

      unless (_date_updated = @date_updated).nil?
      end

      unless (_friendly_name = @friendly_name).nil?
      end

      unless (_sid = @sid).nil?
        return false if _sid.to_s.size > MAX_LENGTH_FOR_SID
        return false if _sid.to_s.size < MIN_LENGTH_FOR_SID
        return false if !PATTERN_FOR_SID.matches?(_sid)
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @friendly_name, @friendly_name_present, @sid, @sid_present)
  end
end
