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
  class NotificationInstance
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The SID of the Account that created the resource
    @[JSON::Field(key: "account_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_sid.nil? && !account_sid_present?)]
    getter account_sid : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_SID = 34
    MIN_LENGTH_FOR_ACCOUNT_SID = 34
    PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? account_sid_present : Bool = false

    # The API version used to generate the notification
    @[JSON::Field(key: "api_version", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: api_version.nil? && !api_version_present?)]
    getter api_version : String? = nil

    @[JSON::Field(ignore: true)]
    property? api_version_present : Bool = false

    # The SID of the Call the resource is associated with
    @[JSON::Field(key: "call_sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: call_sid.nil? && !call_sid_present?)]
    getter call_sid : String? = nil
    MAX_LENGTH_FOR_CALL_SID = 34
    MIN_LENGTH_FOR_CALL_SID = 34
    PATTERN_FOR_CALL_SID    = /^CA[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? call_sid_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was created
    @[JSON::Field(key: "date_created", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_created.nil? && !date_created_present?, converter: Time::RFC2822Converter)]
    getter date_created : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_created_present : Bool = false

    # The RFC 2822 date and time in GMT that the resource was last updated
    @[JSON::Field(key: "date_updated", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_updated.nil? && !date_updated_present?, converter: Time::RFC2822Converter)]
    getter date_updated : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_updated_present : Bool = false

    # A unique error code corresponding to the notification
    @[JSON::Field(key: "error_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error_code.nil? && !error_code_present?)]
    getter error_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? error_code_present : Bool = false

    # An integer log level
    @[JSON::Field(key: "log", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: log.nil? && !log_present?)]
    getter log : String? = nil

    @[JSON::Field(ignore: true)]
    property? log_present : Bool = false

    # The date the notification was generated
    @[JSON::Field(key: "message_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: message_date.nil? && !message_date_present?, converter: Time::RFC2822Converter)]
    getter message_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? message_date_present : Bool = false

    # The text of the notification
    @[JSON::Field(key: "message_text", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: message_text.nil? && !message_text_present?)]
    getter message_text : String? = nil

    @[JSON::Field(ignore: true)]
    property? message_text_present : Bool = false

    # A URL for more information about the error code
    @[JSON::Field(key: "more_info", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: more_info.nil? && !more_info_present?)]
    getter more_info : String? = nil

    @[JSON::Field(ignore: true)]
    property? more_info_present : Bool = false

    @[JSON::Field(key: "request_method", type: Twilio::HttpMethod?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_method.nil? && !request_method_present?)]
    getter request_method : Twilio::HttpMethod? = nil

    @[JSON::Field(ignore: true)]
    property? request_method_present : Bool = false

    # URL of the resource that generated the notification
    @[JSON::Field(key: "request_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_url.nil? && !request_url_present?)]
    getter request_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? request_url_present : Bool = false

    # Twilio-generated HTTP variables sent to the server
    @[JSON::Field(key: "request_variables", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_variables.nil? && !request_variables_present?)]
    getter request_variables : String? = nil

    @[JSON::Field(ignore: true)]
    property? request_variables_present : Bool = false

    # The HTTP body returned by your server
    @[JSON::Field(key: "response_body", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: response_body.nil? && !response_body_present?)]
    getter response_body : String? = nil

    @[JSON::Field(ignore: true)]
    property? response_body_present : Bool = false

    # The HTTP headers returned by your server
    @[JSON::Field(key: "response_headers", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: response_headers.nil? && !response_headers_present?)]
    getter response_headers : String? = nil

    @[JSON::Field(ignore: true)]
    property? response_headers_present : Bool = false

    # The unique string that identifies the resource
    @[JSON::Field(key: "sid", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sid.nil? && !sid_present?)]
    getter sid : String? = nil
    MAX_LENGTH_FOR_SID = 34
    MIN_LENGTH_FOR_SID = 34
    PATTERN_FOR_SID    = /^NO[0-9a-fA-F]{32}$/

    @[JSON::Field(ignore: true)]
    property? sid_present : Bool = false

    # The URI of the resource, relative to `https://api.twilio.com`
    @[JSON::Field(key: "uri", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: uri.nil? && !uri_present?)]
    getter uri : String? = nil

    @[JSON::Field(ignore: true)]
    property? uri_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_sid : String? = nil,
      @api_version : String? = nil,
      @call_sid : String? = nil,
      @date_created : Time? = nil,
      @date_updated : Time? = nil,
      @error_code : String? = nil,
      @log : String? = nil,
      @message_date : Time? = nil,
      @message_text : String? = nil,
      @more_info : String? = nil,
      @request_method : Twilio::HttpMethod? = nil,
      @request_url : String? = nil,
      @request_variables : String? = nil,
      @response_body : String? = nil,
      @response_headers : String? = nil,
      @sid : String? = nil,
      @uri : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_sid = @account_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_sid", _account_sid.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("account_sid", _account_sid.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("account_sid", _account_sid, PATTERN_FOR_ACCOUNT_SID)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_call_sid = @call_sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("call_sid", _call_sid.to_s.size, MAX_LENGTH_FOR_CALL_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("call_sid", _call_sid.to_s.size, MIN_LENGTH_FOR_CALL_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("call_sid", _call_sid, PATTERN_FOR_CALL_SID)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_request_method = @request_method).nil?
        invalid_properties.push(_request_method.error_message) if !_request_method.valid?
      end

      unless (_sid = @sid).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sid", _sid.to_s.size, MAX_LENGTH_FOR_SID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("sid", _sid.to_s.size, MIN_LENGTH_FOR_SID)
          invalid_properties.push(min_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("sid", _sid, PATTERN_FOR_SID)
          invalid_properties.push(pattern_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_sid = @account_sid).nil?
        return false if _account_sid.to_s.size > MAX_LENGTH_FOR_ACCOUNT_SID
        return false if _account_sid.to_s.size < MIN_LENGTH_FOR_ACCOUNT_SID
        return false if !PATTERN_FOR_ACCOUNT_SID.matches?(_account_sid)
      end

      unless (_call_sid = @call_sid).nil?
        return false if _call_sid.to_s.size > MAX_LENGTH_FOR_CALL_SID
        return false if _call_sid.to_s.size < MIN_LENGTH_FOR_CALL_SID
        return false if !PATTERN_FOR_CALL_SID.matches?(_call_sid)
      end

      unless (_request_method = @request_method).nil?
        return false if !_request_method.valid?
      end

      unless (_sid = @sid).nil?
        return false if _sid.to_s.size > MAX_LENGTH_FOR_SID
        return false if _sid.to_s.size < MIN_LENGTH_FOR_SID
        return false if !PATTERN_FOR_SID.matches?(_sid)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_sid Object to be assigned
    def account_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account_sid", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_min_length("account_sid", new_value.to_s.size, MIN_LENGTH_FOR_ACCOUNT_SID)
        OpenApi::PrimitiveValidator.validate_pattern("account_sid", new_value, PATTERN_FOR_ACCOUNT_SID)
      end

      @account_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] api_version Object to be assigned
    def api_version=(new_value : String?)
      @api_version = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] call_sid Object to be assigned
    def call_sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("call_sid", new_value.to_s.size, MAX_LENGTH_FOR_CALL_SID)
        OpenApi::PrimitiveValidator.validate_min_length("call_sid", new_value.to_s.size, MIN_LENGTH_FOR_CALL_SID)
        OpenApi::PrimitiveValidator.validate_pattern("call_sid", new_value, PATTERN_FOR_CALL_SID)
      end

      @call_sid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_created Object to be assigned
    def date_created=(new_value : Time?)
      @date_created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_updated Object to be assigned
    def date_updated=(new_value : Time?)
      @date_updated = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(new_value : String?)
      @error_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] log Object to be assigned
    def log=(new_value : String?)
      @log = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_date Object to be assigned
    def message_date=(new_value : Time?)
      @message_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_text Object to be assigned
    def message_text=(new_value : String?)
      @message_text = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] more_info Object to be assigned
    def more_info=(new_value : String?)
      @more_info = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_method Object to be assigned
    def request_method=(new_value : Twilio::HttpMethod?)
      unless new_value.nil?
        new_value.validate
      end

      @request_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_url Object to be assigned
    def request_url=(new_value : String?)
      @request_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_variables Object to be assigned
    def request_variables=(new_value : String?)
      @request_variables = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] response_body Object to be assigned
    def response_body=(new_value : String?)
      @response_body = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] response_headers Object to be assigned
    def response_headers=(new_value : String?)
      @response_headers = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sid Object to be assigned
    def sid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sid", new_value.to_s.size, MAX_LENGTH_FOR_SID)
        OpenApi::PrimitiveValidator.validate_min_length("sid", new_value.to_s.size, MIN_LENGTH_FOR_SID)
        OpenApi::PrimitiveValidator.validate_pattern("sid", new_value, PATTERN_FOR_SID)
      end

      @sid = new_value
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
    def_equals_and_hash(@account_sid, @account_sid_present, @api_version, @api_version_present, @call_sid, @call_sid_present, @date_created, @date_created_present, @date_updated, @date_updated_present, @error_code, @error_code_present, @log, @log_present, @message_date, @message_date_present, @message_text, @message_text_present, @more_info, @more_info_present, @request_method, @request_method_present, @request_url, @request_url_present, @request_variables, @request_variables_present, @response_body, @response_body_present, @response_headers, @response_headers_present, @sid, @sid_present, @uri, @uri_present)
  end
end
