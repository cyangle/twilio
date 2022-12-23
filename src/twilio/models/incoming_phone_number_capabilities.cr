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
  # Indicate if a phone can receive calls or messages
  class IncomingPhoneNumberCapabilities
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "fax", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fax : Bool? = nil

    @[JSON::Field(key: "mms", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mms : Bool? = nil

    @[JSON::Field(key: "sms", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sms : Bool? = nil

    @[JSON::Field(key: "voice", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter voice : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @fax : Bool? = nil,
      @mms : Bool? = nil,
      @sms : Bool? = nil,
      @voice : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_fax = @fax).nil?
      end
      unless (_mms = @mms).nil?
      end
      unless (_sms = @sms).nil?
      end
      unless (_voice = @voice).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_fax = @fax).nil?
      end

      unless (_mms = @mms).nil?
      end

      unless (_sms = @sms).nil?
      end

      unless (_voice = @voice).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fax Object to be assigned
    def fax=(fax : Bool?)
      if fax.nil?
        return @fax = nil
      end
      _fax = fax.not_nil!
      @fax = _fax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mms Object to be assigned
    def mms=(mms : Bool?)
      if mms.nil?
        return @mms = nil
      end
      _mms = mms.not_nil!
      @mms = _mms
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sms Object to be assigned
    def sms=(sms : Bool?)
      if sms.nil?
        return @sms = nil
      end
      _sms = sms.not_nil!
      @sms = _sms
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voice Object to be assigned
    def voice=(voice : Bool?)
      if voice.nil?
        return @voice = nil
      end
      _voice = voice.not_nil!
      @voice = _voice
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fax, @mms, @sms, @voice)
  end
end
