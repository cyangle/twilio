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
  class Notification
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    property account_sid : String?

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to generate the notification
    @[JSON::Field(key: "api_version", type: String?, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    property api_version : String?

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The SID of the Call the resource is associated with
    @[JSON::Field(key: "call_sid", type: String?, presence: true, ignore_serialize: call_sid.nil? && !call_sid_present?)]
    property call_sid : String?

    @[JSON::Field(ignore: true)]
    property? call_sid_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_created.nil? && !date_created_present?)]
    property date_created : Time?

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?)]
    property date_updated : Time?

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # A unique error code corresponding to the notification
    @[JSON::Field(key: "error_code", type: String?, presence: true, ignore_serialize: error_code.nil? && !error_code_present?)]
    property error_code : String?

    @[JSON::Field(ignore: true)]
    property? error_code_present : Bool = false

    # An integer log level
    @[JSON::Field(key: "log", type: String?, presence: true, ignore_serialize: log.nil? && !log_present?)]
    property log : String?

    @[JSON::Field(ignore: true)]
    property? log_present : Bool = false

    # The date the notification was generated
    @[JSON::Field(key: "message_date", type: Time?, converter: Time::RFC2822Converter, presence: true, ignore_serialize: message_date.nil? && !message_date_present?)]
    property message_date : Time?

    @[JSON::Field(ignore: true)]
    property? message_date_present : Bool = false

    # The text of the notification
    @[JSON::Field(key: "message_text", type: String?, presence: true, ignore_serialize: message_text.nil? && !message_text_present?)]
    property message_text : String?

    @[JSON::Field(ignore: true)]
    property? message_text_present : Bool = false

    # A URL for more information about the error code
    @[JSON::Field(key: "more_info", type: String?, presence: true, ignore_serialize: more_info.nil? && !more_info_present?)]
    property more_info : String?

    @[JSON::Field(ignore: true)]
    property? more_info_present : Bool = false

    # HTTP method used with the request url
    @[JSON::Field(key: "request_method", type: String?, presence: true, ignore_serialize: request_method.nil? && !request_method_present?)]
    property request_method : String?

    @[JSON::Field(ignore: true)]
    property? request_method_present : Bool = false

    # URL of the resource that generated the notification
    @[JSON::Field(key: "request_url", type: String?, presence: true, ignore_serialize: request_url.nil? && !request_url_present?)]
    property request_url : String?

    @[JSON::Field(ignore: true)]
    property? request_url_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    property sid : String?

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    property uri : String?

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String | Int32 | Float64)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        value.nil? || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account_sid : String? = nil, @api_version : String? = nil, @call_sid : String? = nil, @date_created : Time? = nil, @date_updated : Time? = nil, @error_code : String? = nil, @log : String? = nil, @message_date : Time? = nil, @message_text : String? = nil, @more_info : String? = nil, @request_method : String? = nil, @request_url : String? = nil, @sid : String? = nil, @uri : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@account_sid.nil? && @account_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@account_sid.nil? && @account_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !@account_sid.nil? && @account_sid !~ pattern
        invalid_properties.push("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      if !@call_sid.nil? && @call_sid.to_s.size > 34
        invalid_properties.push("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !@call_sid.nil? && @call_sid.to_s.size < 34
        invalid_properties.push("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !@call_sid.nil? && @call_sid !~ pattern
        invalid_properties.push("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
      end

      if !@sid.nil? && @sid.to_s.size > 34
        invalid_properties.push("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !@sid.nil? && @sid.to_s.size < 34
        invalid_properties.push("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^NO[0-9a-fA-F]{32}$/
      if !@sid.nil? && @sid !~ pattern
        invalid_properties.push("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_sid.nil? && @account_sid.to_s.size > 34
      return false if !@account_sid.nil? && @account_sid.to_s.size < 34
      return false if !@account_sid.nil? && @account_sid !~ /^AC[0-9a-fA-F]{32}$/
      return false if !@call_sid.nil? && @call_sid.to_s.size > 34
      return false if !@call_sid.nil? && @call_sid.to_s.size < 34
      return false if !@call_sid.nil? && @call_sid !~ /^CA[0-9a-fA-F]{32}$/
      request_method_validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      return false unless request_method_validator.valid?(@request_method)
      return false if !@sid.nil? && @sid.to_s.size > 34
      return false if !@sid.nil? && @sid.to_s.size < 34
      return false if !@sid.nil? && @sid !~ /^NO[0-9a-fA-F]{32}$/
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_sid Value to be assigned
    def account_sid=(account_sid)
      if !account_sid.nil? && account_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be smaller than or equal to 34.")
      end

      if !account_sid.nil? && account_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"account_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^AC[0-9a-fA-F]{32}$/
      if !account_sid.nil? && account_sid !~ pattern
        raise ArgumentError.new("invalid value for \"account_sid\", must conform to the pattern #{pattern}.")
      end

      @account_sid = account_sid
    end

    # Custom attribute writer method with validation
    # @param [Object] call_sid Value to be assigned
    def call_sid=(call_sid)
      if !call_sid.nil? && call_sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be smaller than or equal to 34.")
      end

      if !call_sid.nil? && call_sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"call_sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^CA[0-9a-fA-F]{32}$/
      if !call_sid.nil? && call_sid !~ pattern
        raise ArgumentError.new("invalid value for \"call_sid\", must conform to the pattern #{pattern}.")
      end

      @call_sid = call_sid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_method Object to be assigned
    def request_method=(request_method)
      validator = EnumAttributeValidator.new("String", ["HEAD", "GET", "POST", "PATCH", "PUT", "DELETE"])
      unless validator.valid?(request_method)
        raise ArgumentError.new("invalid value for \"request_method\", must be one of #{validator.allowable_values}.")
      end
      @request_method = request_method
    end

    # Custom attribute writer method with validation
    # @param [Object] sid Value to be assigned
    def sid=(sid)
      if !sid.nil? && sid.to_s.size > 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be smaller than or equal to 34.")
      end

      if !sid.nil? && sid.to_s.size < 34
        raise ArgumentError.new("invalid value for \"sid\", the character length must be great than or equal to 34.")
      end

      pattern = /^NO[0-9a-fA-F]{32}$/
      if !sid.nil? && sid !~ pattern
        raise ArgumentError.new("invalid value for \"sid\", must conform to the pattern #{pattern}.")
      end

      @sid = sid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_sid == o.account_sid &&
        api_version == o.api_version &&
        call_sid == o.call_sid &&
        date_created == o.date_created &&
        date_updated == o.date_updated &&
        error_code == o.error_code &&
        log == o.log &&
        message_date == o.message_date &&
        message_text == o.message_text &&
        more_info == o.more_info &&
        request_method == o.request_method &&
        request_url == o.request_url &&
        sid == o.sid &&
        uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_sid, api_version, call_sid, date_created, date_updated, error_code, log, message_date, message_text, more_info, request_method, request_url, sid, uri].hash
    end
  end
end
