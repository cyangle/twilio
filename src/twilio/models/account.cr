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
  class Account
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The authorization token for this account
    @[JSON::Field(key: "auth_token", type: String?, presence: true, ignore_serialize: auth_token.nil? && !auth_token_present?)]
    property auth_token : String?

    @[JSON::Field(ignore: true)]
    property? auth_token_present : Bool = false

    # The date this account was created
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The date this account was last updated
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # A human readable description of this account
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The unique 34 character id representing the parent of this account
    @[JSON::Field(key: "owner_account_sid", type: String?, presence: true, ignore_serialize: owner_account_sid.nil? && !owner_account_sid_present?)]
    getter owner_account_sid : String?

    @[JSON::Field(ignore: true)]
    property? owner_account_sid_present : Bool = false

    # A 34 character string that uniquely identifies this resource.
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The status of this account
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["active", "suspended", "closed"])

    # Account Instance Subresources
    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    property subresource_uris : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # The type of this account
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["Trial", "Full"])

    # The URI for this resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @auth_token : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @friendly_name : String? = nil,
      @owner_account_sid : String? = nil,
      @sid : String? = nil,
      @status : String? = nil,
      @subresource_uris : Hash(String, String)? = nil,
      @_type : String? = nil,
      @uri : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@owner_account_sid.nil? && @owner_account_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"owner_account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@owner_account_sid.nil? && @owner_account_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"owner_account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@owner_account_sid.nil? && @owner_account_sid !~ pattern
        invalid_properties.push("invalid value for \"owner_account_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@owner_account_sid.nil? && @owner_account_sid.to_s.size > 34
      return false if !@owner_account_sid.nil? && @owner_account_sid.to_s.size < 34
      return false if !@owner_account_sid.nil? && @owner_account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^AC[0-9a-fA-F]{32}$/
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] owner_account_sid Value to be assigned
    def owner_account_sid=(owner_account_sid : String?)
      if !owner_account_sid.nil? && owner_account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"owner_account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !owner_account_sid.nil? && owner_account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"owner_account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !owner_account_sid.nil? && owner_account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"owner_account_sid\", must conform to the pattern #{pattern}.")
      end

      @owner_account_sid = owner_account_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] sid Value to be assigned
    def sid=(sid : String?)
      if !sid.nil? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type)
      @_type = _type
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
    def_equals_and_hash(@auth_token, @auth_token_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @friendly_name, @friendly_name_present, @owner_account_sid, @owner_account_sid_present, @sid, @sid_present, @status, @status_present, @subresource_uris, @subresource_uris_present, @_type, @_type_present, @uri, @uri_present)
  end
end
