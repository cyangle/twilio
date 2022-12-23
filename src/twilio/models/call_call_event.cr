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
  class CallCallEvent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "request", type: Twilio::CallCallEventRequest?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request.nil? && !request_present?)]
    getter request : Twilio::CallCallEventRequest? = nil

    @[JSON::Field(ignore: true)]
    property? request_present : Bool = false

    @[JSON::Field(key: "response", type: Twilio::CallCallEventResponse?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: response.nil? && !response_present?)]
    getter response : Twilio::CallCallEventResponse? = nil

    @[JSON::Field(ignore: true)]
    property? response_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @request : Twilio::CallCallEventRequest? = nil,
      @response : Twilio::CallCallEventResponse? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_request = @request).nil?
        invalid_properties.concat(_request.list_invalid_properties_for("request")) if _request.is_a?(OpenApi::Validatable)
      end
      unless (_response = @response).nil?
        invalid_properties.concat(_response.list_invalid_properties_for("response")) if _response.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_request = @request).nil?
        return false if _request.is_a?(OpenApi::Validatable) && !_request.valid?
      end

      unless (_response = @response).nil?
        return false if _response.is_a?(OpenApi::Validatable) && !_response.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request Object to be assigned
    def request=(new_value : Twilio::CallCallEventRequest?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @request = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] response Object to be assigned
    def response=(new_value : Twilio::CallCallEventResponse?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @response = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@request, @request_present, @response, @response_present)
  end
end
