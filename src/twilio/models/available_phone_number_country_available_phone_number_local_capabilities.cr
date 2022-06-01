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
  # Whether a phone number can receive calls or messages
  @[JSON::Serializable::Options(emit_nulls: true)]
  class AvailablePhoneNumberCountryAvailablePhoneNumberLocalCapabilities
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    @[JSON::Field(key: "fax", type: Bool?, presence: true, ignore_serialize: fax.nil? && !fax_present?)]
    property fax : Bool?

    @[JSON::Field(ignore: true)]
    property? fax_present : Bool = false

    @[JSON::Field(key: "mms", type: Bool?, presence: true, ignore_serialize: mms.nil? && !mms_present?)]
    property mms : Bool?

    @[JSON::Field(ignore: true)]
    property? mms_present : Bool = false

    @[JSON::Field(key: "sms", type: Bool?, presence: true, ignore_serialize: sms.nil? && !sms_present?)]
    property sms : Bool?

    @[JSON::Field(ignore: true)]
    property? sms_present : Bool = false

    @[JSON::Field(key: "voice", type: Bool?, presence: true, ignore_serialize: voice.nil? && !voice_present?)]
    property voice : Bool?

    @[JSON::Field(ignore: true)]
    property? voice_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @fax : Bool? = nil, @mms : Bool? = nil, @sms : Bool? = nil, @voice : Bool? = nil)
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        fax == o.fax &&
        mms == o.mms &&
        sms == o.sms &&
        voice == o.voice
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@fax, @mms, @sms, @voice)
  end
end
