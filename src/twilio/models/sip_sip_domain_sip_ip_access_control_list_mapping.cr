#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Twilio
  class SipSipDomainSipIpAccessControlListMapping
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The unique id of the Account that is responsible for this resource.
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_SID = 34
    MIN_LENGTH_FOR_ACCOUNT_SID = 34
    PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The date that this resource was created, given as GMT in RFC 2822 format.
    @[JSON::Field(key: "date_created", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_created.nil? && !date_created_present?, converter: Time::RFC2822Converter)]
    getter date_created : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The date that this resource was last updated, given as GMT in RFC 2822 format.
    @[JSON::Field(key: "date_updated", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?, converter: Time::RFC2822Converter)]
    getter date_updated : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # The unique string that identifies the SipDomain resource.
    @[JSON::Field(key: "domain_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: domain_sid.nil? && !domain_sid_present?)]
    getter domain_sid : String? = nil
    MAX_LENGTH_FOR_DOMAIN_SID = 34
    MIN_LENGTH_FOR_DOMAIN_SID = 34
    PATTERN_FOR_DOMAIN_SID    = /^SD[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? domain_sid_present : Bool = false

    # A human readable descriptive text for this resource, up to 64 characters long.
    @[JSON::Field(key: "friendly_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    getter friendly_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # A 34 character string that uniquely identifies this resource.
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^AL[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The URI for this resource, relative to https://api.twilio.com
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
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @domain_sid : String? = nil,
      @friendly_name : String? = nil,
      @sid : String? = nil,
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

      unless (_domain_sid = @domain_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("domain_sid", _domain_sid.to_s.size, MAX_LENGTH_FOR_DOMAIN_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("domain_sid", _domain_sid.to_s.size, MIN_LENGTH_FOR_DOMAIN_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("domain_sid", _domain_sid, PATTERN_FOR_DOMAIN_SID)
          invalid_properties.push(pattern_error)
        end
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

      unless (_domain_sid = @domain_sid).nil?
        return false if _domain_sid.to_s.size > MAX_LENGTH_FOR_DOMAIN_SID
        return false if _domain_sid.to_s.size < MIN_LENGTH_FOR_DOMAIN_SID
        return false if !PATTERN_FOR_DOMAIN_SID.matches?(_domain_sid)
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
    def account_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account_sid", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_min_length("account_sid", new_value.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_pattern("account_sid", new_value, PATTERN_FOR_ACCOUNT_SID)
      end

      @account_sid = new_value
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
    # @param [Object] domain_sid Object to be assigned
    def domain_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("domain_sid", new_value.to_s.size, MAX_LENGTH_FOR_DOMAIN_SID)
        OpenApi::PrimitiveValidator.validate_min_length("domain_sid", new_value.to_s.size, MIN_LENGTH_FOR_DOMAIN_SID)
        OpenApi::PrimitiveValidator.validate_pattern("domain_sid", new_value, PATTERN_FOR_DOMAIN_SID)
      end

      @domain_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] friendly_name Object to be assigned
    def friendly_name=(new_value : String?)
      @friendly_name = new_value
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
    # @param [Object] uri Object to be assigned
    def uri=(new_value : String?)
      @uri = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @account_sid_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @domain_sid, @domain_sid_present, @friendly_name, @friendly_name_present, @sid, @sid_present, @uri, @uri_present)
  end
end
