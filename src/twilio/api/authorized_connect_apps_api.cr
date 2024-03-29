#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/authorized_connect_app"

require "../models/list_authorized_connect_app_response"

module Twilio
  class AuthorizedConnectAppsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    # Fetch an instance of an authorized-connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the AuthorizedConnectApp resource to fetch.
    # @required @param connect_app_sid [String?] The SID of the Connect App to fetch.
    # @return [Twilio::AuthorizedConnectApp]
    def fetch_authorized_connect_app(
      *,
      account_sid : String? = @account_sid,
      connect_app_sid : String? = nil
    ) : Twilio::AuthorizedConnectApp
      data, _status_code, _headers = fetch_authorized_connect_app_with_http_info(account_sid: account_sid, connect_app_sid: connect_app_sid)
      data
    end

    # Fetch an instance of an authorized-connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the AuthorizedConnectApp resource to fetch.
    # @required @param connect_app_sid [String?] The SID of the Connect App to fetch.
    # @return [Tuple(Twilio::AuthorizedConnectApp, Integer, Hash)] Twilio::AuthorizedConnectApp, response status code and response headers
    def fetch_authorized_connect_app_with_http_info(
      *,
      account_sid : String? = @account_sid,
      connect_app_sid : String? = nil
    ) : Tuple(Twilio::AuthorizedConnectApp, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_fetch_authorized_connect_app(account_sid: account_sid, connect_app_sid: connect_app_sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: AuthorizedConnectAppsApi#fetch_authorized_connect_app\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::AuthorizedConnectApp.from_json(body), status_code, headers)
    end

    # Fetch an instance of an authorized-connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the AuthorizedConnectApp resource to fetch.
    # @required @param connect_app_sid [String?] The SID of the Connect App to fetch.
    # @return nil
    def fetch_authorized_connect_app(
      *,
      account_sid : String? = @account_sid,
      connect_app_sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_fetch_authorized_connect_app(account_sid: account_sid, connect_app_sid: connect_app_sid).execute(&block)
    end

    FETCH_AUTHORIZED_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID     = 34
    FETCH_AUTHORIZED_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID     = 34
    FETCH_AUTHORIZED_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID        = /^AC[0-9a-fA-F]{32}$/
    FETCH_AUTHORIZED_CONNECT_APP_MAX_LENGTH_FOR_CONNECT_APP_SID = 34
    FETCH_AUTHORIZED_CONNECT_APP_MIN_LENGTH_FOR_CONNECT_APP_SID = 34
    FETCH_AUTHORIZED_CONNECT_APP_PATTERN_FOR_CONNECT_APP_SID    = /^CN[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_fetch_authorized_connect_app(
      *,
      account_sid : String? = @account_sid,
      connect_app_sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: AuthorizedConnectAppsApi.fetch_authorized_connect_app ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, FETCH_AUTHORIZED_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, FETCH_AUTHORIZED_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, FETCH_AUTHORIZED_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"connect_app_sid\" is required and cannot be null") if connect_app_sid.nil?
        unless (_connect_app_sid = connect_app_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("connect_app_sid", connect_app_sid.to_s.size, FETCH_AUTHORIZED_CONNECT_APP_MAX_LENGTH_FOR_CONNECT_APP_SID)
          OpenApi::PrimitiveValidator.validate_min_length("connect_app_sid", connect_app_sid.to_s.size, FETCH_AUTHORIZED_CONNECT_APP_MIN_LENGTH_FOR_CONNECT_APP_SID)
          OpenApi::PrimitiveValidator.validate_pattern("connect_app_sid", _connect_app_sid, FETCH_AUTHORIZED_CONNECT_APP_PATTERN_FOR_CONNECT_APP_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/AuthorizedConnectApps/{ConnectAppSid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "ConnectAppSid" + "}", URI.encode_path(connect_app_sid.to_s))

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
        operation: "AuthorizedConnectAppsApi.fetch_authorized_connect_app",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieve a list of authorized-connect-apps belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the AuthorizedConnectApp resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Twilio::ListAuthorizedConnectAppResponse]
    def list_authorized_connect_app(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Twilio::ListAuthorizedConnectAppResponse
      data, _status_code, _headers = list_authorized_connect_app_with_http_info(account_sid: account_sid, page_size: page_size)
      data
    end

    # Retrieve a list of authorized-connect-apps belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the AuthorizedConnectApp resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Tuple(Twilio::ListAuthorizedConnectAppResponse, Integer, Hash)] Twilio::ListAuthorizedConnectAppResponse, response status code and response headers
    def list_authorized_connect_app_with_http_info(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Tuple(Twilio::ListAuthorizedConnectAppResponse, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list_authorized_connect_app(account_sid: account_sid, page_size: page_size)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: AuthorizedConnectAppsApi#list_authorized_connect_app\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ListAuthorizedConnectAppResponse.from_json(body), status_code, headers)
    end

    # Retrieve a list of authorized-connect-apps belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the AuthorizedConnectApp resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return nil
    def list_authorized_connect_app(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list_authorized_connect_app(account_sid: account_sid, page_size: page_size).execute(&block)
    end

    LIST_AUTHORIZED_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_AUTHORIZED_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_AUTHORIZED_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    LIST_AUTHORIZED_CONNECT_APP_MAX_FOR_PAGE_SIZE          = Int32.new("1000")
    LIST_AUTHORIZED_CONNECT_APP_MIN_FOR_PAGE_SIZE          = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list_authorized_connect_app(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: AuthorizedConnectAppsApi.list_authorized_connect_app ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, LIST_AUTHORIZED_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, LIST_AUTHORIZED_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, LIST_AUTHORIZED_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID)
        end
        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, LIST_AUTHORIZED_CONNECT_APP_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, LIST_AUTHORIZED_CONNECT_APP_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/AuthorizedConnectApps.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
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
        operation: "AuthorizedConnectAppsApi.list_authorized_connect_app",
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
