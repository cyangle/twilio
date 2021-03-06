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
  # Call recording encryption details
  @[JSON::Serializable::Options(emit_nulls: true)]
  class EncryptionDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    property _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    @[JSON::Field(key: "public_key_sid", type: String?, presence: true, ignore_serialize: public_key_sid.nil? && !public_key_sid_present?)]
    property public_key_sid : String?

    @[JSON::Field(ignore: true)]
    property? public_key_sid_present : Bool = false

    @[JSON::Field(key: "encrypted_cek", type: String?, presence: true, ignore_serialize: encrypted_cek.nil? && !encrypted_cek_present?)]
    property encrypted_cek : String?

    @[JSON::Field(ignore: true)]
    property? encrypted_cek_present : Bool = false

    @[JSON::Field(key: "iv", type: String?, presence: true, ignore_serialize: iv.nil? && !iv_present?)]
    property iv : String?

    @[JSON::Field(ignore: true)]
    property? iv_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @_type : String? = nil,
      @public_key_sid : String? = nil,
      @encrypted_cek : String? = nil,
      @iv : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@_type, @_type_present, @public_key_sid, @public_key_sid_present, @encrypted_cek, @encrypted_cek_present, @iv, @iv_present)
  end
end
