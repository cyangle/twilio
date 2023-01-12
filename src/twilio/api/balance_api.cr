#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/balance"

module Twilio
  class BalanceApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    # Fetch the balance for an Account based on Account Sid. Balance changes may not be reflected immediately. Child accounts do not contain balance information
    # @required @param account_sid [String?] The unique SID identifier of the Account.
    # @return [Twilio::Balance]
    def fetch_balance(
      *,
      account_sid : String? = @account_sid
    ) : Twilio::Balance
      data, _status_code, _headers = fetch_balance_with_http_info(account_sid: account_sid)
      data
    end

    # Fetch the balance for an Account based on Account Sid. Balance changes may not be reflected immediately. Child accounts do not contain balance information
    # @required @param account_sid [String?] The unique SID identifier of the Account.
    # @return [Tuple(Twilio::Balance, Integer, Hash)] Twilio::Balance, response status code and response headers
    def fetch_balance_with_http_info(
      *,
      account_sid : String? = @account_sid
    ) : Tuple(Twilio::Balance, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_fetch_balance(account_sid: account_sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: BalanceApi#fetch_balance\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::Balance.from_json(body), status_code, headers)
    end

    # Fetch the balance for an Account based on Account Sid. Balance changes may not be reflected immediately. Child accounts do not contain balance information
    # @required @param account_sid [String?] The unique SID identifier of the Account.
    # @return nil
    def fetch_balance(
      *,
      account_sid : String? = @account_sid,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_fetch_balance(account_sid: account_sid).execute(&block)
    end

    FETCH_BALANCE_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_BALANCE_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_BALANCE_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_fetch_balance(
      *,
      account_sid : String? = @account_sid
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: BalanceApi.fetch_balance ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, FETCH_BALANCE_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, FETCH_BALANCE_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, FETCH_BALANCE_PATTERN_FOR_ACCOUNT_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Balance.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

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
        operation: "BalanceApi.fetch_balance",
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
