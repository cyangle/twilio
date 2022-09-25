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
  class ListRecordingAddOnResultResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "add_on_results", type: Array(RecordingRecordingAddOnResult)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter add_on_results : Array(RecordingRecordingAddOnResult)? = nil

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

    @[JSON::Field(key: "start", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter start : Int32? = nil

    @[JSON::Field(key: "uri", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter uri : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @add_on_results : Array(RecordingRecordingAddOnResult)? = nil,
      @_end : Int32? = nil,
      @first_page_uri : String? = nil,
      @next_page_uri : String? = nil,
      @page : Int32? = nil,
      @page_size : Int32? = nil,
      @previous_page_uri : String? = nil,
      @start : Int32? = nil,
      @uri : String? = nil
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] add_on_results Object to be assigned
    def add_on_results=(add_on_results : Array(RecordingRecordingAddOnResult)?)
      if add_on_results.nil?
        return @add_on_results = nil
      end
      @add_on_results = add_on_results
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _end Object to be assigned
    def _end=(_end : Int32?)
      if _end.nil?
        return @_end = nil
      end
      @_end = _end
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_page_uri Object to be assigned
    def first_page_uri=(first_page_uri : String?)
      if first_page_uri.nil?
        return @first_page_uri = nil
      end
      @first_page_uri = first_page_uri
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_page_uri Object to be assigned
    def next_page_uri=(next_page_uri : String?)
      if next_page_uri.nil?
        return @next_page_uri = nil
      end
      @next_page_uri = next_page_uri
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page Object to be assigned
    def page=(page : Int32?)
      if page.nil?
        return @page = nil
      end
      @page = page
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_size Object to be assigned
    def page_size=(page_size : Int32?)
      if page_size.nil?
        return @page_size = nil
      end
      @page_size = page_size
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] previous_page_uri Object to be assigned
    def previous_page_uri=(previous_page_uri : String?)
      if previous_page_uri.nil?
        return @previous_page_uri = nil
      end
      @previous_page_uri = previous_page_uri
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start Object to be assigned
    def start=(start : Int32?)
      if start.nil?
        return @start = nil
      end
      @start = start
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(uri : String?)
      if uri.nil?
        return @uri = nil
      end
      @uri = uri
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
    def_equals_and_hash(@add_on_results, @_end, @first_page_uri, @next_page_uri, @next_page_uri_present, @page, @page_size, @previous_page_uri, @previous_page_uri_present, @start, @uri)
  end
end
