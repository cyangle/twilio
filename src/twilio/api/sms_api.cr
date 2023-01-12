#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/http_method"

require "../models/list_short_code_response"
require "../models/short_code"

module Twilio
  class SMSApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    # Fetch an instance of a short code
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ShortCode resource to fetch
    # @return [Twilio::ShortCode]
    def fetch_short_code(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Twilio::ShortCode
      data, _status_code, _headers = fetch_short_code_with_http_info(account_sid: account_sid, sid: sid)
      data
    end

    # Fetch an instance of a short code
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ShortCode resource to fetch
    # @return [Tuple(Twilio::ShortCode, Integer, Hash)] Twilio::ShortCode, response status code and response headers
    def fetch_short_code_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Twilio::ShortCode, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_fetch_short_code(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: SMSApi#fetch_short_code\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ShortCode.from_json(body), status_code, headers)
    end

    # Fetch an instance of a short code
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ShortCode resource to fetch
    # @return nil
    def fetch_short_code(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_fetch_short_code(account_sid: account_sid, sid: sid).execute(&block)
    end

    FETCH_SHORT_CODE_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_SHORT_CODE_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_SHORT_CODE_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    FETCH_SHORT_CODE_MAX_LENGTH_FOR_SID         = 34
    FETCH_SHORT_CODE_MIN_LENGTH_FOR_SID         = 34
    FETCH_SHORT_CODE_PATTERN_FOR_SID            = /^SC[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_fetch_short_code(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: SMSApi.fetch_short_code ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, FETCH_SHORT_CODE_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, FETCH_SHORT_CODE_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, FETCH_SHORT_CODE_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, FETCH_SHORT_CODE_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, FETCH_SHORT_CODE_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, FETCH_SHORT_CODE_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/SMS/ShortCodes/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["accountSid_authToken"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "SMSApi.fetch_short_code",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieve a list of short-codes belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to read.
    # @optional @param friendly_name [String?] The string that identifies the ShortCode resources to read.
    # @optional @param short_code [String?] Only show the ShortCode resources that match this pattern. You can specify partial numbers and use '*' as a wildcard for any digit.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Twilio::ListShortCodeResponse]
    def list_short_code(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil,
      short_code : String? = nil,
      page_size : Int32? = nil
    ) : Twilio::ListShortCodeResponse
      data, _status_code, _headers = list_short_code_with_http_info(account_sid: account_sid, friendly_name: friendly_name, short_code: short_code, page_size: page_size)
      data
    end

    # Retrieve a list of short-codes belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to read.
    # @optional @param friendly_name [String?] The string that identifies the ShortCode resources to read.
    # @optional @param short_code [String?] Only show the ShortCode resources that match this pattern. You can specify partial numbers and use '*' as a wildcard for any digit.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Tuple(Twilio::ListShortCodeResponse, Integer, Hash)] Twilio::ListShortCodeResponse, response status code and response headers
    def list_short_code_with_http_info(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil,
      short_code : String? = nil,
      page_size : Int32? = nil
    ) : Tuple(Twilio::ListShortCodeResponse, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list_short_code(account_sid: account_sid, friendly_name: friendly_name, short_code: short_code, page_size: page_size)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: SMSApi#list_short_code\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ListShortCodeResponse.from_json(body), status_code, headers)
    end

    # Retrieve a list of short-codes belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to read.
    # @optional @param friendly_name [String?] The string that identifies the ShortCode resources to read.
    # @optional @param short_code [String?] Only show the ShortCode resources that match this pattern. You can specify partial numbers and use '*' as a wildcard for any digit.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return nil
    def list_short_code(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil,
      short_code : String? = nil,
      page_size : Int32? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list_short_code(account_sid: account_sid, friendly_name: friendly_name, short_code: short_code, page_size: page_size).execute(&block)
    end

    LIST_SHORT_CODE_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_SHORT_CODE_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_SHORT_CODE_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    LIST_SHORT_CODE_MAX_FOR_PAGE_SIZE          = Int32.new("1000")
    LIST_SHORT_CODE_MIN_FOR_PAGE_SIZE          = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list_short_code(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil,
      short_code : String? = nil,
      page_size : Int32? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: SMSApi.list_short_code ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, LIST_SHORT_CODE_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, LIST_SHORT_CODE_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, LIST_SHORT_CODE_PATTERN_FOR_ACCOUNT_SID)
        end

        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, LIST_SHORT_CODE_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, LIST_SHORT_CODE_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/SMS/ShortCodes.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["FriendlyName"] = friendly_name.to_s if !friendly_name.nil?
      query_params["ShortCode"] = short_code.to_s if !short_code.nil?
      query_params["PageSize"] = page_size.to_s if !page_size.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["accountSid_authToken"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "SMSApi.list_short_code",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Update a short code with the following parameters
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ShortCode resource to update
    # @optional @param api_version [String?] The API version to use to start a new TwiML session. Can be: `2010-04-01` or `2008-08-01`.
    # @optional @param friendly_name [String?] A descriptive string that you created to describe this resource. It can be up to 64 characters long. By default, the `FriendlyName` is the short code.
    # @optional @param sms_fallback_method [Twilio::HttpMethod?]
    # @optional @param sms_fallback_url [String?] The URL that we should call if an error occurs while retrieving or executing the TwiML from `sms_url`.
    # @optional @param sms_method [Twilio::HttpMethod?]
    # @optional @param sms_url [String?] The URL we should call when receiving an incoming SMS message to this short code.
    # @return [Twilio::ShortCode]
    def update_short_code(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      api_version : String? = nil,
      friendly_name : String? = nil,
      sms_fallback_method : Twilio::HttpMethod? = nil,
      sms_fallback_url : String? = nil,
      sms_method : Twilio::HttpMethod? = nil,
      sms_url : String? = nil
    ) : Twilio::ShortCode
      data, _status_code, _headers = update_short_code_with_http_info(account_sid: account_sid, sid: sid, api_version: api_version, friendly_name: friendly_name, sms_fallback_method: sms_fallback_method, sms_fallback_url: sms_fallback_url, sms_method: sms_method, sms_url: sms_url)
      data
    end

    # Update a short code with the following parameters
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ShortCode resource to update
    # @optional @param api_version [String?] The API version to use to start a new TwiML session. Can be: `2010-04-01` or `2008-08-01`.
    # @optional @param friendly_name [String?] A descriptive string that you created to describe this resource. It can be up to 64 characters long. By default, the `FriendlyName` is the short code.
    # @optional @param sms_fallback_method [Twilio::HttpMethod?]
    # @optional @param sms_fallback_url [String?] The URL that we should call if an error occurs while retrieving or executing the TwiML from `sms_url`.
    # @optional @param sms_method [Twilio::HttpMethod?]
    # @optional @param sms_url [String?] The URL we should call when receiving an incoming SMS message to this short code.
    # @return [Tuple(Twilio::ShortCode, Integer, Hash)] Twilio::ShortCode, response status code and response headers
    def update_short_code_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      api_version : String? = nil,
      friendly_name : String? = nil,
      sms_fallback_method : Twilio::HttpMethod? = nil,
      sms_fallback_url : String? = nil,
      sms_method : Twilio::HttpMethod? = nil,
      sms_url : String? = nil
    ) : Tuple(Twilio::ShortCode, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_update_short_code(account_sid: account_sid, sid: sid, api_version: api_version, friendly_name: friendly_name, sms_fallback_method: sms_fallback_method, sms_fallback_url: sms_fallback_url, sms_method: sms_method, sms_url: sms_url)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: SMSApi#update_short_code\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ShortCode.from_json(body), status_code, headers)
    end

    # Update a short code with the following parameters
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ShortCode resource(s) to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ShortCode resource to update
    # @optional @param api_version [String?] The API version to use to start a new TwiML session. Can be: `2010-04-01` or `2008-08-01`.
    # @optional @param friendly_name [String?] A descriptive string that you created to describe this resource. It can be up to 64 characters long. By default, the `FriendlyName` is the short code.
    # @optional @param sms_fallback_method [Twilio::HttpMethod?]
    # @optional @param sms_fallback_url [String?] The URL that we should call if an error occurs while retrieving or executing the TwiML from `sms_url`.
    # @optional @param sms_method [Twilio::HttpMethod?]
    # @optional @param sms_url [String?] The URL we should call when receiving an incoming SMS message to this short code.
    # @return nil
    def update_short_code(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      api_version : String? = nil,
      friendly_name : String? = nil,
      sms_fallback_method : Twilio::HttpMethod? = nil,
      sms_fallback_url : String? = nil,
      sms_method : Twilio::HttpMethod? = nil,
      sms_url : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_update_short_code(account_sid: account_sid, sid: sid, api_version: api_version, friendly_name: friendly_name, sms_fallback_method: sms_fallback_method, sms_fallback_url: sms_fallback_url, sms_method: sms_method, sms_url: sms_url).execute(&block)
    end

    UPDATE_SHORT_CODE_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    UPDATE_SHORT_CODE_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    UPDATE_SHORT_CODE_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    UPDATE_SHORT_CODE_MAX_LENGTH_FOR_SID         = 34
    UPDATE_SHORT_CODE_MIN_LENGTH_FOR_SID         = 34
    UPDATE_SHORT_CODE_PATTERN_FOR_SID            = /^SC[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_update_short_code(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      api_version : String? = nil,
      friendly_name : String? = nil,
      sms_fallback_method : Twilio::HttpMethod? = nil,
      sms_fallback_url : String? = nil,
      sms_method : Twilio::HttpMethod? = nil,
      sms_url : String? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: SMSApi.update_short_code ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, UPDATE_SHORT_CODE_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, UPDATE_SHORT_CODE_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, UPDATE_SHORT_CODE_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, UPDATE_SHORT_CODE_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, UPDATE_SHORT_CODE_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, UPDATE_SHORT_CODE_PATTERN_FOR_SID)
        end

        unless (_sms_fallback_method = sms_fallback_method).nil?
          _sms_fallback_method.validate
        end

        unless (_sms_method = sms_method).nil?
          _sms_method.validate
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/SMS/ShortCodes/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/x-www-form-urlencoded"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = Array(Tuple(String, Crest::ParamsValue)).new
      form_params << Tuple(String, Crest::ParamsValue).new("ApiVersion", api_version.to_s) if !api_version.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("FriendlyName", friendly_name.to_s) if !friendly_name.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("SmsFallbackMethod", sms_fallback_method.to_s) if !sms_fallback_method.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("SmsFallbackUrl", sms_fallback_url.to_s) if !sms_fallback_url.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("SmsMethod", sms_method.to_s) if !sms_method.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("SmsUrl", sms_url.to_s) if !sms_url.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["accountSid_authToken"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "SMSApi.update_short_code",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end