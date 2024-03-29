#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/connect_app"
require "../models/connect_app_enum_permission"
require "../models/http_method"

require "../models/list_connect_app_response"

module Twilio
  class ConnectAppsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    # Delete an instance of a connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
    # @return [Nil]
    def delete_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Nil
      delete_connect_app_with_http_info(account_sid: account_sid, sid: sid)
      nil
    end

    # Delete an instance of a connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def delete_connect_app_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete_connect_app(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: ConnectAppsApi#delete_connect_app\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Delete an instance of a connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
    # @return nil
    def delete_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_delete_connect_app(account_sid: account_sid, sid: sid).execute(&block)
    end

    DELETE_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    DELETE_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    DELETE_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    DELETE_CONNECT_APP_MAX_LENGTH_FOR_SID         = 34
    DELETE_CONNECT_APP_MIN_LENGTH_FOR_SID         = 34
    DELETE_CONNECT_APP_PATTERN_FOR_SID            = /^CN[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_delete_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: ConnectAppsApi.delete_connect_app ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, DELETE_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, DELETE_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, DELETE_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, DELETE_CONNECT_APP_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, DELETE_CONNECT_APP_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, DELETE_CONNECT_APP_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/ConnectApps/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new

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
        http_method: :"DELETE",
        path: local_var_path,
        operation: "ConnectAppsApi.delete_connect_app",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Fetch an instance of a connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
    # @return [Twilio::ConnectApp]
    def fetch_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Twilio::ConnectApp
      data, _status_code, _headers = fetch_connect_app_with_http_info(account_sid: account_sid, sid: sid)
      data
    end

    # Fetch an instance of a connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
    # @return [Tuple(Twilio::ConnectApp, Integer, Hash)] Twilio::ConnectApp, response status code and response headers
    def fetch_connect_app_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Twilio::ConnectApp, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_fetch_connect_app(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: ConnectAppsApi#fetch_connect_app\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ConnectApp.from_json(body), status_code, headers)
    end

    # Fetch an instance of a connect-app
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to fetch.
    # @return nil
    def fetch_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_fetch_connect_app(account_sid: account_sid, sid: sid).execute(&block)
    end

    FETCH_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    FETCH_CONNECT_APP_MAX_LENGTH_FOR_SID         = 34
    FETCH_CONNECT_APP_MIN_LENGTH_FOR_SID         = 34
    FETCH_CONNECT_APP_PATTERN_FOR_SID            = /^CN[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_fetch_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: ConnectAppsApi.fetch_connect_app ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, FETCH_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, FETCH_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, FETCH_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, FETCH_CONNECT_APP_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, FETCH_CONNECT_APP_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, FETCH_CONNECT_APP_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/ConnectApps/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
        operation: "ConnectAppsApi.fetch_connect_app",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieve a list of connect-apps belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Twilio::ListConnectAppResponse]
    def list_connect_app(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Twilio::ListConnectAppResponse
      data, _status_code, _headers = list_connect_app_with_http_info(account_sid: account_sid, page_size: page_size)
      data
    end

    # Retrieve a list of connect-apps belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Tuple(Twilio::ListConnectAppResponse, Integer, Hash)] Twilio::ListConnectAppResponse, response status code and response headers
    def list_connect_app_with_http_info(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Tuple(Twilio::ListConnectAppResponse, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list_connect_app(account_sid: account_sid, page_size: page_size)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: ConnectAppsApi#list_connect_app\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ListConnectAppResponse.from_json(body), status_code, headers)
    end

    # Retrieve a list of connect-apps belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return nil
    def list_connect_app(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list_connect_app(account_sid: account_sid, page_size: page_size).execute(&block)
    end

    LIST_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    LIST_CONNECT_APP_MAX_FOR_PAGE_SIZE          = Int32.new("1000")
    LIST_CONNECT_APP_MIN_FOR_PAGE_SIZE          = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list_connect_app(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: ConnectAppsApi.list_connect_app ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, LIST_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, LIST_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, LIST_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID)
        end
        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, LIST_CONNECT_APP_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, LIST_CONNECT_APP_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/ConnectApps.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

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
        operation: "ConnectAppsApi.list_connect_app",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Update a connect-app with the specified parameters
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to update.
    # @optional @param authorize_redirect_url [String?] The URL to redirect the user to after we authenticate the user and obtain authorization to access the Connect App.
    # @optional @param company_name [String?] The company name to set for the Connect App.
    # @optional @param deauthorize_callback_method [Twilio::HttpMethod?]
    # @optional @param deauthorize_callback_url [String?] The URL to call using the `deauthorize_callback_method` to de-authorize the Connect App.
    # @optional @param description [String?] A description of the Connect App.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @optional @param homepage_url [String?] A public URL where users can obtain more information about this Connect App.
    # @optional @param permissions [Array(ConnectAppEnumPermission)?] A comma-separated list of the permissions you will request from the users of this ConnectApp.  Can include: `get-all` and `post-all`.
    # @return [Twilio::ConnectApp]
    def update_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      authorize_redirect_url : String? = nil,
      company_name : String? = nil,
      deauthorize_callback_method : Twilio::HttpMethod? = nil,
      deauthorize_callback_url : String? = nil,
      description : String? = nil,
      friendly_name : String? = nil,
      homepage_url : String? = nil,
      permissions : Array(ConnectAppEnumPermission)? = nil
    ) : Twilio::ConnectApp
      data, _status_code, _headers = update_connect_app_with_http_info(account_sid: account_sid, sid: sid, authorize_redirect_url: authorize_redirect_url, company_name: company_name, deauthorize_callback_method: deauthorize_callback_method, deauthorize_callback_url: deauthorize_callback_url, description: description, friendly_name: friendly_name, homepage_url: homepage_url, permissions: permissions)
      data
    end

    # Update a connect-app with the specified parameters
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to update.
    # @optional @param authorize_redirect_url [String?] The URL to redirect the user to after we authenticate the user and obtain authorization to access the Connect App.
    # @optional @param company_name [String?] The company name to set for the Connect App.
    # @optional @param deauthorize_callback_method [Twilio::HttpMethod?]
    # @optional @param deauthorize_callback_url [String?] The URL to call using the `deauthorize_callback_method` to de-authorize the Connect App.
    # @optional @param description [String?] A description of the Connect App.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @optional @param homepage_url [String?] A public URL where users can obtain more information about this Connect App.
    # @optional @param permissions [Array(ConnectAppEnumPermission)?] A comma-separated list of the permissions you will request from the users of this ConnectApp.  Can include: `get-all` and `post-all`.
    # @return [Tuple(Twilio::ConnectApp, Integer, Hash)] Twilio::ConnectApp, response status code and response headers
    def update_connect_app_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      authorize_redirect_url : String? = nil,
      company_name : String? = nil,
      deauthorize_callback_method : Twilio::HttpMethod? = nil,
      deauthorize_callback_url : String? = nil,
      description : String? = nil,
      friendly_name : String? = nil,
      homepage_url : String? = nil,
      permissions : Array(ConnectAppEnumPermission)? = nil
    ) : Tuple(Twilio::ConnectApp, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_update_connect_app(account_sid: account_sid, sid: sid, authorize_redirect_url: authorize_redirect_url, company_name: company_name, deauthorize_callback_method: deauthorize_callback_method, deauthorize_callback_url: deauthorize_callback_url, description: description, friendly_name: friendly_name, homepage_url: homepage_url, permissions: permissions)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: ConnectAppsApi#update_connect_app\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ConnectApp.from_json(body), status_code, headers)
    end

    # Update a connect-app with the specified parameters
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resources to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the ConnectApp resource to update.
    # @optional @param authorize_redirect_url [String?] The URL to redirect the user to after we authenticate the user and obtain authorization to access the Connect App.
    # @optional @param company_name [String?] The company name to set for the Connect App.
    # @optional @param deauthorize_callback_method [Twilio::HttpMethod?]
    # @optional @param deauthorize_callback_url [String?] The URL to call using the `deauthorize_callback_method` to de-authorize the Connect App.
    # @optional @param description [String?] A description of the Connect App.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @optional @param homepage_url [String?] A public URL where users can obtain more information about this Connect App.
    # @optional @param permissions [Array(ConnectAppEnumPermission)?] A comma-separated list of the permissions you will request from the users of this ConnectApp.  Can include: `get-all` and `post-all`.
    # @return nil
    def update_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      authorize_redirect_url : String? = nil,
      company_name : String? = nil,
      deauthorize_callback_method : Twilio::HttpMethod? = nil,
      deauthorize_callback_url : String? = nil,
      description : String? = nil,
      friendly_name : String? = nil,
      homepage_url : String? = nil,
      permissions : Array(ConnectAppEnumPermission)? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_update_connect_app(account_sid: account_sid, sid: sid, authorize_redirect_url: authorize_redirect_url, company_name: company_name, deauthorize_callback_method: deauthorize_callback_method, deauthorize_callback_url: deauthorize_callback_url, description: description, friendly_name: friendly_name, homepage_url: homepage_url, permissions: permissions).execute(&block)
    end

    UPDATE_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    UPDATE_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    UPDATE_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    UPDATE_CONNECT_APP_MAX_LENGTH_FOR_SID         = 34
    UPDATE_CONNECT_APP_MIN_LENGTH_FOR_SID         = 34
    UPDATE_CONNECT_APP_PATTERN_FOR_SID            = /^CN[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_update_connect_app(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      authorize_redirect_url : String? = nil,
      company_name : String? = nil,
      deauthorize_callback_method : Twilio::HttpMethod? = nil,
      deauthorize_callback_url : String? = nil,
      description : String? = nil,
      friendly_name : String? = nil,
      homepage_url : String? = nil,
      permissions : Array(ConnectAppEnumPermission)? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: ConnectAppsApi.update_connect_app ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, UPDATE_CONNECT_APP_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, UPDATE_CONNECT_APP_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, UPDATE_CONNECT_APP_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, UPDATE_CONNECT_APP_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, UPDATE_CONNECT_APP_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, UPDATE_CONNECT_APP_PATTERN_FOR_SID)
        end

        unless (_deauthorize_callback_method = deauthorize_callback_method).nil?
          _deauthorize_callback_method.validate
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/ConnectApps/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
      form_params << Tuple(String, Crest::ParamsValue).new("AuthorizeRedirectUrl", authorize_redirect_url.to_s) if !authorize_redirect_url.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("CompanyName", company_name.to_s) if !company_name.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("DeauthorizeCallbackMethod", deauthorize_callback_method.to_s) if !deauthorize_callback_method.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("DeauthorizeCallbackUrl", deauthorize_callback_url.to_s) if !deauthorize_callback_url.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("Description", description.to_s) if !description.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("FriendlyName", friendly_name.to_s) if !friendly_name.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("HomepageUrl", homepage_url.to_s) if !homepage_url.nil?
      form_params.concat(@api_client.build_collection_param_tuples("Permissions", permissions, "multi")) if !permissions.nil? && !permissions.empty?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["accountSid_authToken"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "ConnectAppsApi.update_connect_app",
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
