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
  class IncomingPhoneNumberIncomingPhoneNumberAssignedAddOn
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # A JSON string that represents the current configuration
    @[JSON::Field(key: "configuration", type: Hash(String, String)?, presence: true, ignore_serialize: configuration.nil? && !configuration_present?)]
    property configuration : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? configuration_present : Bool = false

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

    # A short description of the Add-on functionality
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    property description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The string that you assigned to describe the resource
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The SID of the Phone Number that installed this Add-on
    @[JSON::Field(key: "resource_sid", type: String?, presence: true, ignore_serialize: resource_sid.nil? && !resource_sid_present?)]
    getter resource_sid : String?

    @[JSON::Field(ignore: true)]
    property? resource_sid_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # Account Instance Subresources
    @[JSON::Field(key: "subresource_uris", type: Hash(String, String)?, presence: true, ignore_serialize: subresource_uris.nil? && !subresource_uris_present?)]
    property subresource_uris : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? subresource_uris_present : Bool = false

    # An application-defined string that uniquely identifies the resource
    @[JSON::Field(key: "unique_name", type: String?, presence: true, ignore_serialize: unique_name.nil? && !unique_name_present?)]
    property unique_name : String?

    @[JSON::Field(ignore: true)]
    property? unique_name_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @configuration : Hash(String, String)? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @description : String? = nil, @friendly_name : String? = nil, @resource_sid : String? = nil, @sid : String? = nil, @subresource_uris : Hash(String, String)? = nil, @unique_name : String? = nil, @uri : String? = nil)
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

      if !@resource_sid.nil? && @resource_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"resource_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@resource_sid.nil? && @resource_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"resource_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !@resource_sid.nil? && @resource_sid !~ pattern
        invalid_properties.push("invalid value for \"resource_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^XE[0-9a-fA-F]{32}$/
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
      return false if !@resource_sid.nil? && @resource_sid.to_s.size > 34
      return false if !@resource_sid.nil? && @resource_sid.to_s.size < 34
      return false if !@resource_sid.nil? && @resource_sid !~ /^PN[0-9a-fA-F]{32}$/
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^XE[0-9a-fA-F]{32}$/
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
    # @param [Object] resource_sid Value to be assigned
    def resource_sid=(resource_sid)
      if !resource_sid.nil? && resource_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"resource_sid\", the character length must be smaller than or equal to 34.")
      end

      if !resource_sid.nil? && resource_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"resource_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^PN[0-9a-fA-F]{32}$/
      if !resource_sid.nil? && resource_sid !~ pattern
        raise ArgumentError.new("invalid value for \"resource_sid\", must conform to the pattern #{pattern}.")
      end

      @resource_sid = resource_sid
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

      pattern = /^XE[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        configuration == o.configuration &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        description == o.description &&
        friendly_name == o.friendly_name &&
        resource_sid == o.resource_sid &&
        sid == o.sid &&
        subresource_uris == o.subresource_uris &&
        unique_name == o.unique_name &&
        uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@account_sid, @configuration, @date_created, @date_updated, @description, @friendly_name, @resource_sid, @sid, @subresource_uris, @unique_name, @uri)
  end
end
