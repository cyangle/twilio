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
  class ListIncomingPhoneNumberTollFreeResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "end", type: Int32?, presence: true, ignore_serialize: _end.nil? && !_end_present?)]
    property _end : Int32?

    @[JSON::Field(ignore: true)]
    property? _end_present : Bool = false

    @[JSON::Field(key: "first_page_uri", type: String?, presence: true, ignore_serialize: first_page_uri.nil? && !first_page_uri_present?)]
    property first_page_uri : String?

    @[JSON::Field(ignore: true)]
    property? first_page_uri_present : Bool = false

    @[JSON::Field(key: "incoming_phone_numbers", type: Array(IncomingPhoneNumberIncomingPhoneNumberTollFree)?, presence: true, ignore_serialize: incoming_phone_numbers.nil? && !incoming_phone_numbers_present?)]
    property incoming_phone_numbers : Array(IncomingPhoneNumberIncomingPhoneNumberTollFree)?

    @[JSON::Field(ignore: true)]
    property? incoming_phone_numbers_present : Bool = false

    @[JSON::Field(key: "next_page_uri", type: String?, presence: true, ignore_serialize: next_page_uri.nil? && !next_page_uri_present?)]
    property next_page_uri : String?

    @[JSON::Field(ignore: true)]
    property? next_page_uri_present : Bool = false

    @[JSON::Field(key: "page", type: Int32?, presence: true, ignore_serialize: page.nil? && !page_present?)]
    property page : Int32?

    @[JSON::Field(ignore: true)]
    property? page_present : Bool = false

    @[JSON::Field(key: "page_size", type: Int32?, presence: true, ignore_serialize: page_size.nil? && !page_size_present?)]
    property page_size : Int32?

    @[JSON::Field(ignore: true)]
    property? page_size_present : Bool = false

    @[JSON::Field(key: "previous_page_uri", type: String?, presence: true, ignore_serialize: previous_page_uri.nil? && !previous_page_uri_present?)]
    property previous_page_uri : String?

    @[JSON::Field(ignore: true)]
    property? previous_page_uri_present : Bool = false

    @[JSON::Field(key: "start", type: Int32?, presence: true, ignore_serialize: start.nil? && !start_present?)]
    property start : Int32?

    @[JSON::Field(ignore: true)]
    property? start_present : Bool = false

    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @_end : Int32? = nil,
      @first_page_uri : String? = nil,
      @incoming_phone_numbers : Array(IncomingPhoneNumberIncomingPhoneNumberTollFree)? = nil,
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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_end, @_end_present, @first_page_uri, @first_page_uri_present, @incoming_phone_numbers, @incoming_phone_numbers_present, @next_page_uri, @next_page_uri_present, @page, @page_present, @page_size, @page_size_present, @previous_page_uri, @previous_page_uri_present, @start, @start_present, @uri, @uri_present)
  end
end
