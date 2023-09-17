#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/key"
require "../models/list_key_response"
require "../models/new_key"

module Twilio
  class KeysApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that will be responsible for the new Key resource.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @return [Twilio::NewKey]
    def create_new_key(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil
    ) : Twilio::NewKey
      data, _status_code, _headers = create_new_key_with_http_info(account_sid: account_sid, friendly_name: friendly_name)
      data
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that will be responsible for the new Key resource.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @return [Tuple(Twilio::NewKey, Integer, Hash)] Twilio::NewKey, response status code and response headers
    def create_new_key_with_http_info(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil
    ) : Tuple(Twilio::NewKey, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_create_new_key(account_sid: account_sid, friendly_name: friendly_name)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: KeysApi#create_new_key\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::NewKey.from_json(body), status_code, headers)
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that will be responsible for the new Key resource.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @return nil
    def create_new_key(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_create_new_key(account_sid: account_sid, friendly_name: friendly_name).execute(&block)
    end

    CREATE_NEW_KEY_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    CREATE_NEW_KEY_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    CREATE_NEW_KEY_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_create_new_key(
      *,
      account_sid : String? = @account_sid,
      friendly_name : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: KeysApi.create_new_key ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, CREATE_NEW_KEY_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, CREATE_NEW_KEY_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, CREATE_NEW_KEY_PATTERN_FOR_ACCOUNT_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Keys.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

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
      form_params << Tuple(String, Crest::ParamsValue).new("FriendlyName", friendly_name.to_s) if !friendly_name.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["accountSid_authToken"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "KeysApi.create_new_key",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to delete.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to delete.
    # @return [Nil]
    def delete_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Nil
      delete_key_with_http_info(account_sid: account_sid, sid: sid)
      nil
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to delete.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to delete.
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def delete_key_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete_key(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: KeysApi#delete_key\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to delete.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to delete.
    # @return nil
    def delete_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_delete_key(account_sid: account_sid, sid: sid).execute(&block)
    end

    DELETE_KEY_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    DELETE_KEY_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    DELETE_KEY_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    DELETE_KEY_MAX_LENGTH_FOR_SID         = 34
    DELETE_KEY_MIN_LENGTH_FOR_SID         = 34
    DELETE_KEY_PATTERN_FOR_SID            = /^SK[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_delete_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: KeysApi.delete_key ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, DELETE_KEY_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, DELETE_KEY_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, DELETE_KEY_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, DELETE_KEY_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, DELETE_KEY_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, DELETE_KEY_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Keys/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
        operation: "KeysApi.delete_key",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to fetch.
    # @return [Twilio::Key]
    def fetch_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Twilio::Key
      data, _status_code, _headers = fetch_key_with_http_info(account_sid: account_sid, sid: sid)
      data
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to fetch.
    # @return [Tuple(Twilio::Key, Integer, Hash)] Twilio::Key, response status code and response headers
    def fetch_key_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Twilio::Key, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_fetch_key(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: KeysApi#fetch_key\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::Key.from_json(body), status_code, headers)
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to fetch.
    # @return nil
    def fetch_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_fetch_key(account_sid: account_sid, sid: sid).execute(&block)
    end

    FETCH_KEY_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_KEY_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_KEY_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    FETCH_KEY_MAX_LENGTH_FOR_SID         = 34
    FETCH_KEY_MIN_LENGTH_FOR_SID         = 34
    FETCH_KEY_PATTERN_FOR_SID            = /^SK[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_fetch_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: KeysApi.fetch_key ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, FETCH_KEY_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, FETCH_KEY_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, FETCH_KEY_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, FETCH_KEY_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, FETCH_KEY_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, FETCH_KEY_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Keys/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
        operation: "KeysApi.fetch_key",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Twilio::ListKeyResponse]
    def list_key(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Twilio::ListKeyResponse
      data, _status_code, _headers = list_key_with_http_info(account_sid: account_sid, page_size: page_size)
      data
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Tuple(Twilio::ListKeyResponse, Integer, Hash)] Twilio::ListKeyResponse, response status code and response headers
    def list_key_with_http_info(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Tuple(Twilio::ListKeyResponse, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list_key(account_sid: account_sid, page_size: page_size)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: KeysApi#list_key\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ListKeyResponse.from_json(body), status_code, headers)
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return nil
    def list_key(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list_key(account_sid: account_sid, page_size: page_size).execute(&block)
    end

    LIST_KEY_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_KEY_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_KEY_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    LIST_KEY_MAX_FOR_PAGE_SIZE          = Int32.new("1000")
    LIST_KEY_MIN_FOR_PAGE_SIZE          = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list_key(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: KeysApi.list_key ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, LIST_KEY_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, LIST_KEY_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, LIST_KEY_PATTERN_FOR_ACCOUNT_SID)
        end
        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, LIST_KEY_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, LIST_KEY_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Keys.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

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
        operation: "KeysApi.list_key",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to update.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @return [Twilio::Key]
    def update_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      friendly_name : String? = nil
    ) : Twilio::Key
      data, _status_code, _headers = update_key_with_http_info(account_sid: account_sid, sid: sid, friendly_name: friendly_name)
      data
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to update.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @return [Tuple(Twilio::Key, Integer, Hash)] Twilio::Key, response status code and response headers
    def update_key_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      friendly_name : String? = nil
    ) : Tuple(Twilio::Key, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_update_key(account_sid: account_sid, sid: sid, friendly_name: friendly_name)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: KeysApi#update_key\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::Key.from_json(body), status_code, headers)
    end

    #
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Key resources to update.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Key resource to update.
    # @optional @param friendly_name [String?] A descriptive string that you create to describe the resource. It can be up to 64 characters long.
    # @return nil
    def update_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      friendly_name : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_update_key(account_sid: account_sid, sid: sid, friendly_name: friendly_name).execute(&block)
    end

    UPDATE_KEY_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    UPDATE_KEY_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    UPDATE_KEY_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    UPDATE_KEY_MAX_LENGTH_FOR_SID         = 34
    UPDATE_KEY_MIN_LENGTH_FOR_SID         = 34
    UPDATE_KEY_PATTERN_FOR_SID            = /^SK[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_update_key(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      friendly_name : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: KeysApi.update_key ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, UPDATE_KEY_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, UPDATE_KEY_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, UPDATE_KEY_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, UPDATE_KEY_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, UPDATE_KEY_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, UPDATE_KEY_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Keys/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
      form_params << Tuple(String, Crest::ParamsValue).new("FriendlyName", friendly_name.to_s) if !friendly_name.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["accountSid_authToken"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "KeysApi.update_key",
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
