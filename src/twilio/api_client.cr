#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.23.1
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "log"
require "./configuration"

module Twilio
  class ApiClient
    COLLECTION_FORMAT_MULTI         = "multi"
    COLLECTION_FORMAT_SEPARATOR_MAP = {
      "csv"                   => ",",
      "ssv"                   => " ",
      "tsv"                   => "\t",
      "pipes"                 => "|",
      COLLECTION_FORMAT_MULTI => COLLECTION_FORMAT_MULTI,
    }
    UNKNOWN_COLLECTION_FORMAT_SEPARATOR = "unknown"

    # The Configuration object holding settings to be used in the API client.
    property config : Configuration

    # Defines the headers to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    property default_headers : Hash(String, String)

    # Initializes the ApiClient
    # @option config [Configuration] Configuration for initializing the object, default to Configuration.default
    def initialize(@config = Configuration.default)
      @user_agent = "OpenAPI-Generator/#{VERSION}/crystal"
      @default_headers = {
        "User-Agent" => @user_agent,
      }
    end

    def self.default
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
    def json_mime?(mime)
      (mime == "*/*") || !(mime =~ /Application\/.*json(?!p)(;.*)?/i).nil?
    end

    def build_request_url(path : String, operation : String)
      # Add leading and trailing slashes to path
      path = "/#{path}".gsub(/\/+/, "/")
      @config.base_url(operation) + path
    end

    # Update header and query params based on authentication settings.
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] query_params Query parameters
    # @param [String] auth_names Authentication scheme name
    def update_params_for_auth!(header_params, query_params, auth_names)
      auth_names.each do |auth_name|
        auth_setting = @config.auth_settings[auth_name]
        next unless auth_setting
        case auth_setting["in"]
        when "header"
          header_params[auth_setting["key"]] = auth_setting["value"]
        when "query"
          query_params[auth_setting["key"]] = auth_setting["value"]
        else
          raise ArgumentError.new("Authentication token must be in `query` of `header`")
        end
      end
    end

    # Sets user agent in HTTP header
    #
    # @param [String] user_agent User agent (e.g. openapi-generator/ruby/1.0.0)
    def user_agent=(user_agent)
      @user_agent = user_agent
      @default_headers["User-Agent"] = @user_agent
    end

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts) : String
      # return nil if accepts.nil? || accepts.empty?
      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      if json_accept.nil?
        accepts.join(",")
      else
        json_accept
      end
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # use application/json by default
      return "application/json" if content_types.nil? || content_types.empty?
      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    # Build parameter value according to the given collection format.
    # @param [String] collection_format one of csv, ssv, tsv, pipes and multi
    def build_collection_param(params : Array, collection_format : String) : String | Array(String)
      separator = COLLECTION_FORMAT_SEPARATOR_MAP.fetch(collection_format, UNKNOWN_COLLECTION_FORMAT_SEPARATOR)
      raise "unknown collection format: #{collection_format}" if separator == UNKNOWN_COLLECTION_FORMAT_SEPARATOR

      param_strings = params.map(&.to_s)
      return param_strings if collection_format == COLLECTION_FORMAT_MULTI

      param_strings.join(separator)
    end

    # Build an API request with given options.
    #
    # @return Crest::Request
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def build_api_request(http_method : Symbol, path : String, operation : String, post_body : String?, auth_names = [] of String, header_params = {} of String => String, query_params = {} of String => String, form_params : Hash(String, (String | Array(String) | ::File)) | Nil = {} of String => (String | Array(String) | ::File)) : Crest::Request
      # ssl_options = {
      #   "ca_file" => @config.ssl_ca_file,
      #   "verify" => @config.ssl_verify,
      #   "verify_mode" => @config.ssl_verify_mode,
      #   "client_cert" => @config.ssl_client_cert,
      #   "client_key" => @config.ssl_client_key
      # }

      update_params_for_auth! header_params, query_params, auth_names

      if !post_body.nil? && !post_body.empty?
        # use JSON string in the payload
        form_or_body = post_body
      else
        # use HTTP forms in the payload
        # TODO use HTTP form encoding
        form_or_body = form_params
      end

      Crest::Request.new(
        http_method,
        build_request_url(path, operation),
        params: query_params,
        headers: header_params,
        # cookies: cookie_params, # TODO add cookies support
        form: form_or_body,
        logging: @config.debugging,
        handle_errors: false,
        params_encoder: Crest::NestedParamsEncoder
      )
    end

    def execute_api_request(request : Crest::Request)
      response = request.execute

      if @config.debugging
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

      return response.body, response.status_code, response.headers
    end
  end
end
