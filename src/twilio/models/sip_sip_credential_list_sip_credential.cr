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
  class SipSipCredentialListSipCredential
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The unique id of the Account that is responsible for this resource.
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The unique id that identifies the credential list that includes this credential
    @[JSON::Field(key: "credential_list_sid", type: String?, presence: true, ignore_serialize: credential_list_sid.nil? && !credential_list_sid_present?)]
    getter credential_list_sid : String?

    @[JSON::Field(ignore: true)]
    property? credential_list_sid_present : Bool = false

    # The date that this resource was created, given as GMT in RFC 2822 format.
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The date that this resource was last updated, given as GMT in RFC 2822 format.
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # A 34 character string that uniquely identifies this resource.
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The URI for this resource, relative to https://api.twilio.com
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # The username for this credential.
    @[JSON::Field(key: "username", type: String?, presence: true, ignore_serialize: username.nil? && !username_present?)]
    property username : String?

    @[JSON::Field(ignore: true)]
    property? username_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @credential_list_sid : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @sid : String? = nil, @uri : String? = nil, @username : String? = nil)
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

      if !@credential_list_sid.nil? && @credential_list_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"credential_list_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@credential_list_sid.nil? && @credential_list_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"credential_list_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CL[0-9a-fA-F]{32}$/
      if !@credential_list_sid.nil? && @credential_list_sid !~ pattern
        invalid_properties.push("invalid value for \"credential_list_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CR[0-9a-fA-F]{32}$/
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

      return false if !@credential_list_sid.nil? && @credential_list_sid.to_s.size > 34
      return false if !@credential_list_sid.nil? && @credential_list_sid.to_s.size < 34
      return false if !@credential_list_sid.nil? && @credential_list_sid !~ /^CL[0-9a-fA-F]{32}$/

      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^CR[0-9a-fA-F]{32}$/

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
    # @param [Object] credential_list_sid Value to be assigned
    def credential_list_sid=(credential_list_sid)
      if !credential_list_sid.nil? && credential_list_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"credential_list_sid\", the character length must be smaller than or equal to 34.")
      end

      if !credential_list_sid.nil? && credential_list_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"credential_list_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CL[0-9a-fA-F]{32}$/
      if !credential_list_sid.nil? && credential_list_sid !~ pattern
        raise ArgumentError.new("invalid value for \"credential_list_sid\", must conform to the pattern #{pattern}.")
      end

      @credential_list_sid = credential_list_sid
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

      pattern = /^CR[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
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
    def_equals_and_hash(@account_sid, @credential_list_sid, @date_created, @date_updated, @sid, @uri, @username)
  end
end
