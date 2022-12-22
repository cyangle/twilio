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
  class IncomingPhoneNumberMobileEnumVoiceReceiveMode
    include OpenApi::Validatable
    include OpenApi::Json

    property data : String

    ERROR_MESSAGE = %{invalid value for "incoming_phone_number_mobile_enum_voice_receive_mode", must be one of ["voice", "fax"].}

    VALID_VALUES = String.static_array("voice", "fax")

    delegate to_json_object_key, to: @data

    def self.from_json(value : JSON::PullParser) : IncomingPhoneNumberMobileEnumVoiceReceiveMode
      new(value)
    end

    def self.to_json(value : IncomingPhoneNumberMobileEnumVoiceReceiveMode, json : JSON::Builder) : Nil
      value.to_json(json)
    end

    def self.new(pull : JSON::PullParser)
      new(String.new(pull))
    end

    def self.from_json_object_key?(key : String)
      String.from_json_object_key?(key)
    end

    def initialize(@data : String, strict : Bool = true)
      validate if strict
    end

    def error_message : String
      ERROR_MESSAGE
    end

    def list_invalid_properties : Array(String)
      errors = Array(String).new
      errors.push(error_message) unless valid?
      errors
    end

    def valid? : Bool
      OpenApi::EnumValidator.valid?(data, VALID_VALUES, false)
    end

    def validate : Nil
      OpenApi::EnumValidator.validate("incoming_phone_number_mobile_enum_voice_receive_mode", data, VALID_VALUES, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end
