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
  class ListUsageRecordResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "usage_records", type: Array(Twilio::UsageUsageRecord)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter usage_records : Array(Twilio::UsageUsageRecord)? = nil

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
      @usage_records : Array(Twilio::UsageUsageRecord)? = nil,
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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_usage_records = @usage_records).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "usage_records", container: _usage_records)) if _usage_records.is_a?(Array)
      end
      unless (__end = @_end).nil?
      end
      unless (_first_page_uri = @first_page_uri).nil?
      end
      unless (_next_page_uri = @next_page_uri).nil?
      end
      unless (_page = @page).nil?
      end
      unless (_page_size = @page_size).nil?
      end
      unless (_previous_page_uri = @previous_page_uri).nil?
      end
      unless (_start = @start).nil?
      end
      unless (_uri = @uri).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_usage_records = @usage_records).nil?
        return false if _usage_records.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _usage_records)
      end

      unless (__end = @_end).nil?
      end

      unless (_first_page_uri = @first_page_uri).nil?
      end

      unless (_next_page_uri = @next_page_uri).nil?
      end

      unless (_page = @page).nil?
      end

      unless (_page_size = @page_size).nil?
      end

      unless (_previous_page_uri = @previous_page_uri).nil?
      end

      unless (_start = @start).nil?
      end

      unless (_uri = @uri).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_records Object to be assigned
    def usage_records=(usage_records : Array(Twilio::UsageUsageRecord)?)
      if usage_records.nil?
        return @usage_records = nil
      end
      _usage_records = usage_records.not_nil!
      OpenApi::ContainerValidator.validate(container: _usage_records) if _usage_records.is_a?(Array)
      @usage_records = _usage_records
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _end Object to be assigned
    def _end=(_end : Int32?)
      if _end.nil?
        return @_end = nil
      end
      __end = _end.not_nil!
      @_end = __end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_page_uri Object to be assigned
    def first_page_uri=(first_page_uri : String?)
      if first_page_uri.nil?
        return @first_page_uri = nil
      end
      _first_page_uri = first_page_uri.not_nil!
      @first_page_uri = _first_page_uri
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_page_uri Object to be assigned
    def next_page_uri=(next_page_uri : String?)
      if next_page_uri.nil?
        return @next_page_uri = nil
      end
      _next_page_uri = next_page_uri.not_nil!
      @next_page_uri = _next_page_uri
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page Object to be assigned
    def page=(page : Int32?)
      if page.nil?
        return @page = nil
      end
      _page = page.not_nil!
      @page = _page
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_size Object to be assigned
    def page_size=(page_size : Int32?)
      if page_size.nil?
        return @page_size = nil
      end
      _page_size = page_size.not_nil!
      @page_size = _page_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] previous_page_uri Object to be assigned
    def previous_page_uri=(previous_page_uri : String?)
      if previous_page_uri.nil?
        return @previous_page_uri = nil
      end
      _previous_page_uri = previous_page_uri.not_nil!
      @previous_page_uri = _previous_page_uri
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start Object to be assigned
    def start=(start : Int32?)
      if start.nil?
        return @start = nil
      end
      _start = start.not_nil!
      @start = _start
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uri Object to be assigned
    def uri=(uri : String?)
      if uri.nil?
        return @uri = nil
      end
      _uri = uri.not_nil!
      @uri = _uri
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@usage_records, @_end, @first_page_uri, @next_page_uri, @next_page_uri_present, @page, @page_size, @previous_page_uri, @previous_page_uri_present, @start, @uri)
  end
end
