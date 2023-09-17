#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/list_transcription_response"
require "../models/transcription"

module Twilio
  class TranscriptionsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    # Delete a transcription from the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to delete.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Transcription resource to delete.
    # @return [Nil]
    def delete_transcription(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Nil
      delete_transcription_with_http_info(account_sid: account_sid, sid: sid)
      nil
    end

    # Delete a transcription from the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to delete.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Transcription resource to delete.
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def delete_transcription_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete_transcription(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: TranscriptionsApi#delete_transcription\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Delete a transcription from the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to delete.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Transcription resource to delete.
    # @return nil
    def delete_transcription(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_delete_transcription(account_sid: account_sid, sid: sid).execute(&block)
    end

    DELETE_TRANSCRIPTION_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    DELETE_TRANSCRIPTION_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    DELETE_TRANSCRIPTION_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    DELETE_TRANSCRIPTION_MAX_LENGTH_FOR_SID         = 34
    DELETE_TRANSCRIPTION_MIN_LENGTH_FOR_SID         = 34
    DELETE_TRANSCRIPTION_PATTERN_FOR_SID            = /^TR[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_delete_transcription(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: TranscriptionsApi.delete_transcription ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, DELETE_TRANSCRIPTION_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, DELETE_TRANSCRIPTION_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, DELETE_TRANSCRIPTION_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, DELETE_TRANSCRIPTION_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, DELETE_TRANSCRIPTION_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, DELETE_TRANSCRIPTION_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Transcriptions/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
        operation: "TranscriptionsApi.delete_transcription",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Fetch an instance of a Transcription
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Transcription resource to fetch.
    # @return [Twilio::Transcription]
    def fetch_transcription(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Twilio::Transcription
      data, _status_code, _headers = fetch_transcription_with_http_info(account_sid: account_sid, sid: sid)
      data
    end

    # Fetch an instance of a Transcription
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Transcription resource to fetch.
    # @return [Tuple(Twilio::Transcription, Integer, Hash)] Twilio::Transcription, response status code and response headers
    def fetch_transcription_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Twilio::Transcription, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_fetch_transcription(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: TranscriptionsApi#fetch_transcription\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::Transcription.from_json(body), status_code, headers)
    end

    # Fetch an instance of a Transcription
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Transcription resource to fetch.
    # @return nil
    def fetch_transcription(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_fetch_transcription(account_sid: account_sid, sid: sid).execute(&block)
    end

    FETCH_TRANSCRIPTION_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_TRANSCRIPTION_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_TRANSCRIPTION_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    FETCH_TRANSCRIPTION_MAX_LENGTH_FOR_SID         = 34
    FETCH_TRANSCRIPTION_MIN_LENGTH_FOR_SID         = 34
    FETCH_TRANSCRIPTION_PATTERN_FOR_SID            = /^TR[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_fetch_transcription(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: TranscriptionsApi.fetch_transcription ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, FETCH_TRANSCRIPTION_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, FETCH_TRANSCRIPTION_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, FETCH_TRANSCRIPTION_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, FETCH_TRANSCRIPTION_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, FETCH_TRANSCRIPTION_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, FETCH_TRANSCRIPTION_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Transcriptions/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
        operation: "TranscriptionsApi.fetch_transcription",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieve a list of transcriptions belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Twilio::ListTranscriptionResponse]
    def list_transcription(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Twilio::ListTranscriptionResponse
      data, _status_code, _headers = list_transcription_with_http_info(account_sid: account_sid, page_size: page_size)
      data
    end

    # Retrieve a list of transcriptions belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Tuple(Twilio::ListTranscriptionResponse, Integer, Hash)] Twilio::ListTranscriptionResponse, response status code and response headers
    def list_transcription_with_http_info(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Tuple(Twilio::ListTranscriptionResponse, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list_transcription(account_sid: account_sid, page_size: page_size)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: TranscriptionsApi#list_transcription\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ListTranscriptionResponse.from_json(body), status_code, headers)
    end

    # Retrieve a list of transcriptions belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resources to read.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return nil
    def list_transcription(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list_transcription(account_sid: account_sid, page_size: page_size).execute(&block)
    end

    LIST_TRANSCRIPTION_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_TRANSCRIPTION_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_TRANSCRIPTION_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    LIST_TRANSCRIPTION_MAX_FOR_PAGE_SIZE          = Int32.new("1000")
    LIST_TRANSCRIPTION_MIN_FOR_PAGE_SIZE          = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list_transcription(
      *,
      account_sid : String? = @account_sid,
      page_size : Int32? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: TranscriptionsApi.list_transcription ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, LIST_TRANSCRIPTION_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, LIST_TRANSCRIPTION_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, LIST_TRANSCRIPTION_PATTERN_FOR_ACCOUNT_SID)
        end
        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, LIST_TRANSCRIPTION_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, LIST_TRANSCRIPTION_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Transcriptions.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

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
        operation: "TranscriptionsApi.list_transcription",
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
