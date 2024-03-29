#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./recording"

module Twilio
  class ListRecordingResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "end", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _end : Int32? = nil

    @[JSON::Field(key: "first_page_uri", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_page_uri : String? = nil

    @[JSON::Field(key: "next_page_uri", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: next_page_uri.nil? && !next_page_uri_present?)]
    getter next_page_uri : String? = nil

    @[JSON::Field(ignore: true)]
    property? next_page_uri_present : Bool = false

    @[JSON::Field(key: "page", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter page : Int32? = nil

    @[JSON::Field(key: "page_size", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter page_size : Int32? = nil

    @[JSON::Field(key: "previous_page_uri", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: previous_page_uri.nil? && !previous_page_uri_present?)]
    getter previous_page_uri : String? = nil

    @[JSON::Field(ignore: true)]
    property? previous_page_uri_present : Bool = false

    @[JSON::Field(key: "recordings", type: Array(Twilio::Recording)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter recordings : Array(Twilio::Recording)? = nil

    @[JSON::Field(key: "start", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter start : Int32? = nil

    @[JSON::Field(key: "uri", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter uri : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @_end : Int32? = nil,
      @first_page_uri : String? = nil,
      @next_page_uri : String? = nil,
      @page : Int32? = nil,
      @page_size : Int32? = nil,
      @previous_page_uri : String? = nil,
      @recordings : Array(Twilio::Recording)? = nil,
      @start : Int32? = nil,
      @uri : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_recordings = @recordings).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "recordings", container: _recordings)) if _recordings.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_recordings = @recordings).nil?
        return false if _recordings.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _recordings)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _end Object to be assigned
    def _end=(new_value : Int32?)
      @_end = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_page_uri Object to be assigned
    def first_page_uri=(new_value : String?)
      @first_page_uri = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_page_uri Object to be assigned
    def next_page_uri=(new_value : String?)
      @next_page_uri = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page Object to be assigned
    def page=(new_value : Int32?)
      @page = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_size Object to be assigned
    def page_size=(new_value : Int32?)
      @page_size = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] previous_page_uri Object to be assigned
    def previous_page_uri=(new_value : String?)
      @previous_page_uri = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recordings Object to be assigned
    def recordings=(new_value : Array(Twilio::Recording)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @recordings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start Object to be assigned
    def start=(new_value : Int32?)
      @start = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(new_value : String?)
      @uri = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_end, @first_page_uri, @next_page_uri, @next_page_uri_present, @page, @page_size, @previous_page_uri, @previous_page_uri_present, @recordings, @start, @uri)
  end
end
