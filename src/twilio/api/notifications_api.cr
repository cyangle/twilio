#  Twilio - Api
#
# This is the public Twilio REST API.
#
# The version of the OpenAPI document: 1.38.0
# Contact: support@twilio.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/list_notification_response"
require "../models/notification_instance"

module Twilio
  class NotificationsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config
    property account_sid : String

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @account_sid = api_client.config.username.not_nil!
    end

    # Fetch a notification belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Notification resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Notification resource to fetch.
    # @return [Twilio::NotificationInstance]
    def fetch_notification(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Twilio::NotificationInstance
      data, _status_code, _headers = fetch_notification_with_http_info(account_sid: account_sid, sid: sid)
      data
    end

    # Fetch a notification belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Notification resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Notification resource to fetch.
    # @return [Tuple(Twilio::NotificationInstance, Integer, Hash)] Twilio::NotificationInstance, response status code and response headers
    def fetch_notification_with_http_info(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Tuple(Twilio::NotificationInstance, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_fetch_notification(account_sid: account_sid, sid: sid)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: NotificationsApi#fetch_notification\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::NotificationInstance.from_json(body), status_code, headers)
    end

    # Fetch a notification belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Notification resource to fetch.
    # @required @param sid [String?] The Twilio-provided string that uniquely identifies the Notification resource to fetch.
    # @return nil
    def fetch_notification(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_fetch_notification(account_sid: account_sid, sid: sid).execute(&block)
    end

    FETCH_NOTIFICATION_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_NOTIFICATION_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    FETCH_NOTIFICATION_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    FETCH_NOTIFICATION_MAX_LENGTH_FOR_SID         = 34
    FETCH_NOTIFICATION_MIN_LENGTH_FOR_SID         = 34
    FETCH_NOTIFICATION_PATTERN_FOR_SID            = /^NO[0-9a-fA-F]{32}$/

    # @return Crest::Request
    def build_api_request_for_fetch_notification(
      *,
      account_sid : String? = @account_sid,
      sid : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: NotificationsApi.fetch_notification ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, FETCH_NOTIFICATION_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, FETCH_NOTIFICATION_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, FETCH_NOTIFICATION_PATTERN_FOR_ACCOUNT_SID)
        end
        raise ArgumentError.new("\"sid\" is required and cannot be null") if sid.nil?
        unless (_sid = sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("sid", sid.to_s.size, FETCH_NOTIFICATION_MAX_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_min_length("sid", sid.to_s.size, FETCH_NOTIFICATION_MIN_LENGTH_FOR_SID)
          OpenApi::PrimitiveValidator.validate_pattern("sid", _sid, FETCH_NOTIFICATION_PATTERN_FOR_SID)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Notifications/{Sid}.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s)).sub("{" + "Sid" + "}", URI.encode_path(sid.to_s))

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
        operation: "NotificationsApi.fetch_notification",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieve a list of notifications belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Notification resources to read.
    # @optional @param log [Int32?] Only read notifications of the specified log level. Can be:  `0` to read only ERROR notifications or `1` to read only WARNING notifications. By default, all notifications are read.
    # @optional @param message_date [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param message_date_before [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param message_date_after [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Twilio::ListNotificationResponse]
    def list_notification(
      *,
      account_sid : String? = @account_sid,
      log : Int32? = nil,
      message_date : Time? = nil,
      message_date_before : Time? = nil,
      message_date_after : Time? = nil,
      page_size : Int32? = nil
    ) : Twilio::ListNotificationResponse
      data, _status_code, _headers = list_notification_with_http_info(account_sid: account_sid, log: log, message_date: message_date, message_date_before: message_date_before, message_date_after: message_date_after, page_size: page_size)
      data
    end

    # Retrieve a list of notifications belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Notification resources to read.
    # @optional @param log [Int32?] Only read notifications of the specified log level. Can be:  `0` to read only ERROR notifications or `1` to read only WARNING notifications. By default, all notifications are read.
    # @optional @param message_date [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param message_date_before [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param message_date_after [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return [Tuple(Twilio::ListNotificationResponse, Integer, Hash)] Twilio::ListNotificationResponse, response status code and response headers
    def list_notification_with_http_info(
      *,
      account_sid : String? = @account_sid,
      log : Int32? = nil,
      message_date : Time? = nil,
      message_date_before : Time? = nil,
      message_date_after : Time? = nil,
      page_size : Int32? = nil
    ) : Tuple(Twilio::ListNotificationResponse, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list_notification(account_sid: account_sid, log: log, message_date: message_date, message_date_before: message_date_before, message_date_after: message_date_after, page_size: page_size)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: NotificationsApi#list_notification\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Twilio::ListNotificationResponse.from_json(body), status_code, headers)
    end

    # Retrieve a list of notifications belonging to the account used to make the request
    # @required @param account_sid [String?] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Notification resources to read.
    # @optional @param log [Int32?] Only read notifications of the specified log level. Can be:  `0` to read only ERROR notifications or `1` to read only WARNING notifications. By default, all notifications are read.
    # @optional @param message_date [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param message_date_before [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param message_date_after [Time?] Only show notifications for the specified date, formatted as `YYYY-MM-DD`. You can also specify an inequality, such as `<=YYYY-MM-DD` for messages logged at or before midnight on a date, or `>=YYYY-MM-DD` for messages logged at or after midnight on a date.
    # @optional @param page_size [Int32?] How many resources to return in each list page. The default is 50, and the maximum is 1000.
    # @return nil
    def list_notification(
      *,
      account_sid : String? = @account_sid,
      log : Int32? = nil,
      message_date : Time? = nil,
      message_date_before : Time? = nil,
      message_date_after : Time? = nil,
      page_size : Int32? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list_notification(account_sid: account_sid, log: log, message_date: message_date, message_date_before: message_date_before, message_date_after: message_date_after, page_size: page_size).execute(&block)
    end

    LIST_NOTIFICATION_MAX_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_NOTIFICATION_MIN_LENGTH_FOR_ACCOUNT_SID = 34
    LIST_NOTIFICATION_PATTERN_FOR_ACCOUNT_SID    = /^AC[0-9a-fA-F]{32}$/
    LIST_NOTIFICATION_MAX_FOR_PAGE_SIZE          = Int32.new("1000")
    LIST_NOTIFICATION_MIN_FOR_PAGE_SIZE          = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list_notification(
      *,
      account_sid : String? = @account_sid,
      log : Int32? = nil,
      message_date : Time? = nil,
      message_date_before : Time? = nil,
      message_date_after : Time? = nil,
      page_size : Int32? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: NotificationsApi.list_notification ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"account_sid\" is required and cannot be null") if account_sid.nil?
        unless (_account_sid = account_sid).nil?
          OpenApi::PrimitiveValidator.validate_max_length("account_sid", account_sid.to_s.size, LIST_NOTIFICATION_MAX_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_min_length("account_sid", account_sid.to_s.size, LIST_NOTIFICATION_MIN_LENGTH_FOR_ACCOUNT_SID)
          OpenApi::PrimitiveValidator.validate_pattern("account_sid", _account_sid, LIST_NOTIFICATION_PATTERN_FOR_ACCOUNT_SID)
        end

        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, LIST_NOTIFICATION_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, LIST_NOTIFICATION_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/2010-04-01/Accounts/{AccountSid}/Notifications.json".sub("{" + "AccountSid" + "}", URI.encode_path(account_sid.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["Log"] = log.to_s if !log.nil?
      query_params["MessageDate"] = Time::Format::ISO_8601_DATE.format(message_date) if !message_date.nil?
      query_params["MessageDate<"] = Time::Format::ISO_8601_DATE.format(message_date_before) if !message_date_before.nil?
      query_params["MessageDate>"] = Time::Format::ISO_8601_DATE.format(message_date_after) if !message_date_after.nil?
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
        operation: "NotificationsApi.list_notification",
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
