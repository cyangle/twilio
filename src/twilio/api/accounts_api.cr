#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/account"
require "../models/account_enum_status"

require "../models/list_account_response"

module Twilio
  class AccountsApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    # Create a new Twilio Subaccount from the account making the request
    # @optional @param friendly_name [String?] A human readable description of the account to create, defaults to `SubAccount Created at {YYYY-MM-DD HH:MM meridian}`
    # @return [Twilio::Account]
    def create_account(
      *,
      friendly_name : String? = nil
    ) : Twilio::Account
      data, _status_code, _headers = create_account_with_http_info(friendly_name: friendly_name)
      data
    end

    # Create a new Twilio Subaccount from the account making the request
    # @optional @param friendly_name [String?] A human readable description of the account to create, defaults to `SubAccount Created at {YYYY-MM-DD HH:MM meridian}`
    # @return [Tuple(Twilio::Account, Integer, Hash)] Twilio::Account, response status code and response headers
    def create_account_with_http_info(
      *,
      friendly_name : String? = nil
    ) : Tuple(Twilio::Account, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_create_account(friendly_name: friendly_name)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: AccountsApi#create_account\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::Account.from_json(body), status_code, headers)
    end

    # Create a new Twilio Subaccount from the account making the request
    # @optional @param friendly_name [String?] A human readable description of the account to create, defaults to `SubAccount Created at {YYYY-MM-DD HH:MM meridian}`
    # @return nil
    def create_account(
      *,
      friendly_name : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_create_account(friendly_name: friendly_name).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_create_account(
      *,
      friendly_name : String? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: AccountsApi.create_account ..." }
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts.json"

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
        operation: "AccountsApi.create_account",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieves a collection of Accounts belonging to the account used to make the request
    # @optional @param friendly_name [String?] Only return the Account resources with friendly names that exactly match this name.
    # @optional @param status [Twilio::AccountEnumStatus?] Only return Account resources with the given status. Can be `closed`, `suspended` or `active`.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Twilio::ListAccountResponse]
    def list_account(
      *,
      friendly_name : String? = nil,
      status : Twilio::AccountEnumStatus? = nil,
      page_size : Int32? = nil
    ) : Twilio::ListAccountResponse
      data, _status_code, _headers = list_account_with_http_info(friendly_name: friendly_name, status: status, page_size: page_size)
      data
    end

    # Retrieves a collection of Accounts belonging to the account used to make the request
    # @optional @param friendly_name [String?] Only return the Account resources with friendly names that exactly match this name.
    # @optional @param status [Twilio::AccountEnumStatus?] Only return Account resources with the given status. Can be `closed`, `suspended` or `active`.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Tuple(Twilio::ListAccountResponse, Integer, Hash)] Twilio::ListAccountResponse, response status code and response headers
    def list_account_with_http_info(
      *,
      friendly_name : String? = nil,
      status : Twilio::AccountEnumStatus? = nil,
      page_size : Int32? = nil
    ) : Tuple(Twilio::ListAccountResponse, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list_account(friendly_name: friendly_name, status: status, page_size: page_size)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: AccountsApi#list_account\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ListAccountResponse.from_json(body), status_code, headers)
    end

    # Retrieves a collection of Accounts belonging to the account used to make the request
    # @optional @param friendly_name [String?] Only return the Account resources with friendly names that exactly match this name.
    # @optional @param status [Twilio::AccountEnumStatus?] Only return Account resources with the given status. Can be `closed`, `suspended` or `active`.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return nil
    def list_account(
      *,
      friendly_name : String? = nil,
      status : Twilio::AccountEnumStatus? = nil,
      page_size : Int32? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list_account(friendly_name: friendly_name, status: status, page_size: page_size).execute(&block)
    end

    LIST_ACCOUNT_MAX_FOR_PAGE_SIZE = Int32.new("1000")
    LIST_ACCOUNT_MIN_FOR_PAGE_SIZE = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list_account(
      *,
      friendly_name : String? = nil,
      status : Twilio::AccountEnumStatus? = nil,
      page_size : Int32? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: AccountsApi.list_account ..." }
      end

      if client_side_validation
        unless (_status = status).nil?
          _status.validate
        end
        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, LIST_ACCOUNT_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, LIST_ACCOUNT_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts.json"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["FriendlyName"] = friendly_name.to_s if !friendly_name.nil?
      query_params["Status"] = status.to_s if !status.nil?
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
        operation: "AccountsApi.list_account",
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
