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
  class ValidationRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The SID of the Call the resource is associated with
    @[JSON::Field(key: "call_sid", type: String?, presence: true, ignore_serialize: call_sid.nil? && !call_sid_present?)]
    getter call_sid : String?

    @[JSON::Field(ignore: true)]
    property? call_sid_present : Bool = false

    # The string that you assigned to describe the resource
    @[JSON::Field(key: "friendly_name", type: String?, presence: true, ignore_serialize: friendly_name.nil? && !friendly_name_present?)]
    property friendly_name : String?

    @[JSON::Field(ignore: true)]
    property? friendly_name_present : Bool = false

    # The phone number to verify in E.164 format
    @[JSON::Field(key: "phone_number", type: String?, presence: true, ignore_serialize: phone_number.nil? && !phone_number_present?)]
    property phone_number : String?

    @[JSON::Field(ignore: true)]
    property? phone_number_present : Bool = false

    # The 6 digit validation code that someone must enter to validate the Caller ID  when `phone_number` is called
    @[JSON::Field(key: "validation_code", type: String?, presence: true, ignore_serialize: validation_code.nil? && !validation_code_present?)]
    property validation_code : String?

    @[JSON::Field(ignore: true)]
    property? validation_code_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @call_sid : String? = nil, @friendly_name : String? = nil, @phone_number : String? = nil, @validation_code : String? = nil)
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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_sid, @call_sid, @friendly_name, @phone_number, @validation_code)
  end
end
