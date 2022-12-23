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
  class IncomingPhoneNumberIncomingPhoneNumberAssignedAddOn
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

    # A JSON string that represents the current configuration
    @[JSON::Field(key: "configuration", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: configuration.nil? && !configuration_present?)]
    getter configuration : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? configuration_present : Bool = false

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

    # A short description of the Add-on functionality
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The string that you assigned to describe the resource
    @[JSON::Field(key: "friendly_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    getter friendly_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The SID of the Phone Number that installed this Add-on
    @[JSON::Field(key: "resource_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: resource_sid.nil? && !resource_sid_present?)]
    getter resource_sid : String? = nil
    MAX_LENGTH_FOR_RESOURCE_SID = 34
    MIN_LENGTH_FOR_RESOURCE_SID = 34
    PATTERN_FOR_RESOURCE_SID    = /^PN[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? resource_sid_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^XE[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    getter subresource_uris : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # An application-defined string that uniquely identifies the resource
    @[JSON::Field(key: "unique_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unique_name.nil? && !unique_name_present?)]
    getter unique_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? unique_name_present : Bool = false

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
      @configuration : Hash(String, String)? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @description : String? = nil,
      @friendly_name : String? = nil,
      @resource_sid : String? = nil,
      @sid : String? = nil,
      @subresource_uris : Hash(String, String)? = nil,
      @unique_name : String? = nil,
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

      unless (_resource_sid = @resource_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("resource_sid", _resource_sid.to_s.size, MAX_LENGTH_FOR_RESOURCE_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("resource_sid", _resource_sid.to_s.size, MIN_LENGTH_FOR_RESOURCE_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("resource_sid", _resource_sid, PATTERN_FOR_RESOURCE_SID)
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

      unless (_resource_sid = @resource_sid).nil?
        return false if _resource_sid.to_s.size > MAX_LENGTH_FOR_RESOURCE_SID
        return false if _resource_sid.to_s.size < MIN_LENGTH_FOR_RESOURCE_SID
        return false if !PATTERN_FOR_RESOURCE_SID.matches?(_resource_sid)
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
    # @param [Object] configuration Object to be assigned
    def configuration=(new_value : Hash(String, String)?)
      @configuration = new_value
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
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] friendly_name Object to be assigned
    def friendly_name=(new_value : String?)
      @friendly_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_sid Object to be assigned
    def resource_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("resource_sid", new_value.to_s.size, MAX_LENGTH_FOR_RESOURCE_SID)
        OpenApi::PrimitiveValidator.validate_min_length("resource_sid", new_value.to_s.size, MIN_LENGTH_FOR_RESOURCE_SID)
        OpenApi::PrimitiveValidator.validate_pattern("resource_sid", new_value, PATTERN_FOR_RESOURCE_SID)
      end

      @resource_sid = new_value
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
    # @param [Object] subresource_uris Object to be assigned
    def subresource_uris=(new_value : Hash(String, String)?)
      @subresource_uris = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unique_name Object to be assigned
    def unique_name=(new_value : String?)
      @unique_name = new_value
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
    def_equals_and_hash(@account_sid, @account_sid_present, @configuration, @configuration_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @description, @description_present, @friendly_name, @friendly_name_present, @resource_sid, @resource_sid_present, @sid, @sid_present, @subresource_uris, @subresource_uris_present, @unique_name, @unique_name_present, @uri, @uri_present)
  end
end
