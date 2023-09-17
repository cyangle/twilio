#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "log"
require "./configuration"
require "./api_error"

module Twilio
  class ApiClient
    DEFAULT_MIME_TYPE               = "application/octet-stream"
    COLLECTION_FORMAT_MULTI         = "multi"
    COLLECTION_FORMAT_SEPARATOR_MAP = {
      "csv"                   => ",",
      "ssv"                   => " ",
      "tsv"                   => "\t",
      "pipes"                 => "|",
      COLLECTION_FORMAT_MULTI => COLLECTION_FORMAT_MULTI,
    }
    UNKNOWN_COLLECTION_FORMAT_SEPARATOR = "unknown"
    JSON_MIME_REGEX                     = /Application\/.*json(?!p)(;.*)?/i

    # The Configuration object holding settings to be used in the API client.
    property config : Configuration

    # The encoder class used to encode request body
    property default_url_encoder : Crest::ParamsEncoder.class

    # Defines the headers to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    property default_headers : Hash(String, String)

    # Defines the cookies to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    property default_cookies : Hash(String, String)

    # User Agent
    getter user_agent : String? = nil

    # Initializes the ApiClient
    # @option config [Configuration] Configuration for initializing the object, default to Configuration.default
    def initialize(
      @config = Configuration.default,
      @default_url_encoder = Crest::ZeroEnumeratedFlatParamsEncoder,
      @default_headers = Hash(String, String).new,
      @default_cookies = Hash(String, String).new
    )
    end

    def self.default : ApiClient
      @@default ||= ApiClient.new
    end

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime : String) : Bool
      (mime == "*/*") || JSON_MIME_REGEX.matches?(mime)
    end

    def build_request_url(path : String, operation : String?) : String
      # Add leading and trailing slashes to path
      path = "/#{path}".gsub(/\/+/, "/")
      @config.base_url(operation) + path
    end

    # Update header and query params based on authentication settings.
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] query_params Query parameters
    # @param [String] auth_names Authentication scheme name
    def update_params_for_auth!(
      header_params : Hash(String, String),
      cookie_params : Hash(String, String),
      query_params : Hash(String, (String | Array(String) | JSON::Any)),
      auth_names : Array(String)
    ) : Nil
      auth_names.each do |auth_name|
        auth_setting = @config.auth_settings[auth_name]
        next unless auth_setting
        case auth_setting["in"]
        when "header"
          header_params[auth_setting["key"]] = auth_setting["value"]
        when "cookie"
          cookie_params[auth_setting["key"]] = auth_setting["value"]
        when "query"
          query_params[auth_setting["key"]] = auth_setting["value"]
        else
          raise ArgumentError.new("Authentication token must be in `query` or `header`")
        end
      end
    end

    # Sets user agent in HTTP header
    #
    # @param [String] user_agent User agent (e.g. openapi-generator/ruby/1.0.0)
    def user_agent=(user_agent : String?) : Nil
      @default_headers["User-Agent"] = user_agent unless user_agent.nil?

      @user_agent = user_agent
    end

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts : Array(String)) : String
      # return nil if accepts.nil? || accepts.empty?
      # use JSON when present, otherwise use all of the provided
      json_accept : String? = accepts.find { |s| json_mime?(s) }
      if json_accept.nil?
        accepts.join(",")
      else
        json_accept
      end
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types : Array(String)) : String
      # use application/json by default
      return "application/json" if content_types.empty?
      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      (json_content_type || content_types.first).not_nil!
    end

    # Build HTTP header value for array
    # HTTP header values are always comma separated
    # @param [Array] params
    def build_header_param(params : Array) : String
      params.map(&.to_s).join(",")
    end

    # Build tuples of parameters according to the given collection format.
    # @param [String] collection_format one of csv, ssv, tsv, pipes and multi
    def build_collection_param_tuples(name : String, params : Array, collection_format : String) : Array(Tuple(String, Crest::ParamsValue))
      build_collection_param(params, collection_format).map do |value|
        Tuple(String, Crest::ParamsValue).new(name, value)
      end
    end

    # Build parameter value according to the given collection format.
    # @param [String] collection_format one of csv, ssv, tsv, pipes and multi
    def build_collection_param(params : Array, collection_format : String) : Array(String)
      separator = COLLECTION_FORMAT_SEPARATOR_MAP.fetch(collection_format, UNKNOWN_COLLECTION_FORMAT_SEPARATOR)
      raise "unknown collection format: #{collection_format}" if separator == UNKNOWN_COLLECTION_FORMAT_SEPARATOR

      param_strings = params.map(&.to_s)
      return param_strings if collection_format == COLLECTION_FORMAT_MULTI

      [param_strings.join(separator)]
    end

    # Build form data from form params
    # @param [Array(Tuple(String, Crest::ParamsValue))] form_params
    def build_form_data(form_params : Array(Tuple(String, Crest::ParamsValue)), header_params : Hash(String, String)) : String
      if form_params.any?(&.[1].is_a?(IO))
        build_multipart_form_data(form_params, header_params)
      else
        build_url_encoded_form_data(form_params)
      end
    end

    # Build url encoded form data from form params
    # @param [Array(Tuple(String, Crest::ParamsValue))] form_params
    def build_url_encoded_form_data(form_params : Array(Tuple(String, Crest::ParamsValue))) : String
      HTTP::Params.build do |form|
        form_params.each do |name, value|
          form.add(name, value.to_s)
        end
      end
    end

    # Build multipart form data from form params
    # @param [Array(Tuple(String, Crest::ParamsValue))] form_params
    def build_multipart_form_data(form_params : Array(Tuple(String, Crest::ParamsValue)), header_params : Hash(String, String)) : String
      io = IO::Memory.new

      HTTP::FormData.build(io) do |formdata|
        header_params["Content-Type"] = formdata.content_type

        form_params.each do |name, value|
          if value.is_a?(IO)
            add_io_field_to_form(formdata, name, value.as(IO))
          else
            formdata.field(name, value.to_s)
          end
        end
      end

      io.to_s
    end

    private def add_io_field_to_form(formdata : HTTP::FormData::Builder, name : String, io : IO)
      filename = io.is_a?(::File) ? io.as(::File).path : name.to_s
      mime = MIME.from_filename(filename, DEFAULT_MIME_TYPE)
      metadata = HTTP::FormData::FileMetadata.new(filename: filename)
      headers = HTTP::Headers{"Content-Type" => mime}

      formdata.file(name.to_s, io, metadata, headers)
    end

    def encode(
      body : Hash | Array | OpenApi::Json | JSON::Any,
      content_type : String? = nil,
      url_encoder : Crest::ParamsEncoder.class | Nil = nil
    ) : String
      # Encode body to json string
      return body.to_json if content_type.nil? || json_mime?(content_type.not_nil!)

      # Assume content_type is application/x-www-form-urlencoded
      raise ArgumentError.new("Can not secrialize Array into url encoded string, must be a Hash") if body.is_a?(Array)

      # Crest::ParamsEncoder doesn't support encoding OpenApi::Json objects
      # So we convert body to JSON::Any first
      json_any : JSON::Any = body.is_a?(JSON::Any) ? body : JSON.parse(body.to_json)

      (url_encoder || default_url_encoder).encode(json_any.as_h)
    end

    # Build an API request with given options.
    #
    # @return Crest::Request
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def build_api_request(
      http_method : Symbol,
      path : String,
      operation : String? = nil,
      post_body : IO | String | Nil = nil,
      auth_names : Array(String) = Array(String).new,
      header_params : Hash(String, String) = Hash(String, String).new,
      cookie_params : Hash(String, String) = Hash(String, String).new,
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new,
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil
    ) : Crest::Request
      # ssl_options = {
      #   "ca_file" => @config.ssl_ca_file,
      #   "verify" => @config.ssl_verify,
      #   "verify_mode" => @config.ssl_verify_mode,
      #   "client_cert" => @config.ssl_client_cert,
      #   "client_key" => @config.ssl_client_key
      # }

      update_params_for_auth! header_params, cookie_params, query_params, auth_names
      header_params.merge!(default_headers)
      cookie_params.merge!(default_cookies)

      form_or_body : IO | String | Nil = nil

      if !post_body.nil? && (post_body.is_a?(IO) || post_body.is_a?(String) && !post_body.empty?)
        # use JSON string in the payload
        form_or_body = post_body
      elsif !form_params.nil?
        form_or_body = build_form_data(form_params.not_nil!, header_params)
      end

      Crest::Request.new(
        http_method,
        build_request_url(path, operation),
        params: query_params,
        headers: header_params,
        cookies: cookie_params,
        form: form_or_body,
        logging: @config.debugging?,
        handle_errors: false,
        params_encoder: Crest::NestedParamsEncoder
      )
    end

    def execute_api_request(request : Crest::Request) : Tuple(String, Int32, Hash(String, Array(String) | String))
      response = request.execute

      if @config.debugging?
        Log.debug { "HTTP response body ~BEGIN~\n#{response.body}\n~END~\n" }
      end

      if !response.success?
        if response.status == 0
          # Errors from libcurl will be made visible here
          raise ApiError.new(code: 0, message: response.body)
        else
          raise ApiError.new(
            code: response.status_code,
            response_headers: response.headers,
            message: response.body
          )
        end
      end

      return {response.body, response.status_code, response.headers}
    end
  end
end
