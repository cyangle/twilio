#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Twilio
  class TokenIceServersInner
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "credential", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter credential : String? = nil

    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter url : String? = nil

    @[JSON::Field(key: "urls", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter urls : String? = nil

    @[JSON::Field(key: "username", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter username : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @credential : String? = nil,
      @url : String? = nil,
      @urls : String? = nil,
      @username : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credential Object to be assigned
    def credential=(new_value : String?)
      @credential = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      @url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] urls Object to be assigned
    def urls=(new_value : String?)
      @urls = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] username Object to be assigned
    def username=(new_value : String?)
      @username = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@credential, @url, @urls, @username)
  end
end
